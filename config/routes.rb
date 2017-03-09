Rails.application.routes.draw do
  resources :capsules do
  	resources :pictures
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
