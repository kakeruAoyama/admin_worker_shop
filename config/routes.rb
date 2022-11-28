Rails.application.routes.draw do
  devise_for :workers
  resources :shops
  devise_for :admins
  root 'shops#index'
end
