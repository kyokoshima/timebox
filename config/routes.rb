Rails.application.routes.draw do

  devise_for :users, controllers: { confirmations: 'confirmations'}
  root 'pages#index'

  get 'pages/show'


  resources :capsules do
  	resources :pictures
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
