require 'rails_helper'

RSpec.describe "message_threads/edit", type: :view do
  before(:each) do
    @message_thread = assign(:message_thread, MessageThread.create!())
  end

  it "renders the edit message_thread form" do
    render

    assert_select "form[action=?][method=?]", message_thread_path(@message_thread), "post" do
    end
  end
end
