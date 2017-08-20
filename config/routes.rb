Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users

  root to: 'posts#index'
  resources :posts, only: [:index, :show]
end
