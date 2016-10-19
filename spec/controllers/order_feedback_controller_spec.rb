require 'rails_helper'

describe OrderFeedbackController do
  describe "#new" do
    it "assigns @order object" do
      get :new, id: 42

      expect(response.status).to eq(200)
      expect(assigns(:order)).to be_a_kind_of(Order)
    end
  end
end
