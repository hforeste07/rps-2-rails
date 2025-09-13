class Home < ApplicationController
  def welcome
    render({ :template => "/views/homepage.html.erb" })
  end
end
