Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  #post '/api/v1/login', to: 'accounts#create'
  #post '/api/v1/logout', to: 'accounts#destroy'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get "/reservations/:name", to: 'reservations#index'
      resources :users, only: [:index, :create] 
      resources :reservations, only: [:index, :show, :create, :destroy] 
      resources :houses, only: [:index, :show, :create, :destroy] 
      resources :accounts, only: [:create]
    end 
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
