require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      :message_thread => nil,
      :user => nil,
      :content => "MyText"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input#message_message_thread_id[name=?]", "message[message_thread_id]"

      assert_select "input#message_user_id[name=?]", "message[user_id]"

      assert_select "textarea#message_content[name=?]", "message[content]"
    end
  end
end
