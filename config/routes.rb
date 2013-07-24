PortrayApp::Application.routes.draw do

get "/about_us", :controller => "main", :action => :about_us, :as => :about

get "/our_partner", :controller => "main", :action => :our_partner, :as => :partner

get "/advertising_solutions", :controller => "main", :action => :advertising_solutions, :as => :ads

get "/cafeteria_solutions", :controller => "main", :action => :cafeteria_solutions, :as => :cafs

get "/", :controller => "main", :action => :home, :as => :root

get "/contact" => "main#contact", :action => :home, :as => :contact

get "/thanks", :controller => "main", :action => :thanks, :as => :site_thanks

match "/thanks" => "main#thanks", as: "site_thanks", via: :POST

end
