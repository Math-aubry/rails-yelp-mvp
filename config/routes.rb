Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/new'
  # get 'reviews/create'
  resources :restaurants do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    resources :reviews, only: %i[new create]
  end
end
