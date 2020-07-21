# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the parameters for the request header action.
    #
    class HeaderActionParameters

      include MsRestAzure

      # @return [String] . Default value:
      # '#Microsoft.Azure.Cdn.Models.DeliveryRuleHeaderActionParameters' .
      attr_accessor :odatatype

      # @return [HeaderAction] Action to perform. Possible values include:
      # 'Append', 'Overwrite', 'Delete'
      attr_accessor :header_action

      # @return [String] Name of the header to modify
      attr_accessor :header_name

      # @return [String] Value for the specified action
      attr_accessor :value


      #
      # Mapper for HeaderActionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HeaderActionParameters',
          type: {
            name: 'Composite',
            class_name: 'HeaderActionParameters',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: '#Microsoft.Azure.Cdn.Models.DeliveryRuleHeaderActionParameters',
                type: {
                  name: 'String'
                }
              },
              header_action: {
                client_side_validation: true,
                required: true,
                serialized_name: 'headerAction',
                type: {
                  name: 'String'
                }
              },
              header_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'headerName',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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