# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2019_03_01
  module Models
    #
    # An azure resource object
    #
    class ProxyResource

      include MsRestAzure

      # @return [String] Azure resource Id
      attr_accessor :id

      # @return [String] Azure resource type
      attr_accessor :type

      # @return [String] Azure resource name
      attr_accessor :name


      #
      # Mapper for ProxyResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProxyResource',
          type: {
            name: 'Composite',
            class_name: 'ProxyResource',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              }
            }
          }
        }
      end
    end
  end
end
