Rails.application.routes.draw do

  root 'courses#index'

  resources :courses, :users

  # Authentication Routes
  get 'session/create'
  get 'session/logout'
  get 'session/updateprofile'
  put 'session/editprofile'
  post 'session/authenticate'
  # Course Routes
  post 'courses/search'
  post 'courses/createcategory'
  get 'courses/category/:id' => 'courses#category', as: 'course_category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
