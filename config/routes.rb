Rails.application.routes.draw do
  resources :mass_bookings
  resources :societies
  resources :social_groups
  resources :umbrella_bodies
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#landing'
  resources :profiles
  resources :umbrella_bodies
  resources :social_groups
  resources :societies
  
end
