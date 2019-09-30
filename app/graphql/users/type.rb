Users::Type = GraphQL::ObjectType.define do
  name 'User'
  field :id, !types.String
  field :created_at, types.String
  field :updated_at, types.String
  field :first_name, types.String
  field :last_name, types.String
  field :email, types.String
end
