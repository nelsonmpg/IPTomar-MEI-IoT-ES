Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  resources :projects
  resources :schools
  resources :documents
  resources :courses
  resources :subjects
  resources :people
  resources :persontypes

  #users
  #devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
