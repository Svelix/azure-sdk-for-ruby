# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Serialconsole::Mgmt::V2018_05_01
  module Models
    #
    # Details on Failure

    # Details on Failure
    #
    class DeploymentValidateResult

      include MsRestAzure

      # @return [String] Error message
      attr_accessor :error_message


      #
      # Mapper for DeploymentValidateResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeploymentValidateResult',
          type: {
            name: 'Composite',
            class_name: 'DeploymentValidateResult',
            model_properties: {
              error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorMessage',
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