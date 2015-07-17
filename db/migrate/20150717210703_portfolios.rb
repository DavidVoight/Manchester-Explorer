class Portfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.integer :user_id, null: false
      t.integer :stock_id, null: false
    end
  end
end
