Rails.application.routes.draw do
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # the "as:" tasks part is defining a nickname for a path (in this case'/tasks')
  # get '/tasks', to: 'tasks#index'
  # # Therefore, I can refer to this path '/tasks' with the nickname formed by the patternb: tasks_path (which is the nickname + _path)
  #
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create'
  #
  #
  # #nickname task_path
  # get '/tasks/:id', to: 'tasks#show', as: 'task'
  #
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  #
  # patch '/tasks/:id', to: 'tasks#update'
  #
  # delete '/tasks/:id', to: 'tasks#destroy'

  resources :tasks

  # patch '/tasks/:id' to: 'tasks#complete' as: 'complete_task'

  patch '/tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'
end
