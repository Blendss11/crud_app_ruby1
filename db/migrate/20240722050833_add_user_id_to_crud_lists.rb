class AddUserIdToCrudLists < ActiveRecord::Migration[7.1]
  def change
    add_column :crud_lists, :user_id, :integer
  end
end
