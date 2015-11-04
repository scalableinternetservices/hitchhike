Rails.application.routes.draw do

  resources :locations
  root 'homepage#splash'

  get 'account/:username' => 'homepage#account'
  get 'explore' => 'homepage#explore'

  get 'trips' => 'trips#index'
  get 'planner' => 'trips#planner'

  devise_for :users, :path_names => { :sign_up => "register", :sign_in => "login" }

  resources :users, :only => [:show]

  resources :locations do
    #collection do
    #  get :autocomplete
    #end
  end

  resources :trips do
    resources :comments, :only => [:create]
    resources :locations, :only =>[:create]
  end

  resources :ratings, only: :update

end
