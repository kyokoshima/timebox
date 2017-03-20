Rails.application.routes.draw do

  devise_scope :user do
    root 'devise/sessions#new'
    get 'login' => 'devise/sessions#new'
    post 'login' => 'devise/sessions#create'
    get 'logout' => 'devise/sessions#destroy'
  end
<<<<<<< HEAD
  resources :users

  devise_for :users, skip: [:sessions],  controllers: {
=======
  
  devise_for :users,  controllers: {
>>>>>>> origin/master
	  confirmations: 'confirmations',
	  invitations: 'invitations',
    registrations: 'registrations'
  }

<<<<<<< HEAD
 
=======
  root 'page#index'

>>>>>>> origin/master
  get 'pages/show'
  resources :capsules do
  	resources :pictures
  end
  get 'capsules', to: 'capsule#index', as: :user_root

end
