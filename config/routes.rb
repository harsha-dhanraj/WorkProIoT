Rails.application.routes.draw do
  resources :patients
  root "vehicles#index"
  get 'welcome/index'

  devise_for :users
  resources :vehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do      
      resources :verify_registrations do
      	collection do
      		post 'vehicle_validity'
      	end
      end
  	end
  end
  
end
