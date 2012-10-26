StuartTunes::Application.routes.draw do
  resources :albums

  resources :artists
  resources :songs
  resources :genres
  root :to => 'songs#index'
end
