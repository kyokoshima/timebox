Rails.application.routes.draw do
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
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
  get 'capsules', to: 'capsule#index', as: :user_root



end
