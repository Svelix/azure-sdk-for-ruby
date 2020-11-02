# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_07_01
  module Models
    #
    # Snapshot policy Details for create and update
    #
    class SnapshotPolicyPatch

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

      # @return [String] Snapshot policy name
      attr_accessor :name1

      # @return [HourlySchedule] hourlySchedule. Schedule for hourly snapshots
      attr_accessor :hourly_schedule

      # @return [DailySchedule] dailySchedule. Schedule for daily snapshots
      attr_accessor :daily_schedule

      # @return [WeeklySchedule] weeklySchedule. Schedule for weekly snapshots
      attr_accessor :weekly_schedule

      # @return [MonthlySchedule] monthlySchedule. Schedule for monthly
      # snapshots
      attr_accessor :monthly_schedule

      # @return [Boolean] The property to decide policy is enabled or not
      attr_accessor :enabled

      # @return [String] Azure lifecycle management
      attr_accessor :provisioning_state


      #
      # Mapper for SnapshotPolicyPatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'snapshotPolicyPatch',
          type: {
            name: 'Composite',
            class_name: 'SnapshotPolicyPatch',
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
              hourly_schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hourlySchedule',
                type: {
                  name: 'Composite',
                  class_name: 'HourlySchedule'
                }
              },
              daily_schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dailySchedule',
                type: {
                  name: 'Composite',
                  class_name: 'DailySchedule'
                }
              },
              weekly_schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.weeklySchedule',
                type: {
                  name: 'Composite',
                  class_name: 'WeeklySchedule'
                }
              },
              monthly_schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.monthlySchedule',
                type: {
                  name: 'Composite',
                  class_name: 'MonthlySchedule'
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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