Rails.application.routes.draw do

  # Map controller's index action
  # Homepage
  root to: "map#index"

  # Map
  get 'map/index'
  
  # Default routes are used so far.
  resources :countries, controller: 'countries' do
    resources :elites
  end
  resources :elites, controller: 'elites'
  resources :people, controller: 'people'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
