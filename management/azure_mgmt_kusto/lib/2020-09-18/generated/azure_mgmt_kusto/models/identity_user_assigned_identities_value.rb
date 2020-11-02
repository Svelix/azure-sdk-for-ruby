# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_09_18
  module Models
    #
    # Model object.
    #
    #
    class IdentityUserAssignedIdentitiesValue

      include MsRestAzure

      # @return [String] The principal id of user assigned identity.
      attr_accessor :principal_id

      # @return [String] The client id of user assigned identity.
      attr_accessor :client_id


      #
      # Mapper for IdentityUserAssignedIdentitiesValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Identity_userAssignedIdentitiesValue',
          type: {
            name: 'Composite',
            class_name: 'IdentityUserAssignedIdentitiesValue',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'clientId',
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
