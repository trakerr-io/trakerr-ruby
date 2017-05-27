=begin
#Trakerr API

#Get your application events and errors to Trakerr via the *Trakerr API*.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module Trakerr

  class AppEvent
    # API key generated for the application
    attr_accessor :api_key

    # (optional) Logging level, one of 'debug','info','warning','error', 'fatal', defaults to 'error'
    attr_accessor :log_level

    # (optional) one of 'issue' or a custom string for non-issues, defaults to 'issue'
    attr_accessor :classification

    # type of the event or error (eg. NullPointerException)
    attr_accessor :event_type

    # message containing details of the event or error
    attr_accessor :event_message

    # (optional) event time in ms since epoch
    attr_accessor :event_time

    attr_accessor :event_stacktrace

    # (optional) event user identifying a user
    attr_accessor :event_user

    # (optional) session identification
    attr_accessor :event_session

    # (optional) application version information
    attr_accessor :context_app_version

    # (optional) deployment stage, one of 'development','staging','production' or a custom string
    attr_accessor :deployment_stage

    # (optional) environment name (like 'cpython' or 'ironpython' etc.)
    attr_accessor :context_env_name

    # (optional) language (like 'python' or 'c#' etc.)
    attr_accessor :context_env_language

    # (optional) version of environment
    attr_accessor :context_env_version

    # (optional) hostname or ID of environment
    attr_accessor :context_env_hostname

    # (optional) browser name if running in a browser (eg. Chrome)
    attr_accessor :context_app_browser

    # (optional) browser version if running in a browser
    attr_accessor :context_app_browser_version

    # (optional) OS the application is running on
    attr_accessor :context_app_os

    # (optional) OS version the application is running on
    attr_accessor :context_app_os_version

    # (optional) Data center the application is running on or connected to
    attr_accessor :context_data_center

    # (optional) Data center region
    attr_accessor :context_data_center_region

    attr_accessor :context_tags

    # (optional) The full URL when running in a browser when the event was generated.
    attr_accessor :context_url

    # (optional) duration that this event took to occur in millis. Example - database call time in millis.
    attr_accessor :context_operation_time_millis

    # (optional) CPU utilization as a percent when event occured
    attr_accessor :context_cpu_percentage

    # (optional) Memory utilization as a percent when event occured
    attr_accessor :context_memory_percentage

    # (optional) Cross application correlation ID
    attr_accessor :context_cross_app_correlation_id

    # (optional) Device information
    attr_accessor :context_device

    # (optional) Application SKU
    attr_accessor :context_app_sku

    attr_accessor :custom_properties

    attr_accessor :custom_segments

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'api_key' => :'apiKey',
        :'log_level' => :'logLevel',
        :'classification' => :'classification',
        :'event_type' => :'eventType',
        :'event_message' => :'eventMessage',
        :'event_time' => :'eventTime',
        :'event_stacktrace' => :'eventStacktrace',
        :'event_user' => :'eventUser',
        :'event_session' => :'eventSession',
        :'context_app_version' => :'contextAppVersion',
        :'deployment_stage' => :'deploymentStage',
        :'context_env_name' => :'contextEnvName',
        :'context_env_language' => :'contextEnvLanguage',
        :'context_env_version' => :'contextEnvVersion',
        :'context_env_hostname' => :'contextEnvHostname',
        :'context_app_browser' => :'contextAppBrowser',
        :'context_app_browser_version' => :'contextAppBrowserVersion',
        :'context_app_os' => :'contextAppOS',
        :'context_app_os_version' => :'contextAppOSVersion',
        :'context_data_center' => :'contextDataCenter',
        :'context_data_center_region' => :'contextDataCenterRegion',
        :'context_tags' => :'contextTags',
        :'context_url' => :'contextURL',
        :'context_operation_time_millis' => :'contextOperationTimeMillis',
        :'context_cpu_percentage' => :'contextCpuPercentage',
        :'context_memory_percentage' => :'contextMemoryPercentage',
        :'context_cross_app_correlation_id' => :'contextCrossAppCorrelationId',
        :'context_device' => :'contextDevice',
        :'context_app_sku' => :'contextAppSku',
        :'custom_properties' => :'customProperties',
        :'custom_segments' => :'customSegments'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'api_key' => :'String',
        :'log_level' => :'String',
        :'classification' => :'String',
        :'event_type' => :'String',
        :'event_message' => :'String',
        :'event_time' => :'Integer',
        :'event_stacktrace' => :'Stacktrace',
        :'event_user' => :'String',
        :'event_session' => :'String',
        :'context_app_version' => :'String',
        :'deployment_stage' => :'String',
        :'context_env_name' => :'String',
        :'context_env_language' => :'String',
        :'context_env_version' => :'String',
        :'context_env_hostname' => :'String',
        :'context_app_browser' => :'String',
        :'context_app_browser_version' => :'String',
        :'context_app_os' => :'String',
        :'context_app_os_version' => :'String',
        :'context_data_center' => :'String',
        :'context_data_center_region' => :'String',
        :'context_tags' => :'Array<String>',
        :'context_url' => :'String',
        :'context_operation_time_millis' => :'Integer',
        :'context_cpu_percentage' => :'Integer',
        :'context_memory_percentage' => :'Integer',
        :'context_cross_app_correlation_id' => :'String',
        :'context_device' => :'String',
        :'context_app_sku' => :'String',
        :'custom_properties' => :'CustomData',
        :'custom_segments' => :'CustomData'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'apiKey')
        self.api_key = attributes[:'apiKey']
      end

      if attributes.has_key?(:'logLevel')
        self.log_level = attributes[:'logLevel']
      end

      if attributes.has_key?(:'classification')
        self.classification = attributes[:'classification']
      end

      if attributes.has_key?(:'eventType')
        self.event_type = attributes[:'eventType']
      end

      if attributes.has_key?(:'eventMessage')
        self.event_message = attributes[:'eventMessage']
      end

      if attributes.has_key?(:'eventTime')
        self.event_time = attributes[:'eventTime']
      end

      if attributes.has_key?(:'eventStacktrace')
        self.event_stacktrace = attributes[:'eventStacktrace']
      end

      if attributes.has_key?(:'eventUser')
        self.event_user = attributes[:'eventUser']
      end

      if attributes.has_key?(:'eventSession')
        self.event_session = attributes[:'eventSession']
      end

      if attributes.has_key?(:'contextAppVersion')
        self.context_app_version = attributes[:'contextAppVersion']
      end

      if attributes.has_key?(:'deploymentStage')
        self.deployment_stage = attributes[:'deploymentStage']
      end

      if attributes.has_key?(:'contextEnvName')
        self.context_env_name = attributes[:'contextEnvName']
      end

      if attributes.has_key?(:'contextEnvLanguage')
        self.context_env_language = attributes[:'contextEnvLanguage']
      end

      if attributes.has_key?(:'contextEnvVersion')
        self.context_env_version = attributes[:'contextEnvVersion']
      end

      if attributes.has_key?(:'contextEnvHostname')
        self.context_env_hostname = attributes[:'contextEnvHostname']
      end

      if attributes.has_key?(:'contextAppBrowser')
        self.context_app_browser = attributes[:'contextAppBrowser']
      end

      if attributes.has_key?(:'contextAppBrowserVersion')
        self.context_app_browser_version = attributes[:'contextAppBrowserVersion']
      end

      if attributes.has_key?(:'contextAppOS')
        self.context_app_os = attributes[:'contextAppOS']
      end

      if attributes.has_key?(:'contextAppOSVersion')
        self.context_app_os_version = attributes[:'contextAppOSVersion']
      end

      if attributes.has_key?(:'contextDataCenter')
        self.context_data_center = attributes[:'contextDataCenter']
      end

      if attributes.has_key?(:'contextDataCenterRegion')
        self.context_data_center_region = attributes[:'contextDataCenterRegion']
      end

      if attributes.has_key?(:'contextTags')
        if (value = attributes[:'contextTags']).is_a?(Array)
          self.context_tags = value
        end
      end

      if attributes.has_key?(:'contextURL')
        self.context_url = attributes[:'contextURL']
      end

      if attributes.has_key?(:'contextOperationTimeMillis')
        self.context_operation_time_millis = attributes[:'contextOperationTimeMillis']
      end

      if attributes.has_key?(:'contextCpuPercentage')
        self.context_cpu_percentage = attributes[:'contextCpuPercentage']
      end

      if attributes.has_key?(:'contextMemoryPercentage')
        self.context_memory_percentage = attributes[:'contextMemoryPercentage']
      end

      if attributes.has_key?(:'contextCrossAppCorrelationId')
        self.context_cross_app_correlation_id = attributes[:'contextCrossAppCorrelationId']
      end

      if attributes.has_key?(:'contextDevice')
        self.context_device = attributes[:'contextDevice']
      end

      if attributes.has_key?(:'contextAppSku')
        self.context_app_sku = attributes[:'contextAppSku']
      end

      if attributes.has_key?(:'customProperties')
        self.custom_properties = attributes[:'customProperties']
      end

      if attributes.has_key?(:'customSegments')
        self.custom_segments = attributes[:'customSegments']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @api_key.nil?
      log_level_validator = EnumAttributeValidator.new('String', ["debug", "info", "warning", "error", "fatal"])
      return false unless log_level_validator.valid?(@log_level)
      return false if @classification.nil?
      return false if @event_type.nil?
      return false if @event_message.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] log_level Object to be assigned
    def log_level=(log_level)
      validator = EnumAttributeValidator.new('String', ["debug", "info", "warning", "error", "fatal"])
      unless validator.valid?(log_level)
        fail ArgumentError, "invalid value for 'log_level', must be one of #{validator.allowable_values}."
      end
      @log_level = log_level
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          api_key == o.api_key &&
          log_level == o.log_level &&
          classification == o.classification &&
          event_type == o.event_type &&
          event_message == o.event_message &&
          event_time == o.event_time &&
          event_stacktrace == o.event_stacktrace &&
          event_user == o.event_user &&
          event_session == o.event_session &&
          context_app_version == o.context_app_version &&
          deployment_stage == o.deployment_stage &&
          context_env_name == o.context_env_name &&
          context_env_language == o.context_env_language &&
          context_env_version == o.context_env_version &&
          context_env_hostname == o.context_env_hostname &&
          context_app_browser == o.context_app_browser &&
          context_app_browser_version == o.context_app_browser_version &&
          context_app_os == o.context_app_os &&
          context_app_os_version == o.context_app_os_version &&
          context_data_center == o.context_data_center &&
          context_data_center_region == o.context_data_center_region &&
          context_tags == o.context_tags &&
          context_url == o.context_url &&
          context_operation_time_millis == o.context_operation_time_millis &&
          context_cpu_percentage == o.context_cpu_percentage &&
          context_memory_percentage == o.context_memory_percentage &&
          context_cross_app_correlation_id == o.context_cross_app_correlation_id &&
          context_device == o.context_device &&
          context_app_sku == o.context_app_sku &&
          custom_properties == o.custom_properties &&
          custom_segments == o.custom_segments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [api_key, log_level, classification, event_type, event_message, event_time, event_stacktrace, event_user, event_session, context_app_version, deployment_stage, context_env_name, context_env_language, context_env_version, context_env_hostname, context_app_browser, context_app_browser_version, context_app_os, context_app_os_version, context_data_center, context_data_center_region, context_tags, context_url, context_operation_time_millis, context_cpu_percentage, context_memory_percentage, context_cross_app_correlation_id, context_device, context_app_sku, custom_properties, custom_segments].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Trakerr.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
