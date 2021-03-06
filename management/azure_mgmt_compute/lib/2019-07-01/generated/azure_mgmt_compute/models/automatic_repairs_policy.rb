# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # Specifies the configuration parameters for automatic repairs on the
    # virtual machine scale set.
    #
    class AutomaticRepairsPolicy

      include MsRestAzure

      # @return [Boolean] Specifies whether automatic repairs should be enabled
      # on the virtual machine scale set. The default value is false.
      attr_accessor :enabled

      # @return [String] The amount of time for which automatic repairs are
      # suspended due to a state change on VM. The grace time starts after the
      # state change has completed. This helps avoid premature or accidental
      # repairs. The time duration should be specified in ISO 8601 format. The
      # default value is 5 minutes (PT5M).
      attr_accessor :grace_period

      # @return [Integer] The percentage (capacity of scaleset) of virtual
      # machines that will be simultaneously repaired. The default value is
      # 20%.
      attr_accessor :max_instance_repairs_percent


      #
      # Mapper for AutomaticRepairsPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutomaticRepairsPolicy',
          type: {
            name: 'Composite',
            class_name: 'AutomaticRepairsPolicy',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              grace_period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'gracePeriod',
                type: {
                  name: 'String'
                }
              },
              max_instance_repairs_percent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxInstanceRepairsPercent',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
