Rails.application.routes.draw do
  get 'pages/login'
  resources :projects

  devise_for :users
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
  end

  # Rute untuk dashboard user

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
end


  resources :sekolahs
  resources :crud_lists

  get 'home/about'



  root 'home#index'

  resources :articles

  get "up" => "rails/health#show", as: :rails_health_check

  get 'sign_in', to: 'users/sessions#new', as: :new_session
end
