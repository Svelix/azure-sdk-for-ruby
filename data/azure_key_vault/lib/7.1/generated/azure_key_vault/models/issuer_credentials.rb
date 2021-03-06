# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_1
  module Models
    #
    # The credentials to be used for the certificate issuer.
    #
    class IssuerCredentials

      include MsRestAzure

      # @return [String] The user name/account name/account id.
      attr_accessor :account_id

      # @return [String] The password/secret/account key.
      attr_accessor :password


      #
      # Mapper for IssuerCredentials class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IssuerCredentials',
          type: {
            name: 'Composite',
            class_name: 'IssuerCredentials',
            model_properties: {
              account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'account_id',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pwd',
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
