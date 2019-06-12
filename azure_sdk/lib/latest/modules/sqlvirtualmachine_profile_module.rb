# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_sqlvirtualmachine'

module Azure::Profiles::Latest
  module Sqlvirtualmachine
    module Mgmt
      Operations = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Operations
      AvailabilityGroupListeners = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::AvailabilityGroupListeners
      SqlVirtualMachineGroups = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::SqlVirtualMachineGroups
      SqlVirtualMachines = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::SqlVirtualMachines

      module Models
        ClusterManagerType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ClusterManagerType
        SqlWorkloadType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlWorkloadType
        DiskConfigurationType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::DiskConfigurationType
        FullBackupFrequencyType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::FullBackupFrequencyType
        ScaleType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ScaleType
        TrackedResource = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::TrackedResource
        IdentityType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::IdentityType
        ProxyResource = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ProxyResource
        DayOfWeek = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::DayOfWeek
        ResourceIdentity = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ResourceIdentity
        SqlVirtualMachineGroupListResult = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroupListResult
        LoadBalancerConfiguration = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::LoadBalancerConfiguration
        WsfcDomainCredentials = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::WsfcDomainCredentials
        PrivateIPAddress = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::PrivateIPAddress
        ServerConfigurationsManagementSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ServerConfigurationsManagementSettings
        AutoPatchingSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AutoPatchingSettings
        Resource = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::Resource
        SqlVirtualMachineListResult = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineListResult
        OperationDisplay = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationDisplay
        SqlVirtualMachineGroupUpdate = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroupUpdate
        AutoBackupSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AutoBackupSettings
        Operation = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::Operation
        OperationListResult = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationListResult
        SqlConnectivityUpdateSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlConnectivityUpdateSettings
        SqlVirtualMachineUpdate = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineUpdate
        KeyVaultCredentialSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::KeyVaultCredentialSettings
        WsfcDomainProfile = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::WsfcDomainProfile
        SqlStorageUpdateSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlStorageUpdateSettings
        SqlWorkloadTypeUpdateSettings = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlWorkloadTypeUpdateSettings
        AdditionalFeaturesServerConfigurations = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AdditionalFeaturesServerConfigurations
        AvailabilityGroupListener = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AvailabilityGroupListener
        AvailabilityGroupListenerListResult = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AvailabilityGroupListenerListResult
        SqlVirtualMachine = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachine
        SqlVmGroupImageSku = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVmGroupImageSku
        SqlVirtualMachineGroup = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroup
        ClusterConfiguration = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ClusterConfiguration
        SqlImageSku = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlImageSku
        OperationOrigin = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationOrigin
        SqlServerLicenseType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlServerLicenseType
        ConnectivityType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ConnectivityType
        BackupScheduleType = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::BackupScheduleType
      end

      class SqlvirtualmachineManagementClass
        attr_reader :operations, :availability_group_listeners, :sql_virtual_machine_groups, :sql_virtual_machines, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::SqlVirtualMachineManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @availability_group_listeners = @client_0.availability_group_listeners
          @sql_virtual_machine_groups = @client_0.sql_virtual_machine_groups
          @sql_virtual_machines = @client_0.sql_virtual_machines

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Sqlvirtualmachine/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def cluster_manager_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ClusterManagerType
          end
          def sql_workload_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlWorkloadType
          end
          def disk_configuration_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::DiskConfigurationType
          end
          def full_backup_frequency_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::FullBackupFrequencyType
          end
          def scale_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ScaleType
          end
          def tracked_resource
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::TrackedResource
          end
          def identity_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::IdentityType
          end
          def proxy_resource
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ProxyResource
          end
          def day_of_week
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::DayOfWeek
          end
          def resource_identity
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ResourceIdentity
          end
          def sql_virtual_machine_group_list_result
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroupListResult
          end
          def load_balancer_configuration
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::LoadBalancerConfiguration
          end
          def wsfc_domain_credentials
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::WsfcDomainCredentials
          end
          def private_ipaddress
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::PrivateIPAddress
          end
          def server_configurations_management_settings
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ServerConfigurationsManagementSettings
          end
          def auto_patching_settings
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AutoPatchingSettings
          end
          def resource
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::Resource
          end
          def sql_virtual_machine_list_result
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineListResult
          end
          def operation_display
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationDisplay
          end
          def sql_virtual_machine_group_update
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroupUpdate
          end
          def auto_backup_settings
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AutoBackupSettings
          end
          def operation
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::Operation
          end
          def operation_list_result
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationListResult
          end
          def sql_connectivity_update_settings
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlConnectivityUpdateSettings
          end
          def sql_virtual_machine_update
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineUpdate
          end
          def key_vault_credential_settings
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::KeyVaultCredentialSettings
          end
          def wsfc_domain_profile
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::WsfcDomainProfile
          end
          def sql_storage_update_settings
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlStorageUpdateSettings
          end
          def sql_workload_type_update_settings
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlWorkloadTypeUpdateSettings
          end
          def additional_features_server_configurations
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AdditionalFeaturesServerConfigurations
          end
          def availability_group_listener
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AvailabilityGroupListener
          end
          def availability_group_listener_list_result
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::AvailabilityGroupListenerListResult
          end
          def sql_virtual_machine
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachine
          end
          def sql_vm_group_image_sku
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVmGroupImageSku
          end
          def sql_virtual_machine_group
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlVirtualMachineGroup
          end
          def cluster_configuration
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ClusterConfiguration
          end
          def sql_image_sku
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlImageSku
          end
          def operation_origin
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::OperationOrigin
          end
          def sql_server_license_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::SqlServerLicenseType
          end
          def connectivity_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::ConnectivityType
          end
          def backup_schedule_type
            Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview::Models::BackupScheduleType
          end
        end
      end
    end
  end
end