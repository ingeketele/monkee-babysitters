Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resource :dashboard, only: [:show]
  resources :babysitters, only: [:index, :show] do
    resources :bookings, only: [:index, :new, :create, :show]
    resources :reviews, only: [:index]
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end

  as :user do
    get 'users', :to => 'babysitters#index', :as => :user_root
  end
end
