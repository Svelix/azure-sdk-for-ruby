# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01_preview
  module Models
    #
    # Entity tag is used for comparing two or more entities from the same
    # requested resource.
    #
    class ETag

      include MsRestAzure

      # @return [String] Entity tag is used for comparing two or more entities
      # from the same requested resource.
      attr_accessor :etag


      #
      # Mapper for ETag class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ETag',
          type: {
            name: 'Composite',
            class_name: 'ETag',
            model_properties: {
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
