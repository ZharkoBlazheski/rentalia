Rails.application.routes.draw do
  resources :rooms, only: [:index, :show]
  resources :apartments
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/privacy'
  get 'home/dashboard'
  post '/create_contact', to: 'home#create_contact'
  devise_for :users,
    controllers: {
      registrations: "users/registrations"
    }

  namespace :dashboard do
    get 'home', to: 'static#home'
    get 'rooms', to: 'static#rooms'
    resources :apartments do
      resources :rooms
    end
    root to: 'static#home'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
