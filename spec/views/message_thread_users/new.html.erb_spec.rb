require 'rails_helper'

RSpec.describe "message_thread_users/new", type: :view do
  before(:each) do
    assign(:message_thread_user, MessageThreadUser.new(
      :message_thread => nil,
      :user => nil
    ))
  end

  it "renders new message_thread_user form" do
    render

    assert_select "form[action=?][method=?]", message_thread_users_path, "post" do

      assert_select "input#message_thread_user_message_thread_id[name=?]", "message_thread_user[message_thread_id]"

      assert_select "input#message_thread_user_user_id[name=?]", "message_thread_user[user_id]"
    end
  end
end
