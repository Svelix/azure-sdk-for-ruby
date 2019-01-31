# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Represents an environment instance
    #
    class Environment < Resource

      include MsRestAzure

      # @return [ResourceSet] The set of a VM and the setting id it was created
      # for
      attr_accessor :resource_sets

      # @return [String] The AAD object Id of the user who has claimed the
      # environment
      attr_accessor :claimed_by_user_object_id

      # @return [String] The user principal Id of the user who has claimed the
      # environment
      attr_accessor :claimed_by_user_principal_id

      # @return [String] The name or email address of the user who has claimed
      # the environment
      attr_accessor :claimed_by_user_name

      # @return [Boolean] Is the environment claimed or not
      attr_accessor :is_claimed

      # @return [String] Last known power state of the environment
      attr_accessor :last_known_power_state

      # @return [NetworkInterface] Network details of the environment
      attr_accessor :network_interface

      # @return [Duration] How long the environment has been used by a lab user
      attr_accessor :total_usage

      # @return [DateTime] When the password was last reset on the environment.
      attr_accessor :password_last_reset

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier

      # @return [LatestOperationResult] The details of the latest operation.
      # ex: status, error
      attr_accessor :latest_operation_result


      #
      # Mapper for Environment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Environment',
          type: {
            name: 'Composite',
            class_name: 'Environment',
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
              resource_sets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceSets',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSet'
                }
              },
              claimed_by_user_object_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.claimedByUserObjectId',
                type: {
                  name: 'String'
                }
              },
              claimed_by_user_principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.claimedByUserPrincipalId',
                type: {
                  name: 'String'
                }
              },
              claimed_by_user_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.claimedByUserName',
                type: {
                  name: 'String'
                }
              },
              is_claimed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isClaimed',
                type: {
                  name: 'Boolean'
                }
              },
              last_known_power_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastKnownPowerState',
                type: {
                  name: 'String'
                }
              },
              network_interface: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.networkInterface',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkInterface'
                }
              },
              total_usage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.totalUsage',
                type: {
                  name: 'TimeSpan'
                }
              },
              password_last_reset: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.passwordLastReset',
                type: {
                  name: 'DateTime'
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
