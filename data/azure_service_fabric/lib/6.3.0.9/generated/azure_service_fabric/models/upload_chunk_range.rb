# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Information about which portion of the file to upload.
    #
    class UploadChunkRange

      include MsRestAzure

      # @return [String] The start position of the portion of the file. It's
      # represented by the number of bytes.
      attr_accessor :start_position

      # @return [String] The end position of the portion of the file. It's
      # represented by the number of bytes.
      attr_accessor :end_position


      #
      # Mapper for UploadChunkRange class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UploadChunkRange',
          type: {
            name: 'Composite',
            class_name: 'UploadChunkRange',
            model_properties: {
              start_position: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StartPosition',
                type: {
                  name: 'String'
                }
              },
              end_position: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EndPosition',
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
