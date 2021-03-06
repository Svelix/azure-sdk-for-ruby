# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MixedReality::Mgmt::V2020_04_06_preview
  module Models
    #
    # Plan for the resource.
    #
    class Plan

      include MsRestAzure

      # @return [String] A user defined name of the 3rd Party Artifact that is
      # being procured.
      attr_accessor :name

      # @return [String] The publisher of the 3rd Party Artifact that is being
      # bought. E.g. NewRelic
      attr_accessor :publisher

      # @return [String] The 3rd Party artifact that is being procured. E.g.
      # NewRelic. Product maps to the OfferID specified for the artifact at the
      # time of Data Market onboarding.
      attr_accessor :product

      # @return [String] A publisher provided promotion code as provisioned in
      # Data Market for the said product/artifact.
      attr_accessor :promotion_code

      # @return [String] The version of the desired product/artifact.
      attr_accessor :version


      #
      # Mapper for Plan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Plan',
          type: {
            name: 'Composite',
            class_name: 'Plan',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: true,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              product: {
                client_side_validation: true,
                required: true,
                serialized_name: 'product',
                type: {
                  name: 'String'
                }
              },
              promotion_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'promotionCode',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
