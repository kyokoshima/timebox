Rails.application.routes.draw do
  devise_scope :user do
    get 'login' => 'devise/sessions#new'
    post 'login' => 'devise/sessions#create'
    get 'logout' => 'devise/sessions#destroy'
  end
resources :users
  
  devise_for :users, skip: [:sessions],  controllers: {
	  confirmations: 'confirmations',
	  invitations: 'invitations'
  }

  root 'pages#index'

  get 'pages/show'
  resources :capsules do
  	resources :pictures
  end


  get 'send_mail' => "capsules#send_mail"

  get 'capsules' => 'capsules#index', as: 'user_root'


end
