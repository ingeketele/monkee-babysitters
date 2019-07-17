Rails.application.routes.draw do
  root to: 'babysitters#index'

  devise_for :users

  resource :dashboard, only: [:show]
  resources :babysitters, only: [:index, :show] do
    resources :bookings, only: [:index, :new, :create, :show]
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end
end
