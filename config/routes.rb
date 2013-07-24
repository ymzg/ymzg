Ymzg::Application.routes.draw do

  resources :events

  get "stories" => "stories#index"

  resources :comments


  # The priority is based upon order of creation:
  # first created -> highest priority.
  get 'welcome' => 'welcome#index'

  get '/auth/login' => 'auth#index'
  get '/auth/logout' => 'auth#logout'
  post '/auth/login' => 'auth#login'

  get 'admin/events' => 'events#admin_events'
  get 'admin/events/new' => 'events#new'

end
