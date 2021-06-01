Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/add", {:controller => "math", :action => "add_input"})
  
  get("/wizard_add", {:controller => "math", :action => "add_results"})

  get("street_to_coords/new", {:controller => "apis", :action => "street_to_coords_input"})

  get("street_to_coords/results", {:controller => "apis", :action => "street_to_coords_results"})

  get("/muggle_translate", {:controller => "apis", :action => "text_translate"})

  get("/wizard_translate", {:controller => "apis", :action => "text_translate_results"})
  
  
end
