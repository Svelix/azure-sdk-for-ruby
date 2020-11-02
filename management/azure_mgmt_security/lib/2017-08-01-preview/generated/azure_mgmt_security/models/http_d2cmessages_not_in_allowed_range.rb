# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01_preview
  module Models
    #
    # Number of device to cloud messages (HTTP protocol) is not in allowed
    # range.
    #
    class HttpD2CMessagesNotInAllowedRange < TimeWindowCustomAlertRule

      include MsRestAzure


      def initialize
        @ruleType = "HttpD2CMessagesNotInAllowedRange"
      end

      attr_accessor :ruleType


      #
      # Mapper for HttpD2CMessagesNotInAllowedRange class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpD2CMessagesNotInAllowedRange',
          type: {
            name: 'Composite',
            class_name: 'HttpD2CMessagesNotInAllowedRange',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              ruleType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleType',
                type: {
                  name: 'String'
                }
              },
              min_threshold: {
                client_side_validation: true,
                required: true,
                serialized_name: 'minThreshold',
                type: {
                  name: 'Number'
                }
              },
              max_threshold: {
                client_side_validation: true,
                required: true,
                serialized_name: 'maxThreshold',
                type: {
                  name: 'Number'
                }
              },
              time_window_size: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timeWindowSize',
                type: {
                  name: 'TimeSpan'
                }
              }
            }
          }
        }
      end
    end
  end
end
