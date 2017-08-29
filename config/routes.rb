Rails.application.routes.draw do

  devise_for :users
  root 'homepage#index'
  resources :users do
    resources :projects
  end
end
