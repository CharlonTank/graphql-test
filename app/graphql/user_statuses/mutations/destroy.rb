UserStatuses::Mutations::Destroy = GraphQL::Field.define do
  description 'Destroys a UserStatus'
  type UserStatuses::Type

  argument :id, !types.String

  resolve ApplicationService.call(:user_status, :destroy)
end
