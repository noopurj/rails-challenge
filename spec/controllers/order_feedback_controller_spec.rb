require 'rails_helper'

describe OrderFeedbackController do
  describe "#edit" do
    context 'when order is rated' do
      it 'it renders thank you page' do
        rated_order = Order.create({
                                                   :date => Time.now.to_datetime,
                                                   :delivery_feedback => 'nice',
                                                   :delivery_rating => 4
                                               })
        rated_order.order_items.create({
                                         :meal_name => 'Samsui Chicken Rice',
                                         :rating => 3,
                                         :feedback => 'Could be better'
                                     })
        get :edit, id: rated_order.id
        expect(response).to render_template(:thank_you)
      end
    end
  end
end
