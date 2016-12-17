Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'

  resources :articles
  resources :stores
end
