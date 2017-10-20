Rails.application.routes.draw do
  root to: 'appoints#index'
	resources :desks do
		resources :appoints, module: :desks
	end
  resources :doctors do
		resources :appoints, module: :doctors
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
