Rails.application.routes.draw do
  get 'site/index'

  root 'site#index'
  resources :movies
  resources :actors

end 