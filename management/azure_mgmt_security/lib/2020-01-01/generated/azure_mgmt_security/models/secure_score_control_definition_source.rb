# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # The type of the security control (For example, BuiltIn)
    #
    class SecureScoreControlDefinitionSource

      include MsRestAzure

      # @return [ControlType] The type of security control (for example,
      # BuiltIn). Possible values include: 'BuiltIn', 'Custom'
      attr_accessor :source_type


      #
      # Mapper for SecureScoreControlDefinitionSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecureScoreControlDefinitionSource',
          type: {
            name: 'Composite',
            class_name: 'SecureScoreControlDefinitionSource',
            model_properties: {
              source_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceType',
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
