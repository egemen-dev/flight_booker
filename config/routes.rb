Rails.application.routes.draw do
  resources :bookings, only: [:new, :create, :show]
  get 'flights/index'
  root "flights#index"
end
