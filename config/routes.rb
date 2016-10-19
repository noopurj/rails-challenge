Rails.application.routes.draw do
  get 'order/:id/feedback' => 'order_feedback#new'
end
