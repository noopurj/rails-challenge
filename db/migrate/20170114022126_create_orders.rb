class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.text :delivery_feedback
      t.integer :delivery_rating

      t.timestamps null: false
    end
  end
end
