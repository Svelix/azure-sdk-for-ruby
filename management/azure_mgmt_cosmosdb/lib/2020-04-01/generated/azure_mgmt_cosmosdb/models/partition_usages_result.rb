# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # The response to a list partition level usage request.
    #
    class PartitionUsagesResult

      include MsRestAzure

      # @return [Array<PartitionUsage>] The list of partition-level usages for
      # the database. A usage is a point in time metric
      attr_accessor :value


      #
      # Mapper for PartitionUsagesResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionUsagesResult',
          type: {
            name: 'Composite',
            class_name: 'PartitionUsagesResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PartitionUsageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PartitionUsage'
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
