class Investments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :portfolio_id, null: false
      t.integer :note_id, null: false

      t.string :stock_ticker, null: false
    end
  end
end
