class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :symptoms

      t.timestamps null: false
    end
  end
end
