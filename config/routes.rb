Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  post '/login', to: 'accounts#create'
  post '/logout', to: 'accounts#destroy'
  get "/reservations/:name", to: 'reservations#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create] 
      resources :reservations, only: [:index, :show, :create, :destroy] 
      resources :houses, only: [:index, :show, :create, :destroy] 
    end 
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
