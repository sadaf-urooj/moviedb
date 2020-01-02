Rails.application.routes.draw do

  root 'home#index'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :movies do
    resources :votes, controller: 'movies/votes'
  end

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
end
