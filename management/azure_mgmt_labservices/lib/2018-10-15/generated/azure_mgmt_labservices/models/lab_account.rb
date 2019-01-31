# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Represents a lab account.
    #
    class LabAccount < Resource

      include MsRestAzure

      # @return [SizeConfigurationProperties] Represents the size configuration
      # under the lab account
      attr_accessor :size_configuration

      # @return [Boolean] Represents if region selection is enabled
      attr_accessor :enabled_region_selection

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier

      # @return [LatestOperationResult] The details of the latest operation.
      # ex: status, error
      attr_accessor :latest_operation_result


      #
      # Mapper for LabAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LabAccount',
          type: {
            name: 'Composite',
            class_name: 'LabAccount',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              },
              size_configuration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.sizeConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SizeConfigurationProperties'
                }
              },
              enabled_region_selection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabledRegionSelection',
                type: {
                  name: 'Boolean'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
                type: {
                  name: 'String'
                }
              },
              latest_operation_result: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.latestOperationResult',
                type: {
                  name: 'Composite',
                  class_name: 'LatestOperationResult'
                }
              }
            }
          }
        }
      end
    end
  end
end
