# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Represents a relation between two resources
    #
    class Relation < ResourceWithEtag

      include MsRestAzure

      # @return [String] The resource ID of the related resource
      attr_accessor :related_resource_id

      # @return [String] The name of the related resource
      attr_accessor :related_resource_name

      # @return [String] The resource type of the related resource
      attr_accessor :related_resource_type

      # @return [String] The resource kind of the related resource
      attr_accessor :related_resource_kind


      #
      # Mapper for Relation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Relation',
          type: {
            name: 'Composite',
            class_name: 'Relation',
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
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              related_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.relatedResourceId',
                type: {
                  name: 'String'
                }
              },
              related_resource_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.relatedResourceName',
                type: {
                  name: 'String'
                }
              },
              related_resource_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.relatedResourceType',
                type: {
                  name: 'String'
                }
              },
              related_resource_kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.relatedResourceKind',
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
