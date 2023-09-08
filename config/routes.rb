Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :hobbies, only:[:index, :new, :create]
end
