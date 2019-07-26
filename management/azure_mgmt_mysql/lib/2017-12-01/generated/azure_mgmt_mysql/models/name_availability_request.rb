# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2017_12_01
  module Models
    #
    # Request from client to check resource name availability.
    #
    class NameAvailabilityRequest

      include MsRestAzure

      # @return [String] Resource name to verify.
      attr_accessor :name

      # @return [String] Resource type used for verification.
      attr_accessor :type


      #
      # Mapper for NameAvailabilityRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NameAvailabilityRequest',
          type: {
            name: 'Composite',
            class_name: 'NameAvailabilityRequest',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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