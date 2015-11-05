Rails.application.routes.draw do

  root 'homepage#splash'

  devise_for :users, :path_names => { :sign_up => "register", :sign_in => "login" }

  get 'users/:username' => 'users#show'
  get 'users/:username/following' => 'users#following'
  get 'users/:username/followers' => 'users#followers'

  get 'explore' => 'homepage#explore'

  get 'planner' => 'trips#planner'

  resources :locations

  resources :trips do
    resources :comments, :only => [:create]
    resources :locations, :only =>[:create]
  end

  resources :ratings, only: :update
  resources :relationships,       only: [:create, :destroy]

end
