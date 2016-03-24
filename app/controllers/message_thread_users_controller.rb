class MessageThreadUsersController < ApplicationController
  before_action :set_message_thread_user, only: [:show, :edit, :update, :destroy]

  # GET /message_thread_users
  # GET /message_thread_users.json
  def index
    @message_thread_users = MessageThreadUser.all
  end

  # GET /message_thread_users/1
  # GET /message_thread_users/1.json
  def show
  end

  # GET /message_thread_users/new
  def new
    @message_thread_user = MessageThreadUser.new
  end

  # GET /message_thread_users/1/edit
  def edit
  end

  # POST /message_thread_users
  # POST /message_thread_users.json
  def create
    @message_thread_user = MessageThreadUser.new(message_thread_user_params)

    respond_to do |format|
      if @message_thread_user.save
        format.html { redirect_to @message_thread_user, notice: 'Message thread user was successfully created.' }
        format.json { render :show, status: :created, location: @message_thread_user }
      else
        format.html { render :new }
        format.json { render json: @message_thread_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_thread_users/1
  # PATCH/PUT /message_thread_users/1.json
  def update
    respond_to do |format|
      if @message_thread_user.update(message_thread_user_params)
        format.html { redirect_to @message_thread_user, notice: 'Message thread user was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_thread_user }
      else
        format.html { render :edit }
        format.json { render json: @message_thread_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_thread_users/1
  # DELETE /message_thread_users/1.json
  def destroy
    @message_thread_user.destroy
    respond_to do |format|
      format.html { redirect_to message_thread_users_url, notice: 'Message thread user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_thread_user
      @message_thread_user = MessageThreadUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_thread_user_params
      params.require(:message_thread_user).permit(:message_thread_id, :user_id)
    end
end
