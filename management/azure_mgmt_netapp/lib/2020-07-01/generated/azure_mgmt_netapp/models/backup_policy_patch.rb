# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_07_01
  module Models
    #
    # Backup policy Details for create and update
    #
    class BackupPolicyPatch

      include MsRestAzure

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [String] Name of backup policy
      attr_accessor :name1

      # @return [String] Azure lifecycle management
      attr_accessor :provisioning_state

      # @return [Integer] Daily backups count to keep
      attr_accessor :daily_backups_to_keep

      # @return [Integer] Weekly backups count to keep
      attr_accessor :weekly_backups_to_keep

      # @return [Integer] Monthly backups count to keep
      attr_accessor :monthly_backups_to_keep

      # @return [Integer] Yearly backups count to keep
      attr_accessor :yearly_backups_to_keep

      # @return [Integer] Volumes using current backup policy
      attr_accessor :volumes_assigned

      # @return [Boolean] The property to decide policy is enabled or not
      attr_accessor :enabled

      # @return [Array<VolumeBackups>] A list of volumes assigned to this
      # policy
      attr_accessor :volume_backups


      #
      # Mapper for BackupPolicyPatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'backupPolicyPatch',
          type: {
            name: 'Composite',
            class_name: 'BackupPolicyPatch',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              name1: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              daily_backups_to_keep: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dailyBackupsToKeep',
                type: {
                  name: 'Number'
                }
              },
              weekly_backups_to_keep: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.weeklyBackupsToKeep',
                type: {
                  name: 'Number'
                }
              },
              monthly_backups_to_keep: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.monthlyBackupsToKeep',
                type: {
                  name: 'Number'
                }
              },
              yearly_backups_to_keep: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.yearlyBackupsToKeep',
                type: {
                  name: 'Number'
                }
              },
              volumes_assigned: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.volumesAssigned',
                type: {
                  name: 'Number'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              volume_backups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.volumeBackups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VolumeBackupsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VolumeBackups'
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
