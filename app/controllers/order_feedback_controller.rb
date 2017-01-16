class OrderFeedbackController < ApplicationController
  before_action :set_order

  def update
    if @order.update order_params
      render :thank_you
    else
      render :edit
    end
  end

  def edit
    if @order.rated?
      render :thank_you
    end
  end

  def thank_you
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:id, :delivery_rating, :delivery_feedback, order_items_attributes:[:id, :rating, :feedback])
  end
end
