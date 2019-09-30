class CreateUserStatus < ActiveRecord::Migration[5.2]
  def change
    create_table :user_statuses, id: :uuid do |t|
      t.uuid :user_id
      t.timestamps
    end
  end
end
