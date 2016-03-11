class ParticipationsController < ApplicationController

  def index
    @goals= current_user.goals
  end

end
