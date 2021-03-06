# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_spellcheck'

module Azure::SpellCheck::Profiles::Latest

  module Models
    SpellingTokenSuggestion = Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellingTokenSuggestion
    ResponseBase = Azure::CognitiveServices::SpellCheck::V1_0::Models::ResponseBase
    SpellingFlaggedToken = Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellingFlaggedToken
    Error = Azure::CognitiveServices::SpellCheck::V1_0::Models::Error
    SpellCheck = Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellCheck
    Identifiable = Azure::CognitiveServices::SpellCheck::V1_0::Models::Identifiable
    Response = Azure::CognitiveServices::SpellCheck::V1_0::Models::Response
    Answer = Azure::CognitiveServices::SpellCheck::V1_0::Models::Answer
    ErrorResponse = Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorResponse
    ErrorType = Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorType
    ErrorCode = Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorCode
    ErrorSubCode = Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorSubCode
    ActionType = Azure::CognitiveServices::SpellCheck::V1_0::Models::ActionType
    Mode = Azure::CognitiveServices::SpellCheck::V1_0::Models::Mode
  end

  #
  # SpellCheckDataClass
  #
  class SpellCheckDataClass
    attr_reader :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::CognitiveServices::SpellCheck::V1_0::SpellCheckClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/SpellCheck'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def spelling_token_suggestion
      Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellingTokenSuggestion
    end
    def response_base
      Azure::CognitiveServices::SpellCheck::V1_0::Models::ResponseBase
    end
    def spelling_flagged_token
      Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellingFlaggedToken
    end
    def error
      Azure::CognitiveServices::SpellCheck::V1_0::Models::Error
    end
    def spell_check
      Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellCheck
    end
    def identifiable
      Azure::CognitiveServices::SpellCheck::V1_0::Models::Identifiable
    end
    def response
      Azure::CognitiveServices::SpellCheck::V1_0::Models::Response
    end
    def answer
      Azure::CognitiveServices::SpellCheck::V1_0::Models::Answer
    end
    def error_response
      Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorResponse
    end
    def error_type
      Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorType
    end
    def error_code
      Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorCode
    end
    def error_sub_code
      Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorSubCode
    end
    def action_type
      Azure::CognitiveServices::SpellCheck::V1_0::Models::ActionType
    end
    def mode
      Azure::CognitiveServices::SpellCheck::V1_0::Models::Mode
    end
  end
end
