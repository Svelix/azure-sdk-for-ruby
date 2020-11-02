# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Describes threat kill chain phase entity
    #
    class ThreatIntelligenceKillChainPhase

      include MsRestAzure

      # @return [String] Kill chainName name
      attr_accessor :kill_chain_name

      # @return [Integer] Phase name
      attr_accessor :phase_name


      #
      # Mapper for ThreatIntelligenceKillChainPhase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ThreatIntelligenceKillChainPhase',
          type: {
            name: 'Composite',
            class_name: 'ThreatIntelligenceKillChainPhase',
            model_properties: {
              kill_chain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'killChainName',
                type: {
                  name: 'String'
                }
              },
              phase_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'phaseName',
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
