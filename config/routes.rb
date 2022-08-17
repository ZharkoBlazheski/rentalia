Rails.application.routes.draw do
  resources :apartments
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/privacy'
  post '/create_contact', to: 'home#create_contact'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
