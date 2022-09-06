Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  resources :workout
  resources :posts
=======
  resources :workouts
>>>>>>> 24a70132235e1dacfef05d07684b02cd231a5d2a
end
