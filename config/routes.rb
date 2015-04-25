Rails.application.routes.draw do
  resources :lecturers

  get 'link/index'

  get 'link/course'

  get 'link/lecturer'

  get 'link/about'
  
  get 'link/members'
  
  get 'link/requirements'
  
  get 'link/features'
  
  get 'link/er_diagram'
  
  get 'link/lo_fimockup'
  
  get 'courses/index', :to => 'courses#index', :as => 'courses_index' 
  
  get 'lecturers/index', :to => 'lecturers#index', :as => 'lecturer_index'
  

  resources :courses

  root to: 'link#index'
  
end
