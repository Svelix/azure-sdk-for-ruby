# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # The geo-location context attached to the ip entity
    #
    class GeoLocation

      include MsRestAzure

      # @return [Integer] Autonomous System Number
      attr_accessor :asn

      # @return [String] City name
      attr_accessor :city

      # @return [String] The country code according to ISO 3166 format
      attr_accessor :country_code

      # @return [String] Country name according to ISO 3166 Alpha 2: the
      # lowercase of the English Short Name
      attr_accessor :country_name

      # @return [Float] The longitude of the identified location, expressed as
      # a floating point number with range of -180 to 180, with positive
      # numbers representing East and negative numbers representing West.
      # Latitude and longitude are derived from the city or postal code.
      attr_accessor :latitude

      # @return [Float] The latitude of the identified location, expressed as a
      # floating point number with range of - 90 to 90, with positive numbers
      # representing North and negative numbers representing South. Latitude
      # and longitude are derived from the city or postal code.
      attr_accessor :longitude

      # @return [String] State name
      attr_accessor :state


      #
      # Mapper for GeoLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GeoLocation',
          type: {
            name: 'Composite',
            class_name: 'GeoLocation',
            model_properties: {
              asn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'asn',
                type: {
                  name: 'Number'
                }
              },
              city: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'city',
                type: {
                  name: 'String'
                }
              },
              country_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'countryCode',
                type: {
                  name: 'String'
                }
              },
              country_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'countryName',
                type: {
                  name: 'String'
                }
              },
              latitude: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'latitude',
                type: {
                  name: 'Double'
                }
              },
              longitude: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'longitude',
                type: {
                  name: 'Double'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
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
