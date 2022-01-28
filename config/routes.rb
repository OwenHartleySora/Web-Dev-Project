Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html