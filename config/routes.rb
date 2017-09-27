Rails.application.routes.draw do

  get 'sessions/new'
  root 'badges#index'
  resources :users
  resources :sessions,  only: [:new, :create]
  delete 'logout' => 'sessions#destroy', as: :logout
  resources :badges
  
  # get 'users/index'

  # get 'users/show'

  # get 'users/update'

  # get 'users/create'

  # get 'users/destroy'

  # get 'badges/index'

  # get 'badges/show'

  # get 'badges/create'

  # get 'badges/update'

  # get 'badges/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
