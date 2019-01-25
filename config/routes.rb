Rails.application.routes.draw do
  devise_for :users
  resources :events, only: %i[show index new create]
  resources :tickets
  root :to => "public#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end