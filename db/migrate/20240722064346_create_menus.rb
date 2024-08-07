class CreateMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :menus do |t|
      t.string :sort
      t.string :name
      t.string :code
      t.boolean  :is_crud, default: false
      t.references :menugroup, foreign_key: true, index: true
      t.timestamps
    end
  end
end
