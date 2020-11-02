# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2020_01_01
  module Models
    #
    # Represents AATP (Azure Advanced Threat Protection) data connector.
    #
    class AATPDataConnector < DataConnector

      include MsRestAzure


      def initialize
        @kind = "AzureAdvancedThreatProtection"
      end

      attr_accessor :kind

      # @return [String] The tenant id to connect to, and get the data from.
      attr_accessor :tenant_id

      # @return [AlertsDataTypeOfDataConnector] The available data types for
      # the connector.
      attr_accessor :data_types


      #
      # Mapper for AATPDataConnector class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureAdvancedThreatProtection',
          type: {
            name: 'Composite',
            class_name: 'AATPDataConnector',
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
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              data_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataTypes',
                type: {
                  name: 'Composite',
                  class_name: 'AlertsDataTypeOfDataConnector'
                }
              }
            }
          }
        }
      end
    end
  end
end
