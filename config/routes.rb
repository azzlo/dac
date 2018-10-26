Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :vehicles
  resources :vehicle_category_and_payments
  resources :routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
