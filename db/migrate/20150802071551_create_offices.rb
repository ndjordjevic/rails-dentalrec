class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.string :country
      t.string :phone
      t.references :dentist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
