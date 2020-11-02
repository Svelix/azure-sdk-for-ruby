# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automanage::Mgmt::V2020_06_30_preview
  module Models
    #
    # The response of the list Account operation.
    #
    class AccountList

      include MsRestAzure

      # @return [Array<Account>] Result of the list Account operation.
      attr_accessor :value


      #
      # Mapper for AccountList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccountList',
          type: {
            name: 'Composite',
            class_name: 'AccountList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AccountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Account'
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