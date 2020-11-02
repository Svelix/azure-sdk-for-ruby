# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Model object.
    #
    #
    class MediaServiceIdentity

      include MsRestAzure

      # @return [ManagedIdentityType] The identity type. Possible values
      # include: 'SystemAssigned', 'None'
      attr_accessor :type

      # @return [String] The Principal ID of the identity.
      attr_accessor :principal_id

      # @return [String] The Tenant ID of the identity.
      attr_accessor :tenant_id


      #
      # Mapper for MediaServiceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MediaServiceIdentity',
          type: {
            name: 'Composite',
            class_name: 'MediaServiceIdentity',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
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
