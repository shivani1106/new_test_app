Rails.application.routes.draw do
  root to: 'tv_shows#index' 
  devise_for :users
  resources :tv_shows, only: [:index]
  resources :tv_channels, only: [:index]
  resources :tv_channels do
    collection do
      get 'tv_shows/channel_shows', :to => 'tv_shows#channel_shows'
    end  
  end  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
