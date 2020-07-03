# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_02_15
  module Models
    #
    # A principal assignment check name availability request.
    #
    class DatabasePrincipalAssignmentCheckNameRequest

      include MsRestAzure

      # @return [String] Principal Assignment resource name.
      attr_accessor :name

      # @return [String] The type of resource,
      # Microsoft.Kusto/clusters/databases/principalAssignments. Default value:
      # 'Microsoft.Kusto/clusters/databases/principalAssignments' .
      attr_accessor :type


      #
      # Mapper for DatabasePrincipalAssignmentCheckNameRequest class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabasePrincipalAssignmentCheckNameRequest',
          type: {
            name: 'Composite',
            class_name: 'DatabasePrincipalAssignmentCheckNameRequest',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.Kusto/clusters/databases/principalAssignments',
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