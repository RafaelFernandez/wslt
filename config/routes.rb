Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :websites, only: [:index, :create, :new, :show, :edit] do
    get 'builder', to: 'websites#builder'
  end
  resources :sections, only: [:index, :create, :new, :show]
end
