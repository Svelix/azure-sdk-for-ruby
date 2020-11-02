# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # Details of the On Premise Sql resource that was assessed
    #
    class OnPremiseSqlResourceDetails < OnPremiseResourceDetails

      include MsRestAzure


      def initialize
        @source = "OnPremiseSql"
      end

      attr_accessor :source

      # @return [String] The Sql server name installed on the machine
      attr_accessor :server_name

      # @return [String] The Sql database name installed on the machine
      attr_accessor :database_name


      #
      # Mapper for OnPremiseSqlResourceDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OnPremiseSql',
          type: {
            name: 'Composite',
            class_name: 'OnPremiseSqlResourceDetails',
            model_properties: {
              source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'String'
                }
              },
              workspace_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'workspaceId',
                type: {
                  name: 'String'
                }
              },
              vmuuid: {
                client_side_validation: true,
                required: true,
                serialized_name: 'vmuuid',
                type: {
                  name: 'String'
                }
              },
              source_computer_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceComputerId',
                type: {
                  name: 'String'
                }
              },
              machine_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'machineName',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'databaseName',
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
