Rails.application.routes.draw do

  devise_scope :user do
    get 'login' => 'devise/sessions#new'
    post 'login' => 'devise/sessions#create'
    get 'logout' => 'devise/sessions#destroy'
  end
  
  devise_for :users,  controllers: {
	  confirmations: 'confirmations',
	  invitations: 'invitations',
    registrations: 'registrations'
  }

  root 'page#index'

  get 'pages/show'
  resources :capsules do
  	resources :pictures
  end
  get 'capsules' => 'capsules#index', as: 'user_root'

end
