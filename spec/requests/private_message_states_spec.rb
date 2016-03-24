require 'rails_helper'

RSpec.describe "PrivateMessageStates", type: :request do
  describe "GET /private_message_states" do
    it "works! (now write some real specs)" do
      get private_message_states_path
      expect(response).to have_http_status(200)
    end
  end
end
