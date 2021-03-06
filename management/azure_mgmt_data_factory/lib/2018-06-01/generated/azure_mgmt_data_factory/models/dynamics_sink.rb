# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity Dynamics sink.
    #
    class DynamicsSink < CopySink

      include MsRestAzure


      def initialize
        @type = "DynamicsSink"
      end

      attr_accessor :type

      # @return [String] The write behavior for the operation. Default value:
      # 'Upsert' .
      attr_accessor :write_behavior

      # @return The flag indicating whether ignore null values from input
      # dataset (except key fields) during write operation. Default is false.
      # Type: boolean (or Expression with resultType boolean).
      attr_accessor :ignore_null_values

      # @return The logical name of the alternate key which will be used when
      # upserting records. Type: string (or Expression with resultType string).
      attr_accessor :alternate_key_name


      #
      # Mapper for DynamicsSink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DynamicsSink',
          type: {
            name: 'Composite',
            class_name: 'DynamicsSink',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              write_batch_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchSize',
                type: {
                  name: 'Object'
                }
              },
              write_batch_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchTimeout',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryCount',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              write_behavior: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'writeBehavior',
                default_value: 'Upsert',
                type: {
                  name: 'String'
                }
              },
              ignore_null_values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ignoreNullValues',
                type: {
                  name: 'Object'
                }
              },
              alternate_key_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'alternateKeyName',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
