Rails.application.routes.draw do
  root 'landing#front'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'afterlogin' =>  'landing#afterlogin'
  delete 'logout'  => 'sessions#destroy'
  get 'signup' => 'users#new'
  get 'newhabit' => 'habits#new'
  get 'all' => 'users#all'
  
  resources :habits
  resources :tracks, controller: "tracker" 
  post 'tracker/increase_streak' => 'tracker/increase_streak'
  post 'tracker/reset_streak' => 'tracker/reset_streak'
  post 'tracker/reset_counter' => 'tracker/reset_counter'
  resources :users
  
end
