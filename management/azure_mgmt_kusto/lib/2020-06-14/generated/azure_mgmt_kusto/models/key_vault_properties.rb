# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # Properties of the key vault.
    #
    class KeyVaultProperties

      include MsRestAzure

      # @return [String] The name of the key vault key.
      attr_accessor :key_name

      # @return [String] The version of the key vault key.
      attr_accessor :key_version

      # @return [String] The Uri of the key vault.
      attr_accessor :key_vault_uri


      #
      # Mapper for KeyVaultProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultProperties',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultProperties',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
                type: {
                  name: 'String'
                }
              },
              key_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyVersion',
                type: {
                  name: 'String'
                }
              },
              key_vault_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyVaultUri',
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