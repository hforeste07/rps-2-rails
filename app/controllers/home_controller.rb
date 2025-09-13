class Home < ApplicationController
  def welcome
    render({ :template => "views/homepage" })
  end
end
