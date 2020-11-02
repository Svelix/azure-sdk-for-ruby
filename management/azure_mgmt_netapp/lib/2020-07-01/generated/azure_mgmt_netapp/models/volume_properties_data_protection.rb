# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_07_01
  module Models
    #
    # DataProtection

    # DataProtection type volumes include an object containing details of the
    # replication
    #
    class VolumePropertiesDataProtection

      include MsRestAzure

      # @return [VolumeBackupProperties] Backup. Backup Properties
      attr_accessor :backup

      # @return [ReplicationObject] Replication. Replication properties
      attr_accessor :replication

      # @return [VolumeSnapshotProperties] Snapshot. Snapshot properties.
      attr_accessor :snapshot


      #
      # Mapper for VolumePropertiesDataProtection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volumeProperties_dataProtection',
          type: {
            name: 'Composite',
            class_name: 'VolumePropertiesDataProtection',
            model_properties: {
              backup: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backup',
                type: {
                  name: 'Composite',
                  class_name: 'VolumeBackupProperties'
                }
              },
              replication: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replication',
                type: {
                  name: 'Composite',
                  class_name: 'ReplicationObject'
                }
              },
              snapshot: {
                client_side_validation: true,
                required: false,
                serialized_name: 'snapshot',
                type: {
                  name: 'Composite',
                  class_name: 'VolumeSnapshotProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
