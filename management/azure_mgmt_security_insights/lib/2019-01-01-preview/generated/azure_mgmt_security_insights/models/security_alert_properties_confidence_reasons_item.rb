# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # confidence reason item
    #
    class SecurityAlertPropertiesConfidenceReasonsItem

      include MsRestAzure

      # @return [String] The reason's description
      attr_accessor :reason

      # @return [String] The type (category) of the reason
      attr_accessor :reason_type


      #
      # Mapper for SecurityAlertPropertiesConfidenceReasonsItem class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityAlertProperties_confidenceReasonsItem',
          type: {
            name: 'Composite',
            class_name: 'SecurityAlertPropertiesConfidenceReasonsItem',
            model_properties: {
              reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              reason_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reasonType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
