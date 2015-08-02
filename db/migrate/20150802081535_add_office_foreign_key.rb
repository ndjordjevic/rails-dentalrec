class AddOfficeForeignKey < ActiveRecord::Migration
  def change
    add_column :dentists, :office_id, :integer
    add_index :dentists, :office_id
  end
end
