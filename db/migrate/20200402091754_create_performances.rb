class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.string :title, limit: 256, null: false
      t.text :subject
      t.string :period, limit: 256, null: false
      t.string :image_for_zoom, limit: 256, null: true
      t.string :image_for_form, limit: 256, null: true
      t.integer :status, default: 0, limit: 1, null: false
      t.timestamps
    end
  end
end
