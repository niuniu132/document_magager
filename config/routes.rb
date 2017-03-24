Rails.application.routes.draw do

  devise_for :users

  root "welcome#index"
  resources :trades
  resources :modify_password
end
