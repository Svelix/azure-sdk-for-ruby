# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # The entity expansion result operation response.
    #
    class EntityExpandResponse

      include MsRestAzure

      # @return [ExpansionResultsMetadata] The metadata from the expansion
      # operation results.
      attr_accessor :meta_data

      # @return [EntityExpandResponseValue] The expansion result values.
      attr_accessor :value


      #
      # Mapper for EntityExpandResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityExpandResponse',
          type: {
            name: 'Composite',
            class_name: 'EntityExpandResponse',
            model_properties: {
              meta_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metaData',
                type: {
                  name: 'Composite',
                  class_name: 'ExpansionResultsMetadata'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Composite',
                  class_name: 'EntityExpandResponseValue'
                }
              }
            }
          }
        }
      end
    end
  end
end
