Rails.application.routes.draw do
  resources :technologies
  resources :portfolio_items
  resources :blogs
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to:'pages#contact'
  get 'check_user', to: 'pages#check_user'
  resources :posts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
