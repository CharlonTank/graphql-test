UserStatuses::Mutations::BulkUpdate = GraphQL::Field.define do
  description 'Updates some UserStatuses'
  type types[UserStatuses::Type]

  argument :user_status, !types[UserStatuses::Mutations::InputType]

  resolve ApplicationService.call(:user_status, :bulk_update)
end
