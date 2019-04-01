# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::AnomalyDetector::V1_0
  module Models
    #
    # Model object.
    #
    #
    class Point

      include MsRestAzure

      # @return [DateTime] Timestamp of a data point (ISO8601 format).
      attr_accessor :timestamp

      # @return [Float] The measurement of that point, should be float.
      attr_accessor :value


      #
      # Mapper for Point class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Point',
          type: {
            name: 'Composite',
            class_name: 'Point',
            model_properties: {
              timestamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
