Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :websites, only: [:index, :create, :new, :show, :update] do

    get 'builder', to: 'websites#builder'
    resources :sections, only: [:index, :create, :update, :new, :show]
  end
end
