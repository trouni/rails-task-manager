Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # show all
  get 'tasks', to: 'tasks#index', as: :tasks
  # show one
  get 'task/:id', to: 'tasks#show', as: :task # takes an id
  # new
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # takes an id
  patch 'tasks/:id', to: 'tasks#update'

  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
