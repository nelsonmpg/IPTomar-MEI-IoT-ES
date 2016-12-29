Rails.application.routes.draw do
  root to: 'projects#index'

  devise_for :users
  resources :projects
  resources :schools
  resources :documents
  resources :courses
  resources :course_units
  resources :course_types
  resources :people
  resources :persontypes
  resources :institutions
  resources :presentations



  resources :tags, except: :show
  get 'tags/:tag', to: 'projects#index'
  #root 'projects#index'

  #users - existe um erro na route quando se faz Sign_out no index do projects
  #devise_for :users, controllers: { sessions: 'users/sessions' }
# >>>>>>> refs/remotes/origin/master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
