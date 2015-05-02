Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'visitors#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

	
  resources :users
  # resources :home
  resources :home do
	  collection { post :import }
	end
  match "home/drive_fetch" => "home#drive_fetch",:via => :get
end
