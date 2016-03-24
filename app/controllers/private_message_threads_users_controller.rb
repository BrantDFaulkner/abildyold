class PrivateMessageThreadsUsersController < ApplicationController
  before_action :set_private_message_threads_user, only: [:show, :edit, :update, :destroy]

  # GET /private_message_threads_users
  # GET /private_message_threads_users.json
  def index
    @private_message_threads_users = PrivateMessageThreadsUser.all
  end

  # GET /private_message_threads_users/1
  # GET /private_message_threads_users/1.json
  def show
  end

  # GET /private_message_threads_users/new
  def new
    @private_message_threads_user = PrivateMessageThreadsUser.new
  end

  # GET /private_message_threads_users/1/edit
  def edit
  end

  # POST /private_message_threads_users
  # POST /private_message_threads_users.json
  def create
    @private_message_threads_user = PrivateMessageThreadsUser.new(private_message_threads_user_params)

    respond_to do |format|
      if @private_message_threads_user.save
        format.html { redirect_to @private_message_threads_user, notice: 'Private message threads user was successfully created.' }
        format.json { render :show, status: :created, location: @private_message_threads_user }
      else
        format.html { render :new }
        format.json { render json: @private_message_threads_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_message_threads_users/1
  # PATCH/PUT /private_message_threads_users/1.json
  def update
    respond_to do |format|
      if @private_message_threads_user.update(private_message_threads_user_params)
        format.html { redirect_to @private_message_threads_user, notice: 'Private message threads user was successfully updated.' }
        format.json { render :show, status: :ok, location: @private_message_threads_user }
      else
        format.html { render :edit }
        format.json { render json: @private_message_threads_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_message_threads_users/1
  # DELETE /private_message_threads_users/1.json
  def destroy
    @private_message_threads_user.destroy
    respond_to do |format|
      format.html { redirect_to private_message_threads_users_url, notice: 'Private message threads user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_message_threads_user
      @private_message_threads_user = PrivateMessageThreadsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_message_threads_user_params
      params.require(:private_message_threads_user).permit(:user_id, :private_message_thread_id)
    end
end
