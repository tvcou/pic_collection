Rails.application.routes.draw do
  resources :blocks
  root 'blocks#index'

  get '/collection' => 'blocks#collection'
end
