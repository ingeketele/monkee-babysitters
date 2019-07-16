Rails.application.routes.draw do
  root to: 'pages#home'

<<<<<<< HEAD
  resources :babysitters, only: [:index, :show]
  resource :dashboard, only: [:show]
=======
  devise_for :users

  resources :babysitters, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
>>>>>>> d4d7f2cc5e08feb4fdb4c21eae4a1668a2ae3c77
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
