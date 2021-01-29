Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static#home'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  match '/auth/github/callback', to: 'sessions#github', via: [:get, :post]

  get '/signup', to: 'users#new', as: 'signup'

  resources :users, except: [:destroy, :edit, :update, :new] do
    resources :readings, only: [:index, :show]
  end

  resources :spreads, only: [:index, :show] do
    resources :readings, only: [:index, :show, :new]
  end

  resources :readings

  resources :cards, only: [:index, :show]
end
