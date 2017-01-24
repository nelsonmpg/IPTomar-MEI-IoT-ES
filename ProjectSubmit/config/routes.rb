Rails.application.routes.draw do

  get 'project_posts_social/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

  #devise_for :users
  
  #TODO: reorganizar rotas com
  # - nested routes quando fizer sentido, implica mudar links nas views
  # - excluír rotas desnecessárias (por exemplo, precisam do show para documents?)
  resources :documents
  resources :projects do
    get :autocomplete_tag_name, :on => :collection 
  end
  resources :schools
  resources :courses
  resources :course_units
  resources :course_types
  resources :project_images
  resources :people
  resources :person_types
  resources :institutions
  resources :presentations
  resources :tags, except: :show
  get 'tags/:tag', to: 'projects#index'
  
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
