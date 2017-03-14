Rails.application.routes.draw do
  resources :users
  devise_scope :user do
    get '/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users, controllers: {
	  confirmations: 'confirmations',
	  invitations: 'invitations'
  }

  root 'pages#index'

  get 'pages/show'
  resources :capsules do
  	resources :pictures
  end



end
