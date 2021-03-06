# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::HybridCompute::Mgmt::V2019_12_12
  module Models
    #
    # Specifies the operating system settings for the hybrid machine.
    #
    class MachinePropertiesOsProfile < OSProfile

      include MsRestAzure


      #
      # Mapper for MachinePropertiesOsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MachineProperties_osProfile',
          type: {
            name: 'Composite',
            class_name: 'MachinePropertiesOsProfile',
            model_properties: {
              computer_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'computerName',
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
