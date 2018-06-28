Rails.application.routes.draw do

  root to: "paneur#map"

  # get 'paneur/overview'
  # get 'paneur/archival_sources'

  # Map
  get 'paneur/map'
  
  

  # Default routes are used so far.
  resources :countries, controller: 'countries' do
    resources :elites
  end
  resources :elites, controller: 'elites'
  resources :people, controller: 'people'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
