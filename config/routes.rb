Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resource :dashboard, only: [:show]
  resources :babysitters, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
end
