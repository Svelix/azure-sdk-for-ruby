# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_06_01_preview
  module Models
    #
    # The result of a request to get container registry quota usages.
    #
    class RegistryUsageListResult

      include MsRestAzure

      # @return [Array<RegistryUsage>] The list of container registry quota
      # usages.
      attr_accessor :value


      #
      # Mapper for RegistryUsageListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegistryUsageListResult',
          type: {
            name: 'Composite',
            class_name: 'RegistryUsageListResult',
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
                      serialized_name: 'RegistryUsageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RegistryUsage'
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
