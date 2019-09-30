WebsocketConnections::Type = GraphQL::ObjectType.define do
  name 'WebsocketConnection'
  field :id, !types.String
  field :created_at, types.String
  field :updated_at, types.String
  field :user_id, types.String
  field :user, Users::Type
  field :connection_identifier, types.String
end
