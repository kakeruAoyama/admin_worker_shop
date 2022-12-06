Rails.application.routes.draw do
  get 'workers/index'
  devise_for :workers
  resources :shops
  devise_for :admins
  resources :workers
  root 'shops#index'
end
