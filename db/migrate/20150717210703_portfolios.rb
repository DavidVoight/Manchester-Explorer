class Portfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.integer :user_id, null: false
      t.integer :name, null: false
    end
  end
end
