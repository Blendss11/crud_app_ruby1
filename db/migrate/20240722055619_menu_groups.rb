class MenuGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :menugroups do |t|
      t.string :soft
      t.string :name
      t.timestamps
    end
  end
end
