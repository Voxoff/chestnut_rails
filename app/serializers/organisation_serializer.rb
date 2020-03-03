class OrganisationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :tracker
end
