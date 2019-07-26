# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Payload for Add Users operation on a Lab.
    #
    class AddUsersPayload

      include MsRestAzure

      # @return [Array<String>] List of user emails addresses to add to the
      # lab.
      attr_accessor :email_addresses


      #
      # Mapper for AddUsersPayload class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AddUsersPayload',
          type: {
            name: 'Composite',
            class_name: 'AddUsersPayload',
            model_properties: {
              email_addresses: {
                client_side_validation: true,
                required: true,
                serialized_name: 'emailAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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