Rails.application.routes.draw do
  resources :shops
  devise_for :admins
  root 'shops#index'
end
