# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # The live event endpoint.
    #
    class LiveEventEndpoint

      include MsRestAzure

      # @return [String] The endpoint protocol.
      attr_accessor :protocol

      # @return [String] The endpoint URL.
      attr_accessor :url


      #
      # Mapper for LiveEventEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEventEndpoint',
          type: {
            name: 'Composite',
            class_name: 'LiveEventEndpoint',
            model_properties: {
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'url',
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
