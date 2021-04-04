Rails.application.routes.draw do
  root to: 'pages#index'

  #login
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get '/auth/facebook/callback' => 'sessions#omniauth' 
  get '/auth/google_oauth2/callback' => 'sessions#omniauth' 
  resources :users, only: [:new, :create]

  #pokemon
  get 'pokemons/catch' => 'pokemons#search_for_pokemon'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
