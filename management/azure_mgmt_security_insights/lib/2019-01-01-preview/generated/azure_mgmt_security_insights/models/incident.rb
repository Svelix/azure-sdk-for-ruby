# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Represents an incident in Azure Security Insights.
    #
    class Incident < ResourceWithEtag

      include MsRestAzure

      # @return [IncidentAdditionalData] Additional data on the incident
      attr_accessor :additional_data

      # @return [IncidentClassification] The reason the incident was closed.
      # Possible values include: 'Undetermined', 'TruePositive',
      # 'BenignPositive', 'FalsePositive'
      attr_accessor :classification

      # @return [String] Describes the reason the incident was closed
      attr_accessor :classification_comment

      # @return [IncidentClassificationReason] The classification reason the
      # incident was closed with. Possible values include:
      # 'SuspiciousActivity', 'SuspiciousButExpected', 'IncorrectAlertLogic',
      # 'InaccurateData'
      attr_accessor :classification_reason

      # @return [DateTime] The time the incident was created
      attr_accessor :created_time_utc

      # @return [String] The description of the incident
      attr_accessor :description

      # @return [DateTime] The time of the first activity in the incident
      attr_accessor :first_activity_time_utc

      # @return [String] The deep-link url to the incident in Azure portal
      attr_accessor :incident_url

      # @return [Integer] A sequential number
      attr_accessor :incident_number

      # @return [Array<IncidentLabel>] List of labels relevant to this incident
      attr_accessor :labels

      # @return [DateTime] The time of the last activity in the incident
      attr_accessor :last_activity_time_utc

      # @return [DateTime] The last time the incident was updated
      attr_accessor :last_modified_time_utc

      # @return [IncidentOwnerInfo] Describes a user that the incident is
      # assigned to
      attr_accessor :owner

      # @return [Array<String>] List of resource ids of Analytic rules related
      # to the incident
      attr_accessor :related_analytic_rule_ids

      # @return [IncidentSeverity] The severity of the incident. Possible
      # values include: 'High', 'Medium', 'Low', 'Informational'
      attr_accessor :severity

      # @return [IncidentStatus] The status of the incident. Possible values
      # include: 'New', 'Active', 'Closed'
      attr_accessor :status

      # @return [String] The title of the incident
      attr_accessor :title


      #
      # Mapper for Incident class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Incident',
          type: {
            name: 'Composite',
            class_name: 'Incident',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              additional_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.additionalData',
                type: {
                  name: 'Composite',
                  class_name: 'IncidentAdditionalData'
                }
              },
              classification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.classification',
                type: {
                  name: 'String'
                }
              },
              classification_comment: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.classificationComment',
                type: {
                  name: 'String'
                }
              },
              classification_reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.classificationReason',
                type: {
                  name: 'String'
                }
              },
              created_time_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              first_activity_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.firstActivityTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              incident_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.incidentUrl',
                type: {
                  name: 'String'
                }
              },
              incident_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.incidentNumber',
                type: {
                  name: 'Number'
                }
              },
              labels: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.labels',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IncidentLabelElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IncidentLabel'
                      }
                  }
                }
              },
              last_activity_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastActivityTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              owner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.owner',
                type: {
                  name: 'Composite',
                  class_name: 'IncidentOwnerInfo'
                }
              },
              related_analytic_rule_ids: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.relatedAnalyticRuleIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              severity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.severity',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              title: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.title',
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
