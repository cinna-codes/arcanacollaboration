Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  resources :users, except: [:destroy, :edit, :update, :new]
  resources :spreads, only: [:index, :show] do
    resources :readings, only: [:index, :show, :new]
  end
end
