# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Describes the properties for an output ISO MP4 file.
    #
    class Mp4Format < MultiBitrateFormat

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.Mp4Format"
      end

      attr_accessor :odatatype


      #
      # Mapper for Mp4Format class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.Mp4Format',
          type: {
            name: 'Composite',
            class_name: 'Mp4Format',
            model_properties: {
              filename_pattern: {
                client_side_validation: true,
                required: true,
                serialized_name: 'filenamePattern',
                type: {
                  name: 'String'
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              output_files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outputFiles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OutputFileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OutputFile'
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
