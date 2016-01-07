Rails.application.routes.draw do
  resources :blocks
  resources :users
  get 'signup' => 'users#new'
  root 'blocks#index'

  get '/collection' => 'blocks#collection'

  get     'login' => 'sessions#new'
  post    'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
