Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :genres, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :artists, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  post '/search', to: 'songs#search', as: "search"
  # This next line stops it from breaking if they refresh the page after searching
  get '/search', to: 'songs#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
