Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :posts do
    resources :comments
  end

  resources :gyms do
    resources :reviews, only: [:create, :destroy]
  end

  resources :workouts do
    resources :exercises, only: [:new, :create]
  end

  resources :foods


  resources :exercises, only: [:destroy]
  resources :posts

  resources :posts do
    member do
      put 'like', to: 'posts#like'
    end
  end
end
