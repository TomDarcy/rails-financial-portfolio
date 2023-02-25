Rails.application.routes.draw do
  resources :investments do
    resources :transactions, only: %i[new create]
  end

  resources :transactions, only: %i[edit update destroy]

  resources :assets

  root to: 'investments#index'
end
