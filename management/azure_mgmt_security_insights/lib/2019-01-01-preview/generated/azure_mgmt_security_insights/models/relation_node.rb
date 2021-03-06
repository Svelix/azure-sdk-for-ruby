# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Relation node
    #
    class RelationNode

      include MsRestAzure

      # @return [String] Relation Node Id
      attr_accessor :relation_node_id

      # @return [RelationNodeKind] The type of relation node. Possible values
      # include: 'Case', 'Bookmark'
      attr_accessor :relation_node_kind

      # @return [String] Etag for relation node
      attr_accessor :etag

      # @return [Hash{String => String}] Additional set of properties
      attr_accessor :relation_additional_properties


      #
      # Mapper for RelationNode class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RelationNode',
          type: {
            name: 'Composite',
            class_name: 'RelationNode',
            model_properties: {
              relation_node_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'relationNodeId',
                type: {
                  name: 'String'
                }
              },
              relation_node_kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'relationNodeKind',
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
              relation_additional_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'relationAdditionalProperties',
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
