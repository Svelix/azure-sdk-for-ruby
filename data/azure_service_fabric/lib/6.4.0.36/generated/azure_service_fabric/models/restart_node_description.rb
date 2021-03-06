# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the parameters to restart a Service Fabric node.
    #
    class RestartNodeDescription

      include MsRestAzure

      # @return [String] The instance ID of the target node. If instance ID is
      # specified the node is restarted only if it matches with the current
      # instance of the node. A default value of "0" would match any instance
      # ID. The instance ID can be obtained using get node query. Default
      # value: '0' .
      attr_accessor :node_instance_id

      # @return [CreateFabricDump] Specify True to create a dump of the fabric
      # node process. This is case-sensitive. Possible values include: 'False',
      # 'True'. Default value: 'False' .
      attr_accessor :create_fabric_dump


      #
      # Mapper for RestartNodeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestartNodeDescription',
          type: {
            name: 'Composite',
            class_name: 'RestartNodeDescription',
            model_properties: {
              node_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeInstanceId',
                default_value: '0',
                type: {
                  name: 'String'
                }
              },
              create_fabric_dump: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CreateFabricDump',
                default_value: 'False',
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
