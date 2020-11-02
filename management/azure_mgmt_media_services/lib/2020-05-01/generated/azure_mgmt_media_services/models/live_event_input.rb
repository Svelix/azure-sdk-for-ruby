# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # The live event input.
    #
    class LiveEventInput

      include MsRestAzure

      # @return [LiveEventInputProtocol] The input protocol for the live event.
      # This is specified at creation time and cannot be updated. Possible
      # values include: 'FragmentedMP4', 'RTMP'
      attr_accessor :streaming_protocol

      # @return [LiveEventInputAccessControl] Access control for live event
      # input.
      attr_accessor :access_control

      # @return [String] ISO 8601 time duration of the key frame interval
      # duration of the input. This value sets the EXT-X-TARGETDURATION
      # property in the HLS output. For example, use PT2S to indicate 2
      # seconds. Leave the value empty for encoding live events.
      attr_accessor :key_frame_interval_duration

      # @return [String] A UUID in string form to uniquely identify the stream.
      # This can be specified at creation time but cannot be updated. If
      # omitted, the service will generate a unique value.
      attr_accessor :access_token

      # @return [Array<LiveEventEndpoint>] The input endpoints for the live
      # event.
      attr_accessor :endpoints


      #
      # Mapper for LiveEventInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEventInput',
          type: {
            name: 'Composite',
            class_name: 'LiveEventInput',
            model_properties: {
              streaming_protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'streamingProtocol',
                type: {
                  name: 'String'
                }
              },
              access_control: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accessControl',
                type: {
                  name: 'Composite',
                  class_name: 'LiveEventInputAccessControl'
                }
              },
              key_frame_interval_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyFrameIntervalDuration',
                type: {
                  name: 'String'
                }
              },
              access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accessToken',
                type: {
                  name: 'String'
                }
              },
              endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LiveEventEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LiveEventEndpoint'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
