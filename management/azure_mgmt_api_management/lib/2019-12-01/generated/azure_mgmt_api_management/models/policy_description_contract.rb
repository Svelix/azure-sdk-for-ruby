# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Policy description details.
    #
    class PolicyDescriptionContract < Resource

      include MsRestAzure

      # @return [String] Policy description.
      attr_accessor :description

      # @return [Integer] Binary OR value of the Snippet scope.
      attr_accessor :scope


      #
      # Mapper for PolicyDescriptionContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyDescriptionContract',
          type: {
            name: 'Composite',
            class_name: 'PolicyDescriptionContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.scope',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
