# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Specific entity.
    #
    class Entity

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Account"] = "AccountEntity"
      @@discriminatorMap["AzureResource"] = "AzureResourceEntity"
      @@discriminatorMap["CloudApplication"] = "CloudApplicationEntity"
      @@discriminatorMap["DnsResolution"] = "DnsEntity"
      @@discriminatorMap["File"] = "FileEntity"
      @@discriminatorMap["FileHash"] = "FileHashEntity"
      @@discriminatorMap["Host"] = "HostEntity"
      @@discriminatorMap["Bookmark"] = "HuntingBookmark"
      @@discriminatorMap["SecurityAlert"] = "SecurityAlert"
      @@discriminatorMap["Ip"] = "IpEntity"
      @@discriminatorMap["Malware"] = "MalwareEntity"
      @@discriminatorMap["Process"] = "ProcessEntity"
      @@discriminatorMap["RegistryKey"] = "RegistryKeyEntity"
      @@discriminatorMap["RegistryValue"] = "RegistryValueEntity"
      @@discriminatorMap["SecurityGroup"] = "SecurityGroupEntity"
      @@discriminatorMap["Url"] = "UrlEntity"
      @@discriminatorMap["IoTDevice"] = "IoTDeviceEntity"

      def initialize
        @kind = "Entity"
      end

      attr_accessor :kind

      # @return [String] Azure resource Id
      attr_accessor :id

      # @return [String] Azure resource name
      attr_accessor :name

      # @return [String] Azure resource type
      attr_accessor :type


      #
      # Mapper for Entity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Entity',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'kind',
            uber_parent: 'Entity',
            class_name: 'Entity',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
