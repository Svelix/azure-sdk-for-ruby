# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_11_27_preview
  module Models
    #
    # Information about a container with data for a given resource.
    #
    class DataContainer

      include MsRestAzure

      # @return [WorkspaceInfo] Log Analytics workspace information.
      attr_accessor :workspace


      #
      # Mapper for DataContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataContainer',
          type: {
            name: 'Composite',
            class_name: 'DataContainer',
            model_properties: {
              workspace: {
                client_side_validation: true,
                required: true,
                serialized_name: 'workspace',
                type: {
                  name: 'Composite',
                  class_name: 'WorkspaceInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end