# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
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
require '2018-06-01/generated/azure_mgmt_security/module_definition'
require 'ms_rest_azure'

module Azure::Security::Mgmt::V2018_06_01
  autoload :Pricings,                                           '2018-06-01/generated/azure_mgmt_security/pricings.rb'
  autoload :SecurityCenter,                                     '2018-06-01/generated/azure_mgmt_security/security_center.rb'

  module Models
    autoload :AzureTrackedResourceLocation,                       '2018-06-01/generated/azure_mgmt_security/models/azure_tracked_resource_location.rb'
    autoload :Kind,                                               '2018-06-01/generated/azure_mgmt_security/models/kind.rb'
    autoload :PricingList,                                        '2018-06-01/generated/azure_mgmt_security/models/pricing_list.rb'
    autoload :ETag,                                               '2018-06-01/generated/azure_mgmt_security/models/etag.rb'
    autoload :TrackedResource,                                    '2018-06-01/generated/azure_mgmt_security/models/tracked_resource.rb'
    autoload :Tags,                                               '2018-06-01/generated/azure_mgmt_security/models/tags.rb'
    autoload :Resource,                                           '2018-06-01/generated/azure_mgmt_security/models/resource.rb'
    autoload :Pricing,                                            '2018-06-01/generated/azure_mgmt_security/models/pricing.rb'
    autoload :AscLocation,                                        '2018-06-01/generated/azure_mgmt_security/models/asc_location.rb'
    autoload :PricingTier,                                        '2018-06-01/generated/azure_mgmt_security/models/pricing_tier.rb'
  end
end
