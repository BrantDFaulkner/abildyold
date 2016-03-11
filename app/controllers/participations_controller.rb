class ParticipationsController < ApplicationController

  def index
    @goals = current_user.goals
  end

  def create
    #!flag
    redirect_to :back
  end

end
