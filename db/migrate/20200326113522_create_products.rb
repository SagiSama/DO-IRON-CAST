class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, limit: 256, null: false
      t.text :note
      t.decimal :price, precision: 64, scale: 4, default: '0.0', null: false
      t.string :image_for_zoom, limit: 256, null: true
      t.string :image_for_form, limit: 256, null: true
      t.integer :status, default: 0, limit: 1, null: false
      t.timestamps
    end
  end
end
