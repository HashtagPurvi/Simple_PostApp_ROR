Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  #Setting up the Root of the app
  root 'static_pages#home'	

  get 'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/about',to: 'static_pages#about'
  get '/contact',to: 'static_pages#contact'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  #Adding RESTFUL routes for User Model
  resources :users

  #Adding named route for Sessions
  get '/login', to:'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
