Rails.application.routes.draw do
  get 'book_info/index'
  get 'login/index'
  get 'library/index'
  root 'login#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/login', to: 'login#create'

  resources :library do
    resources :book_info, only: [:show]
  end

  resources :purchases, only: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end
