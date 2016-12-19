Rails.application.routes.draw do
  root to: 'projects#index'

  devise_for :users
  resources :projects
  resources :schools
  resources :documents
  resources :courses
  resources :subjects
  resources :people
  resources :persontypes




  resources :tags, except: :show
  get 'tags/:tag', to: 'projects#index'
  #root 'projects#index'
  

  

  #users
  #devise_for :users, controllers: { sessions: 'users/sessions' }
# >>>>>>> refs/remotes/origin/master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
