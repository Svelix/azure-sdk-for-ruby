# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_09_01
  module Models
    #
    # Desired outbound IP resources for the cluster load balancer.
    #
    class ManagedClusterLoadBalancerProfileOutboundIPs

      include MsRestAzure

      # @return [Array<ResourceReference>] A list of public IP resources.
      attr_accessor :public_ips


      #
      # Mapper for ManagedClusterLoadBalancerProfileOutboundIPs class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterLoadBalancerProfile_outboundIPs',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterLoadBalancerProfileOutboundIPs',
            model_properties: {
              public_ips: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publicIPs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceReference'
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
