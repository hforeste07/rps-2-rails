Rails.application.routes.draw do
  get("/rock", { :controller => "rock", :action => "move" })
  get("/paper", { :controller => "paper", :action => "move" })
  get("/scissors", { :controller => "scissors", :action => "move" })
  get("/", { :controller => "homepage", :action => "instructions" })
end
