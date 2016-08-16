Rails.application.routes.draw do
  resources :criminals
  resources :prisons
  resources :sentences
  root 'prisons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
