class Notes < ActiveRecord::Migration
  def change
      create_table :notes do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.string :ticker
      t.string :description, null: false

      t.timestamps
    end
  end
end
