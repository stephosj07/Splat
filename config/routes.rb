Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :camping_spots do
    resources :bookings, only: [:new, :create]
  end
  get '/my_spots', to: 'camping_spots#my_host_spots', as: :my_spots
  get '/my_bookings', to: 'bookings#index', as: :my_bookings
  get '/my_host_bookings', to: 'bookings#my_host_bookings', as: :my_host_bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
