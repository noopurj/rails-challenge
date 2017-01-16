class OrdersController < ApplicationController
  before_action :set_order

  def new
    if @order.rated?
      render :thank_you
    else

    end
    @order.update order_params
    @order.save
  end



  private
  def find_order(order_id)
    # Will return an Order Model or nil
    # feel free to implement this with ActiveRecord if this is insufficient

    Order.new(
        "GO #{order_id}",
        Date.new(2016, 4, 10),
        [ OrderItem.new(101, "Samsui Chicken Rice"), OrderItem.new(121, "Grilled Farm Fresh Chicken") ]
    )
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.permit(:delivery_rating, :delivery_feedback, order_item_attributes:[:rating, :feedback])
  end
end