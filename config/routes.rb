Rails.application.routes.draw do
  get("/", { :controller => "home", :action => "welcome" })

  get("/rock", { :controller => "move", :action => "rock" })

  get("/scissors", { :controller => "move", :action => "scissors" })

  get("/paper", { :controller => "move", :action => "paper" })
end
