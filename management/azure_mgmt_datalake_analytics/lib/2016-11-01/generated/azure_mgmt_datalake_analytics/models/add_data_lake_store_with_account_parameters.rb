# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  module Models
    #
    # The parameters used to add a new Data Lake Store account while creating a
    # new Data Lake Analytics account.
    #
    class AddDataLakeStoreWithAccountParameters

      include MsRestAzure

      # @return [String] The unique name of the Data Lake Store account to add.
      attr_accessor :name

      # @return [String] The optional suffix for the Data Lake Store account.
      attr_accessor :suffix


      #
      # Mapper for AddDataLakeStoreWithAccountParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AddDataLakeStoreWithAccountParameters',
          type: {
            name: 'Composite',
            class_name: 'AddDataLakeStoreWithAccountParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              suffix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.suffix',
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