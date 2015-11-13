Rails.application.routes.draw do

  root 'homepage#splash'

  devise_for :users, :path_names => { :sign_up => "register", :sign_in => "login" }

  get 'users/:username' => 'users#show'
  get 'users/:username/follow' => 'users#follow'

  get 'newsfeed' => 'activities#index'
  get 'explore' => 'homepage#explore'

  get 'trips' => 'users#show'

  get 'nearby' => 'locations#_nearby'
  # get 'nearby' => 'locations#_nearby'

  resources :locations

  resources :trips do
    resources :comments, :only => [:create]
    resources :locations, :only =>[:create]
  end

  resources :ratings, only: :update
  resources :relationships,       only: [:create, :destroy]

end
