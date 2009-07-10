ActionController::Routing::Routes.draw do |map|
  
  # for the resources controller, assume the default action is 'show', so that resource IDs don't need the controller name in them
  # When using this in your own application, watch out for possible clashes with routes for other controllers
  map.connect 'resources/:id', :controller => 'resources', :action=>'show'
  map.connect 'resources/:id.:format', :controller => 'resources', :action=>'show'

end
