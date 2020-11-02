# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Details of JobOutput errors.
    #
    class JobError

      include MsRestAzure

      # @return [JobErrorCode] Error code describing the error. Possible values
      # include: 'ServiceError', 'ServiceTransientError',
      # 'DownloadNotAccessible', 'DownloadTransientError',
      # 'UploadNotAccessible', 'UploadTransientError',
      # 'ConfigurationUnsupported', 'ContentMalformed', 'ContentUnsupported'
      attr_accessor :code

      # @return [String] A human-readable language-dependent representation of
      # the error.
      attr_accessor :message

      # @return [JobErrorCategory] Helps with categorization of errors.
      # Possible values include: 'Service', 'Download', 'Upload',
      # 'Configuration', 'Content'
      attr_accessor :category

      # @return [JobRetry] Indicates that it may be possible to retry the Job.
      # If retry is unsuccessful, please contact Azure support via Azure
      # Portal. Possible values include: 'DoNotRetry', 'MayRetry'
      attr_accessor :retry_property

      # @return [Array<JobErrorDetail>] An array of details about specific
      # errors that led to this reported error.
      attr_accessor :details


      #
      # Mapper for JobError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobError',
          type: {
            name: 'Composite',
            class_name: 'JobError',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              retry_property: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'retry',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobErrorDetailElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobErrorDetail'
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
