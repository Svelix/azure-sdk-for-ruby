# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::HealthcareApis::Mgmt::V2020_03_30
  module Models
    #
    # The common properties of a service.
    #
    class ServicesResource

      include MsRestAzure

      # @return [String] The resource identifier.
      attr_accessor :id

      # @return [String] The resource name.
      attr_accessor :name

      # @return [String] The resource type.
      attr_accessor :type

      # @return [Kind] The kind of the service. Possible values include:
      # 'fhir', 'fhir-Stu3', 'fhir-R4'
      attr_accessor :kind

      # @return [String] The resource location.
      attr_accessor :location

      # @return [Hash{String => String}] The resource tags.
      attr_accessor :tags

      # @return [String] An etag associated with the resource, used for
      # optimistic concurrency when editing it.
      attr_accessor :etag

      # @return [ServicesResourceIdentity] Setting indicating whether the
      # service has a managed identity associated with it.
      attr_accessor :identity


      #
      # Mapper for ServicesResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServicesResource',
          type: {
            name: 'Composite',
            class_name: 'ServicesResource',
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
                constraints: {
                  Pattern: '^[a-z0-9][a-z0-9-]{1,21}[a-z0-9]$'
                },
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
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ServicesResourceIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end