UserStatuses::Mutations::Create = GraphQL::Field.define do
  description 'Creates a UserStatus'
  type UserStatuses::Type

  argument :user_status, !UserStatuses::Mutations::InputType

  resolve ApplicationService.call(:user_status, :create)
end
