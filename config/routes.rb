Rails.application.routes.draw do
  resources :vehicles
  resources :vehicle_category_and_payments
  resources :routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
