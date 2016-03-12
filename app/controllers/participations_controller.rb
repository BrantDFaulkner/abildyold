class ParticipationsController < ApplicationController

  def index
    @goals = current_user.goals
  end

  def create
    @participation = Participation.new(participation_params)
    if @participation.save
      redirect_to :back, notice: 'You have requested to join this goal.'
    else
      redirect_to :back, notice: 'You are unable to join this goal.'
    end
  end

  private
    def participation_params
      params.require(:participation).permit(:goal_id, :user_id, :status)
    end

end
