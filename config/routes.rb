Rails.application.routes.draw do

  get 'paneur/map'

  get 'paneur/overview'

  get 'paneur/archival_sources'

  get 'paneur/country'

  # get 'items/show'
  # get 'items/view_all'
  # get 'items/new'

  # get 'items/destroy'
  # Default routes are used so far.
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
