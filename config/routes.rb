Rails.application.routes.draw do

  root 'courses#index'

  get 'site/index'
  get 'session/create'
  get 'session/logout'
  get 'session/updateprofile'
  put 'session/editprofile'
  # post 'session/actualedit'
  post 'session/authenticate'

  resources :courses
  post 'courses/search'
  # get 'courses/search'

  # get 'course/index'
  # get 'course/test'
  # get 'course/view/:id', to: 'course#view', as: 'course_view'
  # get 'course/category/:category', to: 'course#category'
  # get 'course/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
