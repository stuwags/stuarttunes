StuartTunes::Application.routes.draw do
  resources :albums

  resources :artists
  resources :songs
  root :to => 'songs#index'

end
