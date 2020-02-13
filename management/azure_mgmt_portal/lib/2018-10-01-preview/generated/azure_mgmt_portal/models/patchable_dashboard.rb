# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Portal::Mgmt::V2018_10_01_preview
  module Models
    #
    # The shared dashboard resource definition.
    #
    class PatchableDashboard

      include MsRestAzure

      # @return [Hash{String => DashboardLens}] The dashboard lenses.
      attr_accessor :lenses

      # @return The dashboard metadata.
      attr_accessor :metadata

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags


      #
      # Mapper for PatchableDashboard class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PatchableDashboard',
          type: {
            name: 'Composite',
            class_name: 'PatchableDashboard',
            model_properties: {
              lenses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lenses',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DashboardLensElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DashboardLens'
                      }
                  }
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
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