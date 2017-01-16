class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :meal_name
      t.integer :rating
      t.text :feedback
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
