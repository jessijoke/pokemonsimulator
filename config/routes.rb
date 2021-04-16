Rails.application.routes.draw do
  root to: 'pages#index'
  resources :stores
  resources :pokemon_teams
  resources :user_items
  resources :items
  resources :friendships

  #login and users
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get 'users/friends', to: 'users#friends'
  get '/auth/:provider/callback' => 'sessions#omniauth' 
  resources :users, only: [:new, :create, :show] do
      resources :pokemons, only: [:index]
      resources :teams, only: [:index, :new, :show]
  end

  #pokemon
  get 'pokemons/explore' => 'pokemons#search_for_pokemon'
  get 'pokemons/capture' => 'pokemons#capture'
  get 'pokemons/show_pokemon_type/:type' => 'pokemons#show_pokemon_type'
  post 'pokemons/capture' => 'pokemons#capture'
  resources :pokemons
  #do indent 

  #teams
  resources :teams

  #search
  get 'search', to: 'pages#search'
  post 'search/results', to: 'pages#search_results'
  get 'search/results', to: 'pages#search_results'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #pages
  get 'pages/game', to: 'pages#game'
end
