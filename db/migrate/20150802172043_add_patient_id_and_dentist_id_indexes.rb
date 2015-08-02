class AddPatientIdAndDentistIdIndexes < ActiveRecord::Migration
  def change
    add_index :appointments, :patient_id
    add_index :appointments, :dentist_id
  end
end
