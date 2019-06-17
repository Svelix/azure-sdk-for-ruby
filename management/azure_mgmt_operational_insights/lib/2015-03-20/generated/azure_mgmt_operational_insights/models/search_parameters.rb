# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  module Models
    #
    # Parameters specifying the search query and range.
    #
    class SearchParameters

      include MsRestAzure

      # @return [Integer] The number to get from the top.
      attr_accessor :top

      # @return [SearchHighlight] The highlight that looks for all occurrences
      # of a string.
      attr_accessor :highlight

      # @return [String] The query to search.
      attr_accessor :query

      # @return [DateTime] The start date filter, so the only query results
      # returned are after this date.
      attr_accessor :start

      # @return [DateTime] The end date filter, so the only query results
      # returned are before this date.
      attr_accessor :end_property


      #
      # Mapper for SearchParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SearchParameters',
          type: {
            name: 'Composite',
            class_name: 'SearchParameters',
            model_properties: {
              top: {
                required: false,
                serialized_name: 'top',
                type: {
                  name: 'Number'
                }
              },
              highlight: {
                required: false,
                serialized_name: 'highlight',
                type: {
                  name: 'Composite',
                  class_name: 'SearchHighlight'
                }
              },
              query: {
                required: true,
                serialized_name: 'query',
                type: {
                  name: 'String'
                }
              },
              start: {
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'DateTime'
                }
              },
              end_property: {
                required: false,
                serialized_name: 'end',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
