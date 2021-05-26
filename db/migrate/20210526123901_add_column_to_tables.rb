class AddColumnToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :name, :string
    add_column :tables, :date, :datetime
  end
end
