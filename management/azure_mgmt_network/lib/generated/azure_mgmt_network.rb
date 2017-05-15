# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_network/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Network
  autoload :ApplicationGateways,                                'generated/azure_mgmt_network/application_gateways.rb'
  autoload :ExpressRouteCircuitAuthorizations,                  'generated/azure_mgmt_network/express_route_circuit_authorizations.rb'
  autoload :ExpressRouteCircuitPeerings,                        'generated/azure_mgmt_network/express_route_circuit_peerings.rb'
  autoload :ExpressRouteCircuits,                               'generated/azure_mgmt_network/express_route_circuits.rb'
  autoload :ExpressRouteServiceProviders,                       'generated/azure_mgmt_network/express_route_service_providers.rb'
  autoload :LoadBalancers,                                      'generated/azure_mgmt_network/load_balancers.rb'
  autoload :NetworkInterfaces,                                  'generated/azure_mgmt_network/network_interfaces.rb'
  autoload :NetworkSecurityGroups,                              'generated/azure_mgmt_network/network_security_groups.rb'
  autoload :SecurityRules,                                      'generated/azure_mgmt_network/security_rules.rb'
  autoload :NetworkWatchers,                                    'generated/azure_mgmt_network/network_watchers.rb'
  autoload :PacketCaptures,                                     'generated/azure_mgmt_network/packet_captures.rb'
  autoload :PublicIPAddresses,                                  'generated/azure_mgmt_network/public_ipaddresses.rb'
  autoload :RouteFilters,                                       'generated/azure_mgmt_network/route_filters.rb'
  autoload :RouteFilterRules,                                   'generated/azure_mgmt_network/route_filter_rules.rb'
  autoload :RouteTables,                                        'generated/azure_mgmt_network/route_tables.rb'
  autoload :Routes,                                             'generated/azure_mgmt_network/routes.rb'
  autoload :BgpServiceCommunities,                              'generated/azure_mgmt_network/bgp_service_communities.rb'
  autoload :Usages,                                             'generated/azure_mgmt_network/usages.rb'
  autoload :VirtualNetworks,                                    'generated/azure_mgmt_network/virtual_networks.rb'
  autoload :Subnets,                                            'generated/azure_mgmt_network/subnets.rb'
  autoload :VirtualNetworkPeerings,                             'generated/azure_mgmt_network/virtual_network_peerings.rb'
  autoload :VirtualNetworkGateways,                             'generated/azure_mgmt_network/virtual_network_gateways.rb'
  autoload :VirtualNetworkGatewayConnections,                   'generated/azure_mgmt_network/virtual_network_gateway_connections.rb'
  autoload :LocalNetworkGateways,                               'generated/azure_mgmt_network/local_network_gateways.rb'
  autoload :NetworkManagementClient,                            'generated/azure_mgmt_network/network_management_client.rb'

  module Models
    autoload :EffectiveRouteListResult,                           'generated/azure_mgmt_network/models/effective_route_list_result.rb'
    autoload :SecurityRuleListResult,                             'generated/azure_mgmt_network/models/security_rule_list_result.rb'
    autoload :ExpressRouteCircuitsRoutesTableListResult,          'generated/azure_mgmt_network/models/express_route_circuits_routes_table_list_result.rb'
    autoload :ExpressRouteCircuitRoutesTableSummary,              'generated/azure_mgmt_network/models/express_route_circuit_routes_table_summary.rb'
    autoload :LocalNetworkGatewayListResult,                      'generated/azure_mgmt_network/models/local_network_gateway_list_result.rb'
    autoload :ExpressRouteCircuitsRoutesTableSummaryListResult,   'generated/azure_mgmt_network/models/express_route_circuits_routes_table_summary_list_result.rb'
    autoload :ConnectionResetSharedKey,                           'generated/azure_mgmt_network/models/connection_reset_shared_key.rb'
    autoload :ExpressRouteCircuitListResult,                      'generated/azure_mgmt_network/models/express_route_circuit_list_result.rb'
    autoload :PublicIPAddressDnsSettings,                         'generated/azure_mgmt_network/models/public_ipaddress_dns_settings.rb'
    autoload :ExpressRouteServiceProviderBandwidthsOffered,       'generated/azure_mgmt_network/models/express_route_service_provider_bandwidths_offered.rb'
    autoload :TunnelConnectionHealth,                             'generated/azure_mgmt_network/models/tunnel_connection_health.rb'
    autoload :RouteFilterRuleListResult,                          'generated/azure_mgmt_network/models/route_filter_rule_list_result.rb'
    autoload :BgpPeerStatusListResult,                            'generated/azure_mgmt_network/models/bgp_peer_status_list_result.rb'
    autoload :ExpressRouteServiceProviderListResult,              'generated/azure_mgmt_network/models/express_route_service_provider_list_result.rb'
    autoload :ApplicationGatewayBackendAddress,                   'generated/azure_mgmt_network/models/application_gateway_backend_address.rb'
    autoload :RouteFilterListResult,                              'generated/azure_mgmt_network/models/route_filter_list_result.rb'
    autoload :ApplicationGatewayConnectionDraining,               'generated/azure_mgmt_network/models/application_gateway_connection_draining.rb'
    autoload :PublicIPAddressListResult,                          'generated/azure_mgmt_network/models/public_ipaddress_list_result.rb'
    autoload :ApplicationGatewayBackendHealthServer,              'generated/azure_mgmt_network/models/application_gateway_backend_health_server.rb'
    autoload :ConnectivityInformation,                            'generated/azure_mgmt_network/models/connectivity_information.rb'
    autoload :ApplicationGatewayBackendHealthPool,                'generated/azure_mgmt_network/models/application_gateway_backend_health_pool.rb'
    autoload :ConnectivityHop,                                    'generated/azure_mgmt_network/models/connectivity_hop.rb'
    autoload :ApplicationGatewaySku,                              'generated/azure_mgmt_network/models/application_gateway_sku.rb'
    autoload :ConnectivityIssue,                                  'generated/azure_mgmt_network/models/connectivity_issue.rb'
    autoload :BgpPeerStatus,                                      'generated/azure_mgmt_network/models/bgp_peer_status.rb'
    autoload :ConnectivityParameters,                             'generated/azure_mgmt_network/models/connectivity_parameters.rb'
    autoload :VpnClientConfiguration,                             'generated/azure_mgmt_network/models/vpn_client_configuration.rb'
    autoload :LoadBalancerListResult,                             'generated/azure_mgmt_network/models/load_balancer_list_result.rb'
    autoload :IPAddressAvailabilityResult,                        'generated/azure_mgmt_network/models/ipaddress_availability_result.rb'
    autoload :ErrorDetails,                                       'generated/azure_mgmt_network/models/error_details.rb'
    autoload :DhcpOptions,                                        'generated/azure_mgmt_network/models/dhcp_options.rb'
    autoload :Error,                                              'generated/azure_mgmt_network/models/error.rb'
    autoload :VirtualNetworkPeeringListResult,                    'generated/azure_mgmt_network/models/virtual_network_peering_list_result.rb'
    autoload :AzureAsyncOperationResult,                          'generated/azure_mgmt_network/models/azure_async_operation_result.rb'
    autoload :ApplicationGatewayFirewallDisabledRuleGroup,        'generated/azure_mgmt_network/models/application_gateway_firewall_disabled_rule_group.rb'
    autoload :NetworkInterfaceListResult,                         'generated/azure_mgmt_network/models/network_interface_list_result.rb'
    autoload :UsagesListResult,                                   'generated/azure_mgmt_network/models/usages_list_result.rb'
    autoload :EffectiveNetworkSecurityGroupAssociation,           'generated/azure_mgmt_network/models/effective_network_security_group_association.rb'
    autoload :ApplicationGatewayFirewallRule,                     'generated/azure_mgmt_network/models/application_gateway_firewall_rule.rb'
    autoload :EffectiveNetworkSecurityRule,                       'generated/azure_mgmt_network/models/effective_network_security_rule.rb'
    autoload :Usage,                                              'generated/azure_mgmt_network/models/usage.rb'
    autoload :EffectiveNetworkSecurityGroup,                      'generated/azure_mgmt_network/models/effective_network_security_group.rb'
    autoload :EffectiveNetworkSecurityGroupListResult,            'generated/azure_mgmt_network/models/effective_network_security_group_list_result.rb'
    autoload :UsageName,                                          'generated/azure_mgmt_network/models/usage_name.rb'
    autoload :EffectiveRoute,                                     'generated/azure_mgmt_network/models/effective_route.rb'
    autoload :ExpressRouteCircuitPeeringConfig,                   'generated/azure_mgmt_network/models/express_route_circuit_peering_config.rb'
    autoload :ExpressRouteCircuitStats,                           'generated/azure_mgmt_network/models/express_route_circuit_stats.rb'
    autoload :FlowLogInformation,                                 'generated/azure_mgmt_network/models/flow_log_information.rb'
    autoload :BGPCommunity,                                       'generated/azure_mgmt_network/models/bgpcommunity.rb'
    autoload :ConnectivityDestination,                            'generated/azure_mgmt_network/models/connectivity_destination.rb'
    autoload :ExpressRouteCircuitPeeringListResult,               'generated/azure_mgmt_network/models/express_route_circuit_peering_list_result.rb'
    autoload :NetworkSecurityGroupListResult,                     'generated/azure_mgmt_network/models/network_security_group_list_result.rb'
    autoload :ExpressRouteCircuitServiceProviderProperties,       'generated/azure_mgmt_network/models/express_route_circuit_service_provider_properties.rb'
    autoload :ConnectivitySource,                                 'generated/azure_mgmt_network/models/connectivity_source.rb'
    autoload :ExpressRouteCircuitArpTable,                        'generated/azure_mgmt_network/models/express_route_circuit_arp_table.rb'
    autoload :NetworkWatcherListResult,                           'generated/azure_mgmt_network/models/network_watcher_list_result.rb'
    autoload :ExpressRouteCircuitRoutesTable,                     'generated/azure_mgmt_network/models/express_route_circuit_routes_table.rb'
    autoload :TopologyParameters,                                 'generated/azure_mgmt_network/models/topology_parameters.rb'
    autoload :ConnectionSharedKey,                                'generated/azure_mgmt_network/models/connection_shared_key.rb'
    autoload :TopologyAssociation,                                'generated/azure_mgmt_network/models/topology_association.rb'
    autoload :IpsecPolicy,                                        'generated/azure_mgmt_network/models/ipsec_policy.rb'
    autoload :TopologyResource,                                   'generated/azure_mgmt_network/models/topology_resource.rb'
    autoload :VirtualNetworkGatewayListResult,                    'generated/azure_mgmt_network/models/virtual_network_gateway_list_result.rb'
    autoload :Topology,                                           'generated/azure_mgmt_network/models/topology.rb'
    autoload :GatewayRoute,                                       'generated/azure_mgmt_network/models/gateway_route.rb'
    autoload :VerificationIPFlowParameters,                       'generated/azure_mgmt_network/models/verification_ipflow_parameters.rb'
    autoload :ApplicationGatewayBackendHealth,                    'generated/azure_mgmt_network/models/application_gateway_backend_health.rb'
    autoload :VerificationIPFlowResult,                           'generated/azure_mgmt_network/models/verification_ipflow_result.rb'
    autoload :BgpSettings,                                        'generated/azure_mgmt_network/models/bgp_settings.rb'
    autoload :NextHopParameters,                                  'generated/azure_mgmt_network/models/next_hop_parameters.rb'
    autoload :VirtualNetworkListResult,                           'generated/azure_mgmt_network/models/virtual_network_list_result.rb'
    autoload :NextHopResult,                                      'generated/azure_mgmt_network/models/next_hop_result.rb'
    autoload :SubnetListResult,                                   'generated/azure_mgmt_network/models/subnet_list_result.rb'
    autoload :SecurityGroupViewParameters,                        'generated/azure_mgmt_network/models/security_group_view_parameters.rb'
    autoload :ApplicationGatewayListResult,                       'generated/azure_mgmt_network/models/application_gateway_list_result.rb'
    autoload :NetworkInterfaceAssociation,                        'generated/azure_mgmt_network/models/network_interface_association.rb'
    autoload :ApplicationGatewayAvailableWafRuleSetsResult,       'generated/azure_mgmt_network/models/application_gateway_available_waf_rule_sets_result.rb'
    autoload :SubnetAssociation,                                  'generated/azure_mgmt_network/models/subnet_association.rb'
    autoload :AuthorizationListResult,                            'generated/azure_mgmt_network/models/authorization_list_result.rb'
    autoload :SecurityRuleAssociations,                           'generated/azure_mgmt_network/models/security_rule_associations.rb'
    autoload :RouteListResult,                                    'generated/azure_mgmt_network/models/route_list_result.rb'
    autoload :SecurityGroupNetworkInterface,                      'generated/azure_mgmt_network/models/security_group_network_interface.rb'
    autoload :RouteTableListResult,                               'generated/azure_mgmt_network/models/route_table_list_result.rb'
    autoload :SecurityGroupViewResult,                            'generated/azure_mgmt_network/models/security_group_view_result.rb'
    autoload :NetworkInterfaceDnsSettings,                        'generated/azure_mgmt_network/models/network_interface_dns_settings.rb'
    autoload :PacketCaptureStorageLocation,                       'generated/azure_mgmt_network/models/packet_capture_storage_location.rb'
    autoload :GatewayRouteListResult,                             'generated/azure_mgmt_network/models/gateway_route_list_result.rb'
    autoload :PacketCaptureFilter,                                'generated/azure_mgmt_network/models/packet_capture_filter.rb'
    autoload :ApplicationGatewayBackendHealthHttpSettings,        'generated/azure_mgmt_network/models/application_gateway_backend_health_http_settings.rb'
    autoload :PacketCaptureParameters,                            'generated/azure_mgmt_network/models/packet_capture_parameters.rb'
    autoload :VirtualNetworkGatewaySku,                           'generated/azure_mgmt_network/models/virtual_network_gateway_sku.rb'
    autoload :PacketCapture,                                      'generated/azure_mgmt_network/models/packet_capture.rb'
    autoload :ApplicationGatewayWebApplicationFirewallConfiguration, 'generated/azure_mgmt_network/models/application_gateway_web_application_firewall_configuration.rb'
    autoload :PacketCaptureResult,                                'generated/azure_mgmt_network/models/packet_capture_result.rb'
    autoload :DnsNameAvailabilityResult,                          'generated/azure_mgmt_network/models/dns_name_availability_result.rb'
    autoload :PacketCaptureListResult,                            'generated/azure_mgmt_network/models/packet_capture_list_result.rb'
    autoload :ExpressRouteCircuitSku,                             'generated/azure_mgmt_network/models/express_route_circuit_sku.rb'
    autoload :PacketCaptureQueryStatusResult,                     'generated/azure_mgmt_network/models/packet_capture_query_status_result.rb'
    autoload :VirtualNetworkGatewayConnectionListResult,          'generated/azure_mgmt_network/models/virtual_network_gateway_connection_list_result.rb'
    autoload :TroubleshootingParameters,                          'generated/azure_mgmt_network/models/troubleshooting_parameters.rb'
    autoload :ApplicationGatewaySslPolicy,                        'generated/azure_mgmt_network/models/application_gateway_ssl_policy.rb'
    autoload :QueryTroubleshootingParameters,                     'generated/azure_mgmt_network/models/query_troubleshooting_parameters.rb'
    autoload :ApplicationGatewayFirewallRuleGroup,                'generated/azure_mgmt_network/models/application_gateway_firewall_rule_group.rb'
    autoload :TroubleshootingRecommendedActions,                  'generated/azure_mgmt_network/models/troubleshooting_recommended_actions.rb'
    autoload :ExpressRouteCircuitsArpTableListResult,             'generated/azure_mgmt_network/models/express_route_circuits_arp_table_list_result.rb'
    autoload :TroubleshootingDetails,                             'generated/azure_mgmt_network/models/troubleshooting_details.rb'
    autoload :AddressSpace,                                       'generated/azure_mgmt_network/models/address_space.rb'
    autoload :TroubleshootingResult,                              'generated/azure_mgmt_network/models/troubleshooting_result.rb'
    autoload :VpnClientParameters,                                'generated/azure_mgmt_network/models/vpn_client_parameters.rb'
    autoload :RetentionPolicyParameters,                          'generated/azure_mgmt_network/models/retention_policy_parameters.rb'
    autoload :BgpServiceCommunityListResult,                      'generated/azure_mgmt_network/models/bgp_service_community_list_result.rb'
    autoload :FlowLogStatusParameters,                            'generated/azure_mgmt_network/models/flow_log_status_parameters.rb'
    autoload :BackendAddressPool,                                 'generated/azure_mgmt_network/models/backend_address_pool.rb'
    autoload :InboundNatRule,                                     'generated/azure_mgmt_network/models/inbound_nat_rule.rb'
    autoload :SecurityRule,                                       'generated/azure_mgmt_network/models/security_rule.rb'
    autoload :NetworkInterface,                                   'generated/azure_mgmt_network/models/network_interface.rb'
    autoload :NetworkSecurityGroup,                               'generated/azure_mgmt_network/models/network_security_group.rb'
    autoload :Route,                                              'generated/azure_mgmt_network/models/route.rb'
    autoload :RouteTable,                                         'generated/azure_mgmt_network/models/route_table.rb'
    autoload :PublicIPAddress,                                    'generated/azure_mgmt_network/models/public_ipaddress.rb'
    autoload :IPConfiguration,                                    'generated/azure_mgmt_network/models/ipconfiguration.rb'
    autoload :ResourceNavigationLink,                             'generated/azure_mgmt_network/models/resource_navigation_link.rb'
    autoload :Subnet,                                             'generated/azure_mgmt_network/models/subnet.rb'
    autoload :NetworkInterfaceIPConfiguration,                    'generated/azure_mgmt_network/models/network_interface_ipconfiguration.rb'
    autoload :ApplicationGatewayBackendAddressPool,               'generated/azure_mgmt_network/models/application_gateway_backend_address_pool.rb'
    autoload :ApplicationGatewayBackendHttpSettings,              'generated/azure_mgmt_network/models/application_gateway_backend_http_settings.rb'
    autoload :ApplicationGatewayIPConfiguration,                  'generated/azure_mgmt_network/models/application_gateway_ipconfiguration.rb'
    autoload :ApplicationGatewayAuthenticationCertificate,        'generated/azure_mgmt_network/models/application_gateway_authentication_certificate.rb'
    autoload :ApplicationGatewaySslCertificate,                   'generated/azure_mgmt_network/models/application_gateway_ssl_certificate.rb'
    autoload :ApplicationGatewayFrontendIPConfiguration,          'generated/azure_mgmt_network/models/application_gateway_frontend_ipconfiguration.rb'
    autoload :ApplicationGatewayFrontendPort,                     'generated/azure_mgmt_network/models/application_gateway_frontend_port.rb'
    autoload :ApplicationGatewayHttpListener,                     'generated/azure_mgmt_network/models/application_gateway_http_listener.rb'
    autoload :ApplicationGatewayPathRule,                         'generated/azure_mgmt_network/models/application_gateway_path_rule.rb'
    autoload :ApplicationGatewayProbe,                            'generated/azure_mgmt_network/models/application_gateway_probe.rb'
    autoload :ApplicationGatewayRequestRoutingRule,               'generated/azure_mgmt_network/models/application_gateway_request_routing_rule.rb'
    autoload :ApplicationGatewayUrlPathMap,                       'generated/azure_mgmt_network/models/application_gateway_url_path_map.rb'
    autoload :ApplicationGateway,                                 'generated/azure_mgmt_network/models/application_gateway.rb'
    autoload :ApplicationGatewayFirewallRuleSet,                  'generated/azure_mgmt_network/models/application_gateway_firewall_rule_set.rb'
    autoload :ExpressRouteCircuitAuthorization,                   'generated/azure_mgmt_network/models/express_route_circuit_authorization.rb'
    autoload :RouteFilterRule,                                    'generated/azure_mgmt_network/models/route_filter_rule.rb'
    autoload :ExpressRouteCircuitPeering,                         'generated/azure_mgmt_network/models/express_route_circuit_peering.rb'
    autoload :RouteFilter,                                        'generated/azure_mgmt_network/models/route_filter.rb'
    autoload :ExpressRouteCircuit,                                'generated/azure_mgmt_network/models/express_route_circuit.rb'
    autoload :ExpressRouteServiceProvider,                        'generated/azure_mgmt_network/models/express_route_service_provider.rb'
    autoload :FrontendIPConfiguration,                            'generated/azure_mgmt_network/models/frontend_ipconfiguration.rb'
    autoload :LoadBalancingRule,                                  'generated/azure_mgmt_network/models/load_balancing_rule.rb'
    autoload :Probe,                                              'generated/azure_mgmt_network/models/probe.rb'
    autoload :InboundNatPool,                                     'generated/azure_mgmt_network/models/inbound_nat_pool.rb'
    autoload :OutboundNatRule,                                    'generated/azure_mgmt_network/models/outbound_nat_rule.rb'
    autoload :LoadBalancer,                                       'generated/azure_mgmt_network/models/load_balancer.rb'
    autoload :NetworkWatcher,                                     'generated/azure_mgmt_network/models/network_watcher.rb'
    autoload :PatchRouteFilterRule,                               'generated/azure_mgmt_network/models/patch_route_filter_rule.rb'
    autoload :PatchRouteFilter,                                   'generated/azure_mgmt_network/models/patch_route_filter.rb'
    autoload :BgpServiceCommunity,                                'generated/azure_mgmt_network/models/bgp_service_community.rb'
    autoload :VirtualNetworkPeering,                              'generated/azure_mgmt_network/models/virtual_network_peering.rb'
    autoload :VirtualNetwork,                                     'generated/azure_mgmt_network/models/virtual_network.rb'
    autoload :VirtualNetworkGatewayIPConfiguration,               'generated/azure_mgmt_network/models/virtual_network_gateway_ipconfiguration.rb'
    autoload :VpnClientRootCertificate,                           'generated/azure_mgmt_network/models/vpn_client_root_certificate.rb'
    autoload :VpnClientRevokedCertificate,                        'generated/azure_mgmt_network/models/vpn_client_revoked_certificate.rb'
    autoload :VirtualNetworkGateway,                              'generated/azure_mgmt_network/models/virtual_network_gateway.rb'
    autoload :LocalNetworkGateway,                                'generated/azure_mgmt_network/models/local_network_gateway.rb'
    autoload :VirtualNetworkGatewayConnection,                    'generated/azure_mgmt_network/models/virtual_network_gateway_connection.rb'
    autoload :TransportProtocol,                                  'generated/azure_mgmt_network/models/transport_protocol.rb'
    autoload :IPAllocationMethod,                                 'generated/azure_mgmt_network/models/ipallocation_method.rb'
    autoload :IPVersion,                                          'generated/azure_mgmt_network/models/ipversion.rb'
    autoload :SecurityRuleProtocol,                               'generated/azure_mgmt_network/models/security_rule_protocol.rb'
    autoload :SecurityRuleAccess,                                 'generated/azure_mgmt_network/models/security_rule_access.rb'
    autoload :SecurityRuleDirection,                              'generated/azure_mgmt_network/models/security_rule_direction.rb'
    autoload :RouteNextHopType,                                   'generated/azure_mgmt_network/models/route_next_hop_type.rb'
    autoload :ApplicationGatewayProtocol,                         'generated/azure_mgmt_network/models/application_gateway_protocol.rb'
    autoload :ApplicationGatewayCookieBasedAffinity,              'generated/azure_mgmt_network/models/application_gateway_cookie_based_affinity.rb'
    autoload :ApplicationGatewayBackendHealthServerHealth,        'generated/azure_mgmt_network/models/application_gateway_backend_health_server_health.rb'
    autoload :ApplicationGatewaySkuName,                          'generated/azure_mgmt_network/models/application_gateway_sku_name.rb'
    autoload :ApplicationGatewayTier,                             'generated/azure_mgmt_network/models/application_gateway_tier.rb'
    autoload :ApplicationGatewaySslProtocol,                      'generated/azure_mgmt_network/models/application_gateway_ssl_protocol.rb'
    autoload :ApplicationGatewayRequestRoutingRuleType,           'generated/azure_mgmt_network/models/application_gateway_request_routing_rule_type.rb'
    autoload :ApplicationGatewayOperationalState,                 'generated/azure_mgmt_network/models/application_gateway_operational_state.rb'
    autoload :ApplicationGatewayFirewallMode,                     'generated/azure_mgmt_network/models/application_gateway_firewall_mode.rb'
    autoload :AuthorizationUseStatus,                             'generated/azure_mgmt_network/models/authorization_use_status.rb'
    autoload :ExpressRouteCircuitPeeringAdvertisedPublicPrefixState, 'generated/azure_mgmt_network/models/express_route_circuit_peering_advertised_public_prefix_state.rb'
    autoload :ExpressRouteCircuitPeeringType,                     'generated/azure_mgmt_network/models/express_route_circuit_peering_type.rb'
    autoload :ExpressRouteCircuitPeeringState,                    'generated/azure_mgmt_network/models/express_route_circuit_peering_state.rb'
    autoload :Access,                                             'generated/azure_mgmt_network/models/access.rb'
    autoload :ExpressRouteCircuitSkuTier,                         'generated/azure_mgmt_network/models/express_route_circuit_sku_tier.rb'
    autoload :ExpressRouteCircuitSkuFamily,                       'generated/azure_mgmt_network/models/express_route_circuit_sku_family.rb'
    autoload :ServiceProviderProvisioningState,                   'generated/azure_mgmt_network/models/service_provider_provisioning_state.rb'
    autoload :LoadDistribution,                                   'generated/azure_mgmt_network/models/load_distribution.rb'
    autoload :ProbeProtocol,                                      'generated/azure_mgmt_network/models/probe_protocol.rb'
    autoload :NetworkOperationStatus,                             'generated/azure_mgmt_network/models/network_operation_status.rb'
    autoload :EffectiveRouteSource,                               'generated/azure_mgmt_network/models/effective_route_source.rb'
    autoload :EffectiveRouteState,                                'generated/azure_mgmt_network/models/effective_route_state.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_network/models/provisioning_state.rb'
    autoload :AssociationType,                                    'generated/azure_mgmt_network/models/association_type.rb'
    autoload :Direction,                                          'generated/azure_mgmt_network/models/direction.rb'
    autoload :Protocol,                                           'generated/azure_mgmt_network/models/protocol.rb'
    autoload :NextHopType,                                        'generated/azure_mgmt_network/models/next_hop_type.rb'
    autoload :PcProtocol,                                         'generated/azure_mgmt_network/models/pc_protocol.rb'
    autoload :PcStatus,                                           'generated/azure_mgmt_network/models/pc_status.rb'
    autoload :PcError,                                            'generated/azure_mgmt_network/models/pc_error.rb'
    autoload :Origin,                                             'generated/azure_mgmt_network/models/origin.rb'
    autoload :Severity,                                           'generated/azure_mgmt_network/models/severity.rb'
    autoload :IssueType,                                          'generated/azure_mgmt_network/models/issue_type.rb'
    autoload :ConnectionStatus,                                   'generated/azure_mgmt_network/models/connection_status.rb'
    autoload :VirtualNetworkPeeringState,                         'generated/azure_mgmt_network/models/virtual_network_peering_state.rb'
    autoload :VirtualNetworkGatewayType,                          'generated/azure_mgmt_network/models/virtual_network_gateway_type.rb'
    autoload :VpnType,                                            'generated/azure_mgmt_network/models/vpn_type.rb'
    autoload :VirtualNetworkGatewaySkuName,                       'generated/azure_mgmt_network/models/virtual_network_gateway_sku_name.rb'
    autoload :VirtualNetworkGatewaySkuTier,                       'generated/azure_mgmt_network/models/virtual_network_gateway_sku_tier.rb'
    autoload :BgpPeerState,                                       'generated/azure_mgmt_network/models/bgp_peer_state.rb'
    autoload :ProcessorArchitecture,                              'generated/azure_mgmt_network/models/processor_architecture.rb'
    autoload :VirtualNetworkGatewayConnectionStatus,              'generated/azure_mgmt_network/models/virtual_network_gateway_connection_status.rb'
    autoload :VirtualNetworkGatewayConnectionType,                'generated/azure_mgmt_network/models/virtual_network_gateway_connection_type.rb'
    autoload :IpsecEncryption,                                    'generated/azure_mgmt_network/models/ipsec_encryption.rb'
    autoload :IpsecIntegrity,                                     'generated/azure_mgmt_network/models/ipsec_integrity.rb'
    autoload :IkeEncryption,                                      'generated/azure_mgmt_network/models/ike_encryption.rb'
    autoload :IkeIntegrity,                                       'generated/azure_mgmt_network/models/ike_integrity.rb'
    autoload :DhGroup,                                            'generated/azure_mgmt_network/models/dh_group.rb'
    autoload :PfsGroup,                                           'generated/azure_mgmt_network/models/pfs_group.rb'
  end
end
