Rails.application.routes.draw do
  root "movies#index"
  resources :reviews
  resources :movies
end
 