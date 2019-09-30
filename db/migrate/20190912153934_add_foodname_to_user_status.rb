class AddFoodnameToUserStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :user_statuses, :food_name, :string
  end
end
