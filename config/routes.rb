Rails.application.routes.draw do
  resources :licenses
  resources :publications
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  resources :pages
  root 'pages#root'
  match "/register", :to => "licenses#register", :via => :get
  match "/check", :to => "licenses#check", :via => :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  mount API => '/'
end
