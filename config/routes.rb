Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'

  resource :users, except: [:destroy, :edit, :update, :new] do
    resource :readings, only: [:index, :show]
  end

  resource :spreads, only: [:index, :show] do
    resource :readings, only: [:index, :show, :new]
  end

  resource :readings
end
