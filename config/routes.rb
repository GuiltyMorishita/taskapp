Rails.application.routes.draw do
  
  root 'projects#index'
  
  post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'
  
  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end
end
