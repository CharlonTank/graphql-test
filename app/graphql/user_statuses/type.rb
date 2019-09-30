module Sleepings
  class Service < ApplicationService

  end
end

module Eatings
  class Service < ApplicationService

  end
end

Sleepings::Type = GraphQL::ObjectType.define do
  name 'Sleeping'
end

Eatings::Type = GraphQL::ObjectType.define do
  name 'Eating'
  field :foodname, !types.String
end

UserStatuses::Type = GraphQL::UnionType.define do
  name 'UserStatus'
  possible_types [Sleepings::Type, Eatings::Type]
  resolve_type -> (object, context) {
    if object.eating?
      Eatings::Type
    else
      Sleepings::Type
    end
  }
end