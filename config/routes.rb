Rails.application.routes.draw do
  get 'index/index'
  root 'index#index'
  get 'albums_form' => 'albums#new'
  post 'albums_form' => 'albums#create'
  #get 'albums' => 'albums#collection'
  get 'albums' => 'albums#show'

  #root "albums" => "albums#index"
  resources :albums
  get 'songs_form' => 'songs#new'
  post 'songs_form' => 'songs#create'
  #get 'songs' => 'song#songlist'
  get 'songs' => 'song#show'
  resources :songs

  post 'album' => 'albums#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
