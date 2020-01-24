Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :farmer_instruments

  resources :rent_details

  resources :farmers

  resources :instruments


  #get 'farmer_instruments', to: 'farmer_instruments#index' # has shorthand resources : farmer_instruments

  #get 'reports', to: 'farmer_instruments#reports'
end
