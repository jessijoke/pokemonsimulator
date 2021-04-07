Rails.application.routes.draw do
  resources :pokemon_teams
  resources :user_items
  resources :items
  root to: 'pages#index'

  #login
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get '/auth/:provider/callback' => 'sessions#omniauth' 
  resources :users, only: [:new, :create]

  #pokemon
  get 'pokemons/explore' => 'pokemons#search_for_pokemon'
  get 'pokemons/capture' => 'pokemons#capture'
  post 'pokemons/capture' => 'pokemons#capture'
  resources :pokemons

  #teams
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
