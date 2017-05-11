Rails.application.routes.draw do

  root 'course#index'

  get 'site/index'
  get 'session/create'
  post 'session/authenticate'

  resources :courses
  get 'courses/search'

  # get 'course/index'
  # get 'course/test'
  # get 'course/view/:id', to: 'course#view', as: 'course_view'
  # get 'course/category/:category', to: 'course#category'
  # get 'course/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
