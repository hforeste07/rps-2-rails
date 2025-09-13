class HomepageController < ApplicationController
  def instructions
    render({ :template => "game_templates/homepage" })
  end
end
