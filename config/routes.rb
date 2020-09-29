Rails.application.routes.draw do

  devise_for :users 
  get 'home/index'
  root to: "home#index"

  resources :professors , only: [:index, :create, :show, :destroy,:new,:edit,:update] 
  resources :hours ,      only: [:index, :create, :show, :destroy,:new,:edit,:update] 
  resources :schedules ,  only: [:index, :create, :show, :destroy,:new,:edit,:update] 
  resources :works ,      only: [:index, :create, :show, :destroy,:new,:edit,:update] 
  resources :groups ,     only: [:index, :create, :show, :destroy,:new,:edit,:update] 
  resources :tasks ,      only: [:index, :create, :show, :destroy,:new,:edit,:update] 
  resources :students ,   only: [:index, :create, :show, :destroy,:new,:edit,:update] 
  resources :subjects ,   only: [:index, :create, :show, :destroy,:new,:edit,:update] 
  resources :docs 

  get 'say/new'
  get 'say/hello' 
  get 'say/goodbye'
end














