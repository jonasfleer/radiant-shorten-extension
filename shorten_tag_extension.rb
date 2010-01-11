# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class ShortenTagExtension < Radiant::Extension
  version "1.0"
  description "Shortens a text to a given number of characters"
  url "http://www.norocketscience.net"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :shorten_tag
  #   end
  # end
  
  def activate
    Page.send :include, ShortenTag
  end
  
  def deactivate
    # admin.tabs.remove "Shorten Tag"
  end
  
end
