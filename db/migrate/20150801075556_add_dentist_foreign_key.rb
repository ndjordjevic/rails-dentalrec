class AddDentistForeignKey < ActiveRecord::Migration
  def change
    add_column :appointments, :dentist_id, :integer
  end
end
