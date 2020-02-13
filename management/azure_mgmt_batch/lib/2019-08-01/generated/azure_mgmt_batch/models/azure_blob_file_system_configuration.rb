# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # Information used to connect to an Azure Storage Container using Blobfuse.
    #
    #
    class AzureBlobFileSystemConfiguration

      include MsRestAzure

      # @return [String] The Azure Storage Account name.
      attr_accessor :account_name

      # @return [String] The Azure Blob Storage Container name.
      attr_accessor :container_name

      # @return [String] The Azure Storage Account key. This property is
      # mutually exclusive with sasKey and one must be specified.
      attr_accessor :account_key

      # @return [String] The Azure Storage SAS token. This property is mutually
      # exclusive with accountKey and one must be specified.
      attr_accessor :sas_key

      # @return [String] Additional command line options to pass to the mount
      # command. These are 'net use' options in Windows and 'mount' options in
      # Linux.
      attr_accessor :blobfuse_options

      # @return [String] The relative path on the compute node where the file
      # system will be mounted. All file systems are mounted relative to the
      # Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR
      # environment variable.
      attr_accessor :relative_mount_path


      #
      # Mapper for AzureBlobFileSystemConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureBlobFileSystemConfiguration',
          type: {
            name: 'Composite',
            class_name: 'AzureBlobFileSystemConfiguration',
            model_properties: {
              account_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              account_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accountKey',
                type: {
                  name: 'String'
                }
              },
              sas_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sasKey',
                type: {
                  name: 'String'
                }
              },
              blobfuse_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobfuseOptions',
                type: {
                  name: 'String'
                }
              },
              relative_mount_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'relativeMountPath',
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