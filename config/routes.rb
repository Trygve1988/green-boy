Rails.application.routes.draw do
  resources :tasks
  get 'say/hi'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "say#hi"
end
