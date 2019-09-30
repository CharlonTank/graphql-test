UserStatuses::Mutations::BulkCreate = GraphQL::Field.define do
  description 'creates some UserStatuses'
  type types[UserStatuses::Type]

  argument :user_status, !types[UserStatuses::Mutations::InputType]

  resolve ApplicationService.call(:user_status, :bulk_create)
end
