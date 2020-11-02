# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  #
  # API spec for Microsoft.Security (Azure Security Center) resource provider
  #
  class IotAlerts
    include MsRestAzure

    #
    # Creates and initializes a new instance of the IotAlerts class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SecurityCenter] reference to the SecurityCenter
    attr_reader :client

    #
    # List IoT alerts
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param solution_name [String] The name of the IoT Security solution.
    # @param min_start_time_utc [String] Filter by minimum startTimeUtc (ISO 8601
    # format)
    # @param max_start_time_utc [String] Filter by maximum startTimeUtc (ISO 8601
    # format)
    # @param alert_type [String] Filter by alert type
    # @param compromised_entity [String] Filter by compromised device
    # @param limit [Integer] Limit the number of items returned in a single page
    # @param skip_token [String] Skip token used for pagination
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<IotAlert>] operation results.
    #
    def list(resource_group_name, solution_name, min_start_time_utc:nil, max_start_time_utc:nil, alert_type:nil, compromised_entity:nil, limit:nil, skip_token:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, solution_name, min_start_time_utc:min_start_time_utc, max_start_time_utc:max_start_time_utc, alert_type:alert_type, compromised_entity:compromised_entity, limit:limit, skip_token:skip_token, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List IoT alerts
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param solution_name [String] The name of the IoT Security solution.
    # @param min_start_time_utc [String] Filter by minimum startTimeUtc (ISO 8601
    # format)
    # @param max_start_time_utc [String] Filter by maximum startTimeUtc (ISO 8601
    # format)
    # @param alert_type [String] Filter by alert type
    # @param compromised_entity [String] Filter by compromised device
    # @param limit [Integer] Limit the number of items returned in a single page
    # @param skip_token [String] Skip token used for pagination
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, solution_name, min_start_time_utc:nil, max_start_time_utc:nil, alert_type:nil, compromised_entity:nil, limit:nil, skip_token:nil, custom_headers:nil)
      list_async(resource_group_name, solution_name, min_start_time_utc:min_start_time_utc, max_start_time_utc:max_start_time_utc, alert_type:alert_type, compromised_entity:compromised_entity, limit:limit, skip_token:skip_token, custom_headers:custom_headers).value!
    end

    #
    # List IoT alerts
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param solution_name [String] The name of the IoT Security solution.
    # @param min_start_time_utc [String] Filter by minimum startTimeUtc (ISO 8601
    # format)
    # @param max_start_time_utc [String] Filter by maximum startTimeUtc (ISO 8601
    # format)
    # @param alert_type [String] Filter by alert type
    # @param compromised_entity [String] Filter by compromised device
    # @param limit [Integer] Limit the number of items returned in a single page
    # @param skip_token [String] Skip token used for pagination
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, solution_name, min_start_time_utc:nil, max_start_time_utc:nil, alert_type:nil, compromised_entity:nil, limit:nil, skip_token:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'Pattern': '^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$'" if !@client.subscription_id.nil? && @client.subscription_id.match(Regexp.new('^^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$$')).nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'solution_name is nil' if solution_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/iotSecuritySolutions/{solutionName}/iotAlerts'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'solutionName' => solution_name},
          query_params: {'api-version' => @client.api_version,'startTimeUtc>' => min_start_time_utc,'startTimeUtc<' => max_start_time_utc,'alertType' => alert_type,'compromisedEntity' => compromised_entity,'$limit' => limit,'$skipToken' => skip_token},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Security::Mgmt::V2019_08_01::Models::IotAlertList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get IoT alert
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param solution_name [String] The name of the IoT Security solution.
    # @param iot_alert_id [String] Id of the alert
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IotAlert] operation results.
    #
    def get(resource_group_name, solution_name, iot_alert_id, custom_headers:nil)
      response = get_async(resource_group_name, solution_name, iot_alert_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get IoT alert
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param solution_name [String] The name of the IoT Security solution.
    # @param iot_alert_id [String] Id of the alert
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, solution_name, iot_alert_id, custom_headers:nil)
      get_async(resource_group_name, solution_name, iot_alert_id, custom_headers:custom_headers).value!
    end

    #
    # Get IoT alert
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param solution_name [String] The name of the IoT Security solution.
    # @param iot_alert_id [String] Id of the alert
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, solution_name, iot_alert_id, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'Pattern': '^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$'" if !@client.subscription_id.nil? && @client.subscription_id.match(Regexp.new('^^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$$')).nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'solution_name is nil' if solution_name.nil?
      fail ArgumentError, 'iot_alert_id is nil' if iot_alert_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/iotSecuritySolutions/{solutionName}/iotAlerts/{iotAlertId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'solutionName' => solution_name,'iotAlertId' => iot_alert_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Security::Mgmt::V2019_08_01::Models::IotAlert.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List IoT alerts
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IotAlertList] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List IoT alerts
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # List IoT alerts
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Security::Mgmt::V2019_08_01::Models::IotAlertList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List IoT alerts
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param solution_name [String] The name of the IoT Security solution.
    # @param min_start_time_utc [String] Filter by minimum startTimeUtc (ISO 8601
    # format)
    # @param max_start_time_utc [String] Filter by maximum startTimeUtc (ISO 8601
    # format)
    # @param alert_type [String] Filter by alert type
    # @param compromised_entity [String] Filter by compromised device
    # @param limit [Integer] Limit the number of items returned in a single page
    # @param skip_token [String] Skip token used for pagination
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IotAlertList] which provide lazy access to pages of the response.
    #
    def list_as_lazy(resource_group_name, solution_name, min_start_time_utc:nil, max_start_time_utc:nil, alert_type:nil, compromised_entity:nil, limit:nil, skip_token:nil, custom_headers:nil)
      response = list_async(resource_group_name, solution_name, min_start_time_utc:min_start_time_utc, max_start_time_utc:max_start_time_utc, alert_type:alert_type, compromised_entity:compromised_entity, limit:limit, skip_token:skip_token, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
