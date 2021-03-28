Rails.application.routes.draw do
  resources :genres
  root "movies#index"
  get "signup" => "users#new"
  get "signin" => "sessions#new"
  get "movies/filter/:specification" => "movies#index", as: :filtered_movies
  
  resources :users
  
  resources :movies do 
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end
  
  resource :session, only: [:new, :create, :destroy]
end
 