Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users

  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  resources :articles
  resources :items
end
