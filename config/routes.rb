Rails.application.routes.draw do
  # get 'hours/new'
  # get 'hours/edit'
  # get 'hours/index'
  # get 'hours/show'
  # get 'schedule/new'
  # get 'schedule/edit'
  # get 'schedule/index'
  # get 'schedule/show'
  # get 'works/new'
  # get 'works/edit'
  # get 'works/index'
  # get 'works/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/index'
  # get 'tasks/show'
  # get 'subject/new'
  # get 'subject/edit'
  # get 'subject/index'
  # get 'subject/show'
  # get 'group/new'
  # get 'group/create'
  # get 'professor/new_professor'
  # get 'professor/update_professor'
  resources :professors , only: [:index, :create, :show, :destroy,:new] 
  resources :hours , only: [:index, :create, :show, :destroy,:new] 
  resources :schedules , only: [:index, :create, :show, :destroy,:new] 
  resources :works , only: [:index, :create, :show, :destroy,:new] 
  resources :groups , only: [:index, :create, :show, :destroy,:new] 
  resources :tasks , only: [:index, :create, :show, :destroy,:new] 
  resources :students , only: [:index, :create, :show, :destroy,:new] 
  resources :docs 
  get 'say/new'
  get 'say/hello'
  get 'say/goodbye'
  
end














