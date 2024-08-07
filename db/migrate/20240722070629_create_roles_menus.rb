class CreateRolesMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :roles_menus do |t|
      t.references :menu, foreign_key: true, index: true
      t.references :role, foreign_key: true, index: true
      t.timestamps
    end
  end
end
