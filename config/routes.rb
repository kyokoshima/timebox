Rails.application.routes.draw do
  devise_scope :user do
    root 'devise/sessions#new'
    get 'login' => 'devise/sessions#new'
    post 'login' => 'devise/sessions#create'
    get 'logout' => 'devise/sessions#destroy'
  end
  resources :users

  devise_for :users, skip: [:sessions],  controllers: {
	  confirmations: 'confirmations',
	  invitations: 'invitations'
  }

 
  get 'pages/show'
  resources :capsules do
  	resources :pictures
  end
  get 'capsules', to: 'capsule#index', as: :user_root

end