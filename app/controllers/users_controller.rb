class UsersController < ApplicationController
  before_action :set_user, only: [:home, :show]

  def show
    if @user == current_user
      @threads = current_user.message_threads(include: :messages)
      render "home"
    else
      @message = current_user.messages.new
    end
  end

private

  def set_user
    @user = User.find(params[:id])
  end

end