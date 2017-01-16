class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items

  def rated?
    rating_present = true
    if self.delivery_feedback.nil? and self.delivery_rating.nil?
      self.order_items.each do |order_item|
        if order_item.feedback.nil? and order_item.rating.nil?
          rating_present = false
        end
      end
    end
    return rating_present
  end
end
