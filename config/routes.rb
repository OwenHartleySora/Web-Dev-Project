Rails.application.routes.draw do

  #Bcrypt P-word and Username stuff From https://levelup.gitconnected.com/simple-authentication-guide-with-ruby-on-rails-16a6255f0be8

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'



  #Authorized access to stuff
  get 'authorized', to: 'sessions#page_requires_login'

  root "articles#index"

  resources :articles do
    resources :comments
  end
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html