# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a virtual machine scale set network profile.
    #
    class VirtualMachineScaleSetNetworkProfile

      include MsRestAzure

      # @return [Array<VirtualMachineScaleSetNetworkConfiguration>] the list of
      # network configurations.
      attr_accessor :network_interface_configurations


      #
      # Mapper for VirtualMachineScaleSetNetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetNetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetNetworkProfile',
            model_properties: {
              network_interface_configurations: {
                required: false,
                serialized_name: 'networkInterfaceConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetNetworkConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetNetworkConfiguration'
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