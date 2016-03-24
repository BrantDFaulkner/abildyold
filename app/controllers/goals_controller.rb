class GoalsController < ApplicationController
  before_action :set_goal, only: [:edit, :update, :destroy]
  before_action :set_goal_includes, only: [:show]


  # GET /goals
  # GET /goals.json
  def index
    @goals = Goal.all
  end

  # GET /goals/1
  def show
    #if currrent user !particpant && goal open for new participants
    @request = Request.new
    #end
    @participations = @goal.participations
    @requests = @goal.requests

    @goal_requested = current_user.goal_requested?(@goal.id) if user_signed_in?

  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  def create
    @goal = Goal.new(goal_params)
    if @goal.save_create_participation(@goal, current_user.id)
      redirect_to @goal, notice: 'Goal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /goals/1
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_includes
      @goal = Goal.includes(:participations, :requests).where(id: params[:id]).first
    end

    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:title, :description, :status, :category)
    end
end
