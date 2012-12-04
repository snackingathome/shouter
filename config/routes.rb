Shouter::Application.routes.draw do
  
  get "sessions/new", :as => :log_in

  post "sessions/create"

  delete "sessions/destroy"

  resources :follows

  resources :users
  
  resources :shouts
  
  root to: 'pages#home'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
