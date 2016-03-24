require 'rails_helper'

RSpec.describe "PrivateMessageThreadsUsers", type: :request do
  describe "GET /private_message_threads_users" do
    it "works! (now write some real specs)" do
      get private_message_threads_users_path
      expect(response).to have_http_status(200)
    end
  end
end
