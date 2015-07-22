class Bios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
    t.string :name, null: false
    t.string :description, null: false
    end
  end
end
