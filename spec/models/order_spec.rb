require 'rails_helper'

RSpec.describe Order, type: :model do
  describe Order, '#rated' do
    it 'returns true only if all order items have feedback and rating and delivery feedback and raring is present' do
      new_order = Order.create({
                                  :date => Time.now.to_datetime
                              })
      new_order.order_items.create({
                                    :meal_name => 'Samsui Chicken Rice'
                                })
      new_order.order_items.create({
                                    :meal_name => 'Farm Fresh Grilled Chicken'
                                })
      result = new_order.rated?
      expect(result).to eq false

    end
  end
end
