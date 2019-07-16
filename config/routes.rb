Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :babysitters, only: [:index, :show]
  resource :dashboard, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
