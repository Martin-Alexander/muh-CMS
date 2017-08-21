Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users

  root to: 'posts#index'
  get '/:post_slug', to: 'posts#show', as: 'post'

end
