ActionController::Routing::Routes.draw do |map|
  map.resources :categories, :has_many => :posts
  map.resources :replies
  map.resources :user_sessions
  map.resources :users
  map.resources :posts
  
  map.root :controller => "home"
  
  map.join 'join', :controller => 'users', :action => 'new'
  map.login 'login', :controller => 'user_sessions', :action => 'login'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'

  map.post ':id', :controller => 'posts', :action => 'show', :conditions => { :method => :get }
  map.post_edit ':id/edit', :controller => 'posts', :action => 'edit'
  map.post_update ':id', :controller => 'posts', :action => 'update', :conditions => { :method => :put }
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
