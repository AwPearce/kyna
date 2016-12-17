Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :admins

  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'loveybowbyna', to: 'devise/registrations#new', as: 'loveybowbyna'
  resources :articles
  resources :items
end
