Rails.application.routes.draw do
  root 'excursions#index'
  resources :excursions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
