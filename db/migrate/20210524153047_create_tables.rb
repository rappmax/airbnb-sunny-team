class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.string :address
      t.integer :rating
      t.string :description
      t.string :picture
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
