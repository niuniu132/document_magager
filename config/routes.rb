Rails.application.routes.draw do

  devise_for :users

  root "documents#index"
  resources :trades
  resources :modify_password
  resources :user_managements
  resources :documents do
    collection do
      get :user_index
      get :search
    end
  end
end
