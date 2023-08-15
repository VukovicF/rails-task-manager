Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :tasks
  get 'new_task', to: 'tasks#new'
  post 'create_task', to: 'tasks#create'
  get 'edit_task/:id', to: 'tasks#edit'
  patch 'update_task/:id', to: 'tasks#update'
end
