Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("add", {:controller => "math", :action => "add_input"})
  
  get("add_results", {:controller => "math", :action => "add_results"})
end
