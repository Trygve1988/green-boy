Rails.application.routes.draw do
  get 'search/index'
  resources :users
  resources :tasks
  resources :user_tasks

  resources :user_tasks do
    member do
      patch :change_status
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "user_tasks#index"
end
