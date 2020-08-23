Rails.application.routes.draw do
  resources :publications
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  resources :pages
  root 'pages#root'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
end
