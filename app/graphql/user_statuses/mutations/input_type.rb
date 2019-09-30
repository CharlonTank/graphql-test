UserStatuses::Mutations::InputType = GraphQL::InputObjectType.define do
  name 'UserStatusInputType'
  description 'Properties for updating a UserStatus'

  argument :user_id, types.String

end
