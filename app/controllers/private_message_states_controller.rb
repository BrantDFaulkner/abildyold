class PrivateMessageStatesController < ApplicationController
  before_action :set_private_message_state, only: [:show, :edit, :update, :destroy]

  # GET /private_message_states
  # GET /private_message_states.json
  def index
    @private_message_states = PrivateMessageState.all
  end

  # GET /private_message_states/1
  # GET /private_message_states/1.json
  def show
  end

  # GET /private_message_states/new
  def new
    @private_message_state = PrivateMessageState.new
  end

  # GET /private_message_states/1/edit
  def edit
  end

  # POST /private_message_states
  # POST /private_message_states.json
  def create
    @private_message_state = PrivateMessageState.new(private_message_state_params)

    respond_to do |format|
      if @private_message_state.save
        format.html { redirect_to @private_message_state, notice: 'Private message state was successfully created.' }
        format.json { render :show, status: :created, location: @private_message_state }
      else
        format.html { render :new }
        format.json { render json: @private_message_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_message_states/1
  # PATCH/PUT /private_message_states/1.json
  def update
    respond_to do |format|
      if @private_message_state.update(private_message_state_params)
        format.html { redirect_to @private_message_state, notice: 'Private message state was successfully updated.' }
        format.json { render :show, status: :ok, location: @private_message_state }
      else
        format.html { render :edit }
        format.json { render json: @private_message_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_message_states/1
  # DELETE /private_message_states/1.json
  def destroy
    @private_message_state.destroy
    respond_to do |format|
      format.html { redirect_to private_message_states_url, notice: 'Private message state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_message_state
      @private_message_state = PrivateMessageState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_message_state_params
      params.require(:private_message_state).permit(:private_messag_id, :user_id, :action)
    end
end
