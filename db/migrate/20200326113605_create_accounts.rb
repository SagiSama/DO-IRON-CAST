class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name, limit: 256, null: false
      t.string :email, limit: 256, null: false
      t.string :encrypted_password, limit: 256, default: '', null: false
      t.timestamps
    end
  end
end
