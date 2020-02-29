class UserSerializer < ActiveModel::Serializer
  attributes :email, :avatar, :first_name, :last_name
end
