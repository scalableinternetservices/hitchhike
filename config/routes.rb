Rails.application.routes.draw do

  root 'homepage#splash'

  get 'users/new'

  get 'account/:username' => 'homepage#account'
  get 'explore' => 'homepage#explore'

  get 'trips' => 'trips#index'
  get 'planner' => 'trips#planner'

  devise_for :users, :path_names => { :sign_up => "register", :sign_in => "login" }

  #resources :users, :only => [:show]
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :locations

  resources :trips do
    resources :comments, :only => [:create]
    resources :locations, :only =>[:create]
  end

  resources :ratings, only: :update
  resources :relationships,       only: [:create, :destroy]

end
