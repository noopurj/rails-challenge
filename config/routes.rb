Rails.application.routes.draw do
  get 'order/:id/feedback' => 'order_feedback#edit'
  post 'order/:id/feedback/new' => 'order_feedback#update'
  patch 'order/:id/feedback/new' => 'order_feedback#update'
end
