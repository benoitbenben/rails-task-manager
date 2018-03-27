Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  # READ : as a user i can list all tasks
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # # HTTP_VERB URL, to: 'CTRL#ACTION'
  # get 'contact', to: 'pages#contact'
  # get 'about', to: 'pages#about'

  # # CREATE
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  # # READ
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # EDIT
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # # DELETE
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  # # resources :restaurants #, only: [:index, :show]
end
