Rails.application.routes.draw do
  resources :projects
  resources :schools
  resources :documents
  resources :courses
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
