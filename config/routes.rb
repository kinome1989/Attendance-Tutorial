Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  # ログイン機能
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
