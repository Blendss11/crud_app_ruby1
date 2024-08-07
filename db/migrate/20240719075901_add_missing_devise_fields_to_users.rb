class AddMissingDeviseFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    change_table :users do |t|
      # t.string   :reset_password_token
      # t.datetime :reset_password_sent_at
      # t.datetime :remember_created_at
      # tambahkan kolom lain jika diperlukan
    end

    # add_index :users, :reset_password_token, unique: true
    # tambahkan index lain jika diperlukan
  end
end
