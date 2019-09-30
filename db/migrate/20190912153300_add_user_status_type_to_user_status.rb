class AddUserStatusTypeToUserStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :user_statuses, :user_status_type, :integer
  end
end
