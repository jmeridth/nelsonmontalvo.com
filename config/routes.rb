ActionController::Routing::Routes.draw do |map|
  map.connect '', :controller => 'memorium', :action => 'index'
  map.connect 'home', :controller => 'memorium', :action => 'index'
  map.connect 'last_picture', :controller => 'memorium', :action => 'picture'
  map.connect 'funeral', :controller => 'memorium', :action => 'funeral'
  map.connect 'obituary', :controller => 'memorium', :action => 'obituary'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
