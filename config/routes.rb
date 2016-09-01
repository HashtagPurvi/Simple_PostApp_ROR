Rails.application.routes.draw do

  get 'users/new'

  #Setting up the Root of the app
  root 'static_pages#home'	

  get 'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/about',to: 'static_pages#about'
  get '/contact',to: 'static_pages#contact'

  get '/signup', to: 'users#new'

  #Adding RESTFUL routes for User Model
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
