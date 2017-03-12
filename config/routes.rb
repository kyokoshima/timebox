Rails.application.routes.draw do
  devise_for :users, controllers: {
	  confirmations: 'confirmations',
	  invitations: 'invitations'
  }
  resources :users
  root 'pages#index'

  get 'pages/show'
  resources :capsules do
  	resources :pictures
  end



end
