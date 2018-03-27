Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  # # HTTP_VERB URL, to: 'CTRL#ACTION'
  # get 'contact', to: 'pages#contact'
  # get 'about', to: 'pages#about'

  # CREATE
  get 'tasks/new', to: 'tasks#new', as: :new_restaurant
  post 'tasks', to: 'tasks#create'

  # READ : as a user i can list all tasks
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # EDIT
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'

  # resources :tasks #, only: [:index, :show]
end
