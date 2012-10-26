StuartTunes::Application.routes.draw do
  devise_for :users

  resources :albums

  resources :artists
  resources :songs
  resources :genres
  root :to => 'songs#index'
end
