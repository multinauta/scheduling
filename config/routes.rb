Rails.application.routes.draw do
  resources :schedules
  resources :sub_places
  resources :places
  resources :cities
  resources :states
  resources :countries
  root to: 'home#index'
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # make api to users
  get 'usersbyplace', to: 'users#users_by_place'
end
