# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # The base class for the backup item. Workload-specific backup items are
    # derived from this class.
    #
    class WorkloadProtectableItemResource < Resource

      include MsRestAzure

      # @return [WorkloadProtectableItem]
      attr_accessor :properties


      #
      # Mapper for WorkloadProtectableItemResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkloadProtectableItemResource',
          type: {
            name: 'Composite',
            class_name: 'WorkloadProtectableItemResource',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'protectableItemType',
                  uber_parent: 'WorkloadProtectableItem',
                  class_name: 'WorkloadProtectableItem'
                }
              }
            }
          }
        }
      end
    end
  end
end
