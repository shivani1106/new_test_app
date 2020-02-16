Rails.application.routes.draw do
  root to: 'tv_shows#index' 
  devise_for :users
  resources :tv_shows, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
