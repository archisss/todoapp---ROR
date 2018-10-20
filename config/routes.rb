Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  devise_for :users
  resources :todos
  resources :actions
 
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
