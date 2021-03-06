Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read all tasks
  get 'tasks', to: 'tasks#index'

  # Read one task
  get 'tasks/new', to: 'tasks#new', as: 'new'
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Create a new task
  post 'tasks', to: 'tasks#create'

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update', as: 'update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
