ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'pages'
  
  map.join 'join', :controller => 'users', :action => 'new'
  map.login 'login', :controller => 'user_sessions', :action => 'login', :conditions => { :method => :get }
  map.new_login 'login', :controller => 'user_sessions', :action => 'create', :conditions => { :method => :post }
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
  
  map.posts 'posts', :controller => 'posts', :conditions => { :method => :get }
  map.users 'users', :controller => 'users', :conditions => { :method => :get }
  map.categories 'categories', :controller => 'categories'
  
  map.create_user 'users', :controller => 'users', :action => 'create', :conditions => { :method => :post }
  map.user 'profile/:id', :controller => 'users', :action => 'show', :conditions => { :method => :get }
  map.update_user 'profile/:id', :controller => 'users', :action => 'update', :conditions => { :method => :put }
  map.edit_user 'profile/:id/edit', :controller => 'users', :action => 'edit'
  
  map.category ':id', :controller => 'categories', :action => 'show', :conditions => { :method => :get }
  map.update_category ':id', :controller => 'categories', :action => 'update', :conditions => { :method => :put }
  map.edit_category ':id/edit', :controller => 'categories', :action => 'edit'
  map.new_category 'new', :controller => 'categories', :action => 'new'
  
  map.new_post 'posts/new', :controller => 'posts', :action => 'new', :conditions => { :method => :get }
  map.new_post_from_category ':category/new', :controller => 'posts', :action => 'new', :conditions => { :method => :get }
  map.create_post 'posts', :controller => 'posts', :action => 'create', :conditions => { :method => :post }
  map.post ':category/:id', :controller => 'posts', :action => 'show', :conditions => { :method => :get }
  map.update_post ':category/:id', :controller => 'posts', :action => 'update', :conditions => { :method => :put }
  map.delete_post ':category/:id', :controller => 'posts', :action => 'destroy', :conditions => { :method => :delete }
  map.edit_post ':category/:id/edit', :controller => 'posts', :action => 'edit'
  
  map.reply ':category/:post/:id', :controller => 'replies', :action => 'show', :conditions => { :method => :get }
  map.update_reply ':category/:post/:id', :controller => 'replies', :action => 'update', :conditions => { :method => :put }
  map.edit_reply ':category/:post/:id/edit', :controller => 'replies', :action => 'edit'
  
end