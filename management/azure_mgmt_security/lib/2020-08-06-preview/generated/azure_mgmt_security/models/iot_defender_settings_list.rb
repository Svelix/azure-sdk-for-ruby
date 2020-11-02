# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_08_06_preview
  module Models
    #
    # List of IoT Defender settings
    #
    class IotDefenderSettingsList

      include MsRestAzure

      # @return [Array<IotDefenderSettingsModel>] List data
      attr_accessor :value


      #
      # Mapper for IotDefenderSettingsList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotDefenderSettingsList',
          type: {
            name: 'Composite',
            class_name: 'IotDefenderSettingsList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IotDefenderSettingsModelElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IotDefenderSettingsModel'
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
