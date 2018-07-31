# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # User activities of a data warehouse
    #
    class DataWarehouseUserActivities < ProxyResource

      include MsRestAzure

      # @return [Integer] Count of running and suspended queries.
      attr_accessor :active_queries_count


      #
      # Mapper for DataWarehouseUserActivities class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataWarehouseUserActivities',
          type: {
            name: 'Composite',
            class_name: 'DataWarehouseUserActivities',
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
              active_queries_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.activeQueriesCount',
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