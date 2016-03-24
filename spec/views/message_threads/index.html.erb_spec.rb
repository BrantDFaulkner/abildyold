require 'rails_helper'

RSpec.describe "message_threads/index", type: :view do
  before(:each) do
    assign(:message_threads, [
      MessageThread.create!(),
      MessageThread.create!()
    ])
  end

  it "renders a list of message_threads" do
    render
  end
end
