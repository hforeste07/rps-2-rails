class Home < ApplicationController
  def welcome
    render({ :template => "homepage.html" })
  end
end
