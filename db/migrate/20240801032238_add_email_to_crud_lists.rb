class AddEmailToCrudLists < ActiveRecord::Migration[7.1]
  def change
    add_column :crud_lists, :email, :string
  end
end
