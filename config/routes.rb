Rails.application.routes.draw do
  root 'leases#index'
  resources :leases  
end
