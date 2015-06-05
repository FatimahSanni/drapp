Rails.application.routes.draw do


  resources :counsels

  resources :diagnoses

  devise_for :users
  resources :patients do
  	resources :medical_records
  end

  root "patients#index"

end
