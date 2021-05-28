class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    change_column :tables, :date, :date
  end
end
