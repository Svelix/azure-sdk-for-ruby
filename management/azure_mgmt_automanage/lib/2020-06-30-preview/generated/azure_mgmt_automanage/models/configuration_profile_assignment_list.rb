# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automanage::Mgmt::V2020_06_30_preview
  module Models
    #
    # The response of the list configuration profile assignment operation.
    #
    class ConfigurationProfileAssignmentList

      include MsRestAzure

      # @return [Array<ConfigurationProfileAssignment>] Result of the list
      # configuration profile assignment operation.
      attr_accessor :value


      #
      # Mapper for ConfigurationProfileAssignmentList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConfigurationProfileAssignmentList',
          type: {
            name: 'Composite',
            class_name: 'ConfigurationProfileAssignmentList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConfigurationProfileAssignmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConfigurationProfileAssignment'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end