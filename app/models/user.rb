class User < ApplicationRecord

  has_many :user_statuses
  has_many :websocket_connections
end
