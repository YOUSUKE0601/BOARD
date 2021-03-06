Rails.application.routes.draw do
  get 'mypage', to: 'users#me' #mypageにアクセスが来た場合、usersのmeアクションが呼ばれる
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#index'
  resources :users, only: [:new, :create]
  resources :boards
  resources :comments, only: [:create, :destroy]
end



