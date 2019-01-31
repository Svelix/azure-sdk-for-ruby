# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  #
  # The Managed Labs Client.
  #
  class Labs
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Labs class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ManagedLabsClient] reference to the ManagedLabsClient
    attr_reader :client

    #
    # List labs in a given lab account.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=maxUsersInLab)'
    # @param filter [String] The filter to apply to the operation.
    # @param top [Integer] The maximum number of resources to return from the
    # operation.
    # @param orderby [String] The ordering expression for the results, using OData
    # notation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Lab>] operation results.
    #
    def list(resource_group_name, lab_account_name, expand:nil, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, lab_account_name, expand:expand, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List labs in a given lab account.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=maxUsersInLab)'
    # @param filter [String] The filter to apply to the operation.
    # @param top [Integer] The maximum number of resources to return from the
    # operation.
    # @param orderby [String] The ordering expression for the results, using OData
    # notation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, lab_account_name, expand:nil, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      list_async(resource_group_name, lab_account_name, expand:expand, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers).value!
    end

    #
    # List labs in a given lab account.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=maxUsersInLab)'
    # @param filter [String] The filter to apply to the operation.
    # @param top [Integer] The maximum number of resources to return from the
    # operation.
    # @param orderby [String] The ordering expression for the results, using OData
    # notation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, lab_account_name, expand:nil, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_account_name is nil' if lab_account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labaccounts/{labAccountName}/labs'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labAccountName' => lab_account_name},
          query_params: {'$expand' => expand,'$filter' => filter,'$top' => top,'$orderby' => orderby,'api-version' => @client.api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationLab.mapper()
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
    # Get lab
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=maxUsersInLab)'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Lab] operation results.
    #
    def get(resource_group_name, lab_account_name, lab_name, expand:nil, custom_headers:nil)
      response = get_async(resource_group_name, lab_account_name, lab_name, expand:expand, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get lab
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=maxUsersInLab)'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, lab_account_name, lab_name, expand:nil, custom_headers:nil)
      get_async(resource_group_name, lab_account_name, lab_name, expand:expand, custom_headers:custom_headers).value!
    end

    #
    # Get lab
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=maxUsersInLab)'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, lab_account_name, lab_name, expand:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_account_name is nil' if lab_account_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labaccounts/{labAccountName}/labs/{labName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labAccountName' => lab_account_name,'labName' => lab_name},
          query_params: {'$expand' => expand,'api-version' => @client.api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::Lab.mapper()
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
    # Create or replace an existing Lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param lab [Lab] Represents a lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Lab] operation results.
    #
    def create_or_update(resource_group_name, lab_account_name, lab_name, lab, custom_headers:nil)
      response = create_or_update_async(resource_group_name, lab_account_name, lab_name, lab, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or replace an existing Lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param lab [Lab] Represents a lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, lab_account_name, lab_name, lab, custom_headers:nil)
      create_or_update_async(resource_group_name, lab_account_name, lab_name, lab, custom_headers:custom_headers).value!
    end

    #
    # Create or replace an existing Lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param lab [Lab] Represents a lab.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, lab_account_name, lab_name, lab, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_account_name is nil' if lab_account_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'lab is nil' if lab.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::Lab.mapper()
      request_content = @client.serialize(request_mapper,  lab)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labaccounts/{labAccountName}/labs/{labName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labAccountName' => lab_account_name,'labName' => lab_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::Lab.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::Lab.mapper()
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
    # Delete lab. This operation can take a while to complete
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, lab_account_name, lab_name, custom_headers:nil)
      response = delete_async(resource_group_name, lab_account_name, lab_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, lab_account_name, lab_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, lab_account_name, lab_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Modify properties of labs.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param lab [LabFragment] Represents a lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Lab] operation results.
    #
    def update(resource_group_name, lab_account_name, lab_name, lab, custom_headers:nil)
      response = update_async(resource_group_name, lab_account_name, lab_name, lab, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Modify properties of labs.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param lab [LabFragment] Represents a lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, lab_account_name, lab_name, lab, custom_headers:nil)
      update_async(resource_group_name, lab_account_name, lab_name, lab, custom_headers:custom_headers).value!
    end

    #
    # Modify properties of labs.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param lab [LabFragment] Represents a lab.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, lab_account_name, lab_name, lab, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_account_name is nil' if lab_account_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'lab is nil' if lab.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::LabFragment.mapper()
      request_content = @client.serialize(request_mapper,  lab)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labaccounts/{labAccountName}/labs/{labName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labAccountName' => lab_account_name,'labName' => lab_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::Lab.mapper()
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
    # Add users to a lab
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param add_users_payload [AddUsersPayload] Payload for Add Users operation on
    # a Lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def add_users(resource_group_name, lab_account_name, lab_name, add_users_payload, custom_headers:nil)
      response = add_users_async(resource_group_name, lab_account_name, lab_name, add_users_payload, custom_headers:custom_headers).value!
      nil
    end

    #
    # Add users to a lab
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param add_users_payload [AddUsersPayload] Payload for Add Users operation on
    # a Lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_users_with_http_info(resource_group_name, lab_account_name, lab_name, add_users_payload, custom_headers:nil)
      add_users_async(resource_group_name, lab_account_name, lab_name, add_users_payload, custom_headers:custom_headers).value!
    end

    #
    # Add users to a lab
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param add_users_payload [AddUsersPayload] Payload for Add Users operation on
    # a Lab.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_users_async(resource_group_name, lab_account_name, lab_name, add_users_payload, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_account_name is nil' if lab_account_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'add_users_payload is nil' if add_users_payload.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::AddUsersPayload.mapper()
      request_content = @client.serialize(request_mapper,  add_users_payload)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labaccounts/{labAccountName}/labs/{labName}/addUsers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labAccountName' => lab_account_name,'labName' => lab_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Register to managed lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def register(resource_group_name, lab_account_name, lab_name, custom_headers:nil)
      response = register_async(resource_group_name, lab_account_name, lab_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Register to managed lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def register_with_http_info(resource_group_name, lab_account_name, lab_name, custom_headers:nil)
      register_async(resource_group_name, lab_account_name, lab_name, custom_headers:custom_headers).value!
    end

    #
    # Register to managed lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def register_async(resource_group_name, lab_account_name, lab_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_account_name is nil' if lab_account_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labaccounts/{labAccountName}/labs/{labName}/register'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labAccountName' => lab_account_name,'labName' => lab_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Delete lab. This operation can take a while to complete
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, lab_account_name, lab_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, lab_account_name, lab_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete lab. This operation can take a while to complete
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, lab_account_name, lab_name, custom_headers:nil)
      begin_delete_async(resource_group_name, lab_account_name, lab_name, custom_headers:custom_headers).value!
    end

    #
    # Delete lab. This operation can take a while to complete
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param lab_name [String] The name of the lab.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, lab_account_name, lab_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_account_name is nil' if lab_account_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labaccounts/{labAccountName}/labs/{labName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labAccountName' => lab_account_name,'labName' => lab_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # List labs in a given lab account.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ResponseWithContinuationLab] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List labs in a given lab account.
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
    # List labs in a given lab account.
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationLab.mapper()
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
    # List labs in a given lab account.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_account_name [String] The name of the lab Account.
    # @param expand [String] Specify the $expand query. Example:
    # 'properties($select=maxUsersInLab)'
    # @param filter [String] The filter to apply to the operation.
    # @param top [Integer] The maximum number of resources to return from the
    # operation.
    # @param orderby [String] The ordering expression for the results, using OData
    # notation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ResponseWithContinuationLab] which provide lazy access to pages of
    # the response.
    #
    def list_as_lazy(resource_group_name, lab_account_name, expand:nil, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      response = list_async(resource_group_name, lab_account_name, expand:expand, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers).value!
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
