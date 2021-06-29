Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, only: [:index, :new, :create]
  resources :party, only: [:show, :new, :create] do
    resources :lists, only: [:create, :new]
  end
end
