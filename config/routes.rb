Rails.application.routes.draw do

  root to: "things#index"



  devise_for :users



  resources :things



  resource :users, only: :show



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end

