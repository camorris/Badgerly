Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/update'

  get 'users/create'

  get 'users/destroy'

  get 'badges/index'

  get 'badges/show'

  get 'badges/create'

  get 'badges/update'

  get 'badges/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
