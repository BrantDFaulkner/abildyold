require 'rails_helper'

RSpec.describe "message_threads/show", type: :view do
  before(:each) do
    @message_thread = assign(:message_thread, MessageThread.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
