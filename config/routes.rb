Rails.application.routes.draw do
  devise_for :users, controllers: { 
  	confirmations: 'confirmations', invitations: 'invitations' 
  	}, path:'',path_names:{sign_in: 'login',sign_out: 'logout',sign_up: 'sign_up'}
	resources :users
  
  root 'pages#index'

  get 'pages/show'
  resources :capsules do
  	resources :pictures
  end



end
