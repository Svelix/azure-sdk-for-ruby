# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Base class for validate operation request.
    #
    class ValidateOperationRequest

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ValidateIaasVMRestoreOperationRequest"] = "ValidateIaasVMRestoreOperationRequest"
      @@discriminatorMap["ValidateRestoreOperationRequest"] = "ValidateRestoreOperationRequest"

      def initialize
        @objectType = "ValidateOperationRequest"
      end

      attr_accessor :objectType


      #
      # Mapper for ValidateOperationRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ValidateOperationRequest',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'ValidateOperationRequest',
            class_name: 'ValidateOperationRequest',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
