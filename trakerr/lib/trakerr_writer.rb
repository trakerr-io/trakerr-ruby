require 'trakerr_client'
require 'event_trace_builder'

module Trakerr
  class TrakerrWriter < StringIO
    def initialize(api_key, context_app_version = '1.0', context_deployment_stage = 'development', log_limit = 'warn', standard_format = true, parse_function = nil)
      super()
      @client = Trakerr::TrakerrClient.new(api_key, context_app_version, context_deployment_stage)

      @log_limit = str2level(log_limit)
      @standard_format = standard_format
      @parse_function = parse_function
    end

    def write(str)
      strarray = str.dup.split("\n")
      loglevel, classification, evname, evmessage = nil
      stacktrace = []

      if @standard_format
        loglevel, classification, evname, evmessage, stacktrace = parse_standard(strarray)
      else
        loglevel, classification, evname, evmessage, stacktrace = @parse_function.call(strarray)
      end

      if str2level(loglevel) >= @log_limit
        event = @client.create_app_event(false, loglevel, classification, evname, evmessage)
        event.event_stacktrace = EventTraceBuilder.get_logger_stacktrace(evname, evmessage, stacktrace) \
                                  unless stacktrace.empty?
        @client.send_event(event)
      end

      super(str)
    end

    private
    def parse_standard(_buffer)
      loglevel = nil
      classification = nil
      evname = nil
      evmessage = nil
      stacktrace = []

      _buffer.each_index do |i|
        if i == 0 # TrakerrFormatter dictates severity as the first line.
          ob = _buffer[i].match(/\S+ \[.*\] (?<level>\w+) (?<progname>\w*) : (?<message>[\w\s]+) \((?<name>\w+)\)/i)
          loglevel = ob[:level]
          classification = ob[:progname]
          evname = ob[:name]
          evmessage = ob[:message]

        else # All following lines are stacktrace shoved into the buffer automatically if provided.
          # This is only given if the logger gets an error object,
          # but I don't believe the TrakerrFormatter has access to it to parse out in the RE.

          stacktrace << _buffer[i]
        end
      end

      [loglevel, classification, evname, evmessage, stacktrace]
    end

    def str2level(level)
      level.downcase!
      level.strip!

      case level
    when "unknown"
      50
    when "fatal"
      40
    when "error"
      30
    when "warn", "warning"
      20
    when "info"
      10
    when "debug"
      0
    else
      30
      end
    end
  end
end
