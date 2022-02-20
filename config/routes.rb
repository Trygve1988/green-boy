Rails.application.routes.draw do
  resources :users
  resources :tasks
  resources :daily_challenges do
    member do
      patch :change_status
    end
  end
  resources :daily_tasks

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "daily_challenges#index"
end
