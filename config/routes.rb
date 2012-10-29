StuartTunes::Application.routes.draw do
  devise_for :users

  resources :albums

  resources :artists
  resources :songs
  resources :genres
  resources :purchases
  match '/newpurchase' => 'purchases#new', :via => :post
  root :to => 'songs#index'
end
