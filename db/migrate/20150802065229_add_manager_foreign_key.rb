class AddManagerForeignKey < ActiveRecord::Migration
  def change
    add_column :dentists, :manager_id, :integer
  end
end
