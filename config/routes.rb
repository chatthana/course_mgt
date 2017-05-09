Rails.application.routes.draw do

  root 'course#index'

  get 'site/index'
  get 'session/create'
  post 'session/authenticate'

  get 'course/index'
  get 'course/test'
  get 'course/view/(:catname)', to: 'course#view', as: 'course_view'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
