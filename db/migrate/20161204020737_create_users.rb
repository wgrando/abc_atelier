class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username
      t.string :password
      t.string :address
      t.string :city
      t.string :email
      t.string :phone
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
