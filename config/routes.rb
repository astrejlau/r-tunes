Rails.application.routes.draw do
  get 'albums/index'
  root 'albums#index'
  get "albums" => "albums#index"

  #root "albums" => "albums#index"
  resources :albums
  get "songs" => "songs#create"
  resources :songs

  post "albums" => "albums#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
