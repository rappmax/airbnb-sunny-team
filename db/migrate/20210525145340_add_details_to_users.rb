class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :style, :string
    add_column :users, :ranking, :integer
    add_column :users, :hand, :string
  end
end
