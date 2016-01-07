Rails.application.routes.draw do
  resources :blocks
  resources :users
  root 'blocks#index'

  get '/collection' => 'blocks#collection'
end
