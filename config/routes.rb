Rails.application.routes.draw do
  root 'landing#front'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'afterlogin' =>  'landing#afterlogin'
  delete 'logout'  => 'sessions#destroy'
  get 'signup' => 'users#new'
  get 'newhabit' => 'habits#new'
  resources :habits
  resources :tracks, controller: "tracker" 
  resources :users
  
end
