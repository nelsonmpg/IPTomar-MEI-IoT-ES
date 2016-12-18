Rails.application.routes.draw do

<<<<<<< HEAD
  get 'home/index'

#root to: 'projects#index'
root 'home#index'

=======
root to: 'projects#index'
>>>>>>> 3c9b5d58d1d3e63439d27b92b550e6493a1143fb

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

  #root 'home#index'

=======
>>>>>>> 3c9b5d58d1d3e63439d27b92b550e6493a1143fb
# >>>>>>> refs/remotes/origin/master

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
