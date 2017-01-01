Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

  devise_for :users
  
  resources :documents
  resources :projects
  resources :schools
  resources :courses 
  resources :course_units
  resources :course_types
  resources :project_images
  resources :people
  resources :persontypes
  resources :institutions
  resources :presentations
  resources :tags, except: :show
  get 'tags/:tag', to: 'projects#index'
  
  #devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
