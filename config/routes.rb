Rails.application.routes.draw do
  resources :vehicles do
    resources :vehicle_images
  end
  resources :brands
  resources :vehicle_types
  resources :segments
  resources :fuel_types
  resources :transmissions
  resources :conditions

  root 'vehicles#index'
end