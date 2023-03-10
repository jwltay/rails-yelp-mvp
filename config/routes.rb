Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
end
