class Investments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :portfolio_id, null: false
      t.string :ticker, null: false
    end
  end
end
