Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :babysitters, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
