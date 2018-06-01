Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'

  resources :games do
    resources :rentals, only: [ :new, :create ]
  end

  resources :rentals, only: [ :index, :destroy ]

  get 'team', to: 'pages#team', as: :team

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
