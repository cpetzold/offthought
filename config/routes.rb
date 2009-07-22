ActionController::Routing::Routes.draw do |map|
  
  map.resources :user_sessions
  map.resources :users
  map.resources :posts
  
  map.root :controller => "home"
  
  map.join 'join', :controller => 'users', :action => 'new'
  map.login 'login', :controller => 'user_sessions', :action => 'new'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'

  map.user ':id', :controller => 'users', :action => 'show'
  map.user_edit ':id/edit', :controller => 'users', :action => 'edit'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
