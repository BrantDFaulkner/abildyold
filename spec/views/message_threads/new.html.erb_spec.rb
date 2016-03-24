require 'rails_helper'

RSpec.describe "message_threads/new", type: :view do
  before(:each) do
    assign(:message_thread, MessageThread.new())
  end

  it "renders new message_thread form" do
    render

    assert_select "form[action=?][method=?]", message_threads_path, "post" do
    end
  end
end
