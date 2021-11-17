Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :camping_spots do
    resources :bookings, only: [:new, :create]
  end

  patch '/bookings/:id/accept', to: 'bookings#accept', as: :accept_booking
  patch '/bookings/:id/decline', to: 'bookings#decline', as: :decline_booking

  get '/my_spots', to: 'camping_spots#my_host_spots', as: :my_spots
  get '/my_bookings', to: 'bookings#my_visitor_bookings', as: :my_bookings
  get '/my_host_bookings', to: 'bookings#my_host_bookings', as: :my_host_bookings
end
