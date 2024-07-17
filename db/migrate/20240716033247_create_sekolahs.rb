class CreateSekolahs < ActiveRecord::Migration[7.1]
  def change
    create_table :sekolahs do |t|
      t.string :title
      t.string :jurusan
      t.text :alamat

      t.timestamps
    end
  end
end
