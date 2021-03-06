# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01_preview
  module Models
    #
    # Settings for hybrid compute management
    #
    class HybridComputeSettingsProperties

      include MsRestAzure

      # @return [HybridComputeProvisioningState] State of the service principal
      # and its secret. Possible values include: 'Valid', 'Invalid', 'Expired'
      attr_accessor :hybrid_compute_provisioning_state

      # @return [AutoProvision] Whether or not to automatically install Azure
      # Arc (hybrid compute) agents on machines. Possible values include: 'On',
      # 'Off'
      attr_accessor :auto_provision

      # @return [String] The name of the resource group where Arc (Hybrid
      # Compute) connectors are connected.
      attr_accessor :resource_group_name

      # @return [String] The location where the metadata of machines will be
      # stored
      attr_accessor :region

      # @return [ProxyServerProperties] For a non-Azure machine that is not
      # connected directly to the internet, specify a proxy server that the
      # non-Azure machine can use.
      attr_accessor :proxy_server

      # @return [ServicePrincipalProperties] An object to access resources that
      # are secured by an Azure AD tenant.
      attr_accessor :service_principal


      #
      # Mapper for HybridComputeSettingsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HybridComputeSettingsProperties',
          type: {
            name: 'Composite',
            class_name: 'HybridComputeSettingsProperties',
            model_properties: {
              hybrid_compute_provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'hybridComputeProvisioningState',
                type: {
                  name: 'String'
                }
              },
              auto_provision: {
                client_side_validation: true,
                required: true,
                serialized_name: 'autoProvision',
                type: {
                  name: 'String'
                }
              },
              resource_group_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceGroupName',
                type: {
                  name: 'String'
                }
              },
              region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'region',
                type: {
                  name: 'String'
                }
              },
              proxy_server: {
                client_side_validation: true,
                required: false,
                serialized_name: 'proxyServer',
                type: {
                  name: 'Composite',
                  class_name: 'ProxyServerProperties'
                }
              },
              service_principal: {
                client_side_validation: true,
                required: false,
                serialized_name: 'servicePrincipal',
                type: {
                  name: 'Composite',
                  class_name: 'ServicePrincipalProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
