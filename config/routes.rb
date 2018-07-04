Rails.application.routes.draw do

  root to: "map#index"

  # get 'paneur/overview'
  # get 'paneur/archival_sources'

  # Map
  get 'map/index'
  
  get "files/download_pdf" => "elites#download_pdf"

  # Default routes are used so far.
  resources :countries, controller: 'countries' do
    resources :elites
  end
  resources :elites, controller: 'elites'
  resources :people, controller: 'people'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
