Ymzg::Application.routes.draw do

  resources :events

  get "stories" => "stories#index"
  get 'stories/story1' => 'stories#story1'
  get 'stories/story2' => 'stories#story2'
  get 'stories/story3' => 'stories#story3'
  resources :comments


  # The priority is based upon order of creation:
  # first created -> highest priority.
  get 'welcome' => 'welcome#index'

  get '/auth/login' => 'auth#index'
  get '/auth/logout' => 'auth#logout'
  post '/auth/login' => 'auth#login'

  get 'admin/events' => 'events#admin_events'
  get 'admin/events/new' => 'events#new'

  root :to => 'welcome#index'

end
