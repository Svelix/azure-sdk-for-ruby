# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_09_18
  module Models
    #
    # The result returned from a cluster check name availability request.
    #
    class ClusterCheckNameRequest

      include MsRestAzure

      # @return [String] Cluster name.
      attr_accessor :name

      # @return [String] The type of resource, Microsoft.Kusto/clusters.
      # Default value: 'Microsoft.Kusto/clusters' .
      attr_accessor :type


      #
      # Mapper for ClusterCheckNameRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterCheckNameRequest',
          type: {
            name: 'Composite',
            class_name: 'ClusterCheckNameRequest',
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
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.Kusto/clusters',
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
