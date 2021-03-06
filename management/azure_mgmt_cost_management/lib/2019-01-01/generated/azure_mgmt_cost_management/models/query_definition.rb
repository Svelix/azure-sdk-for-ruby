# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_01_01
  module Models
    #
    # The definition of a query.
    #
    class QueryDefinition

      include MsRestAzure

      # @return [String] The type of the query. Default value: 'Usage' .
      attr_accessor :type

      # @return [TimeframeType] The time frame for pulling data for the query.
      # If custom, then a specific time period must be provided. Possible
      # values include: 'WeekToDate', 'MonthToDate', 'YearToDate',
      # 'TheLastWeek', 'TheLastMonth', 'TheLastYear', 'Custom',
      # 'BillingMonthToDate', 'TheLastBillingMonth'
      attr_accessor :timeframe

      # @return [QueryTimePeriod] Has time period for pulling data for the
      # query.
      attr_accessor :time_period

      # @return [QueryDataset] Has definition for data in this query.
      attr_accessor :dataset


      #
      # Mapper for QueryDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryDefinition',
          type: {
            name: 'Composite',
            class_name: 'QueryDefinition',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Usage',
                type: {
                  name: 'String'
                }
              },
              timeframe: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timeframe',
                type: {
                  name: 'String'
                }
              },
              time_period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timePeriod',
                type: {
                  name: 'Composite',
                  class_name: 'QueryTimePeriod'
                }
              },
              dataset: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataset',
                type: {
                  name: 'Composite',
                  class_name: 'QueryDataset'
                }
              }
            }
          }
        }
      end
    end
  end
end
