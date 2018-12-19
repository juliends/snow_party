class Players::BaseController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_player!


  protected

  def pundit_user
    current_player
  end
end
