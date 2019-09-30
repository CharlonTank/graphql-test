UserStatuses::Mutations::Update = GraphQL::Field.define do
  description 'Updates a UserStatus'
  type UserStatuses::Type

  argument :id, types.String
  argument :user_status, !UserStatuses::Mutations::InputType

  resolve ApplicationService.call(:user_status, :update)
end
