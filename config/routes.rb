Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # new
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create', as: :tasks
  # show all
  get 'tasks', to: 'tasks#index'
  # show one
  get 'tasks/:id', to: 'tasks#show', as: :task # takes an id
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # takes an id
  patch 'tasks/:id', to: 'tasks#update'
  # destroy
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
  #mark as completed
  put 'tasks/:id', to: 'tasks#toggle_complete', as: :complete_task
end
