class AddSekolahIdToCrudLists < ActiveRecord::Migration[7.1]
  def change
    add_column :crud_lists, :sekolah_id, :integer
  end
end
