require 'rails_helper'

RSpec.describe "MessageThreads", type: :request do
  describe "GET /message_threads" do
    it "works! (now write some real specs)" do
      get message_threads_path
      expect(response).to have_http_status(200)
    end
  end
end
