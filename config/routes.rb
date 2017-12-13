Rails.application.routes.draw do
  # get 'items/show'

  # get 'items/view_all'
  get 'countries'
  # get 'items/new'

  # get 'items/destroy'
  # Default routes are used so far.
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
