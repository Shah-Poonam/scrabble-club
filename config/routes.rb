Rails.application.routes.draw do
  resources :games
  resources :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'leader_boards#index'
end
