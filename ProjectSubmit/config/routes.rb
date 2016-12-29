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
end
