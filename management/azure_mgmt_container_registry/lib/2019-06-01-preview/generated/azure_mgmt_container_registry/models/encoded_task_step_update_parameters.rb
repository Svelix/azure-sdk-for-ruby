# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # The properties for updating encoded task step.
    #
    class EncodedTaskStepUpdateParameters < TaskStepUpdateParameters

      include MsRestAzure


      def initialize
        @type = "EncodedTask"
      end

      attr_accessor :type

      # @return [String] Base64 encoded value of the template/definition file
      # content.
      attr_accessor :encoded_task_content

      # @return [String] Base64 encoded value of the parameters/values file
      # content.
      attr_accessor :encoded_values_content

      # @return [Array<SetValue>] The collection of overridable values that can
      # be passed when running a task.
      attr_accessor :values


      #
      # Mapper for EncodedTaskStepUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EncodedTask',
          type: {
            name: 'Composite',
            class_name: 'EncodedTaskStepUpdateParameters',
            model_properties: {
              context_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextPath',
                type: {
                  name: 'String'
                }
              },
              context_access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextAccessToken',
                type: {
                  name: 'String'
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
              encoded_task_content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encodedTaskContent',
                type: {
                  name: 'String'
                }
              },
              encoded_values_content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encodedValuesContent',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SetValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SetValue'
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