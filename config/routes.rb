Rails.application.routes.draw do
  root 'landing#front'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'signup' => 'users#new'
  get 'history' => 'tracker#home'
  get 'progress' => 'tracker#index'
  resources :tracks
  get 'newhabit' => 'habits#new'
  resources :habits
  resources :users
  
end
