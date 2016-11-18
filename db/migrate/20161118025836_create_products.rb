class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.decimal :price
      t.integer :stock_quantity
      t.decimal :weight
      t.decimal :size_x
      t.decimal :size_y
      t.decimal :size_z
      t.boolean :deliverable
      t.references :package, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
