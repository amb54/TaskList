Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index', as: 'welcome'

##
  # get 'welcome', to: 'welcome#index'

  get 'tasks', to: 'tasks#index', as: 'tasks' #The index always requires the controllers?????

  get 'tasks/new', to: 'tasks#new', as: 'new_task' #Important to have after index before show
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  patch 'tasks/:id/status', to: 'tasks#status', as: 'status'
  delete 'tasks/:id', to: 'tasks#destroy'

end
