Rails.application.routes.draw do
<<<<<<< HEAD
  get 'home/index'
=======
root to: 'projects#index'
>>>>>>> Miguel

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
<<<<<<< HEAD

  root 'home#index'
=======
# >>>>>>> refs/remotes/origin/master
>>>>>>> Miguel
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
