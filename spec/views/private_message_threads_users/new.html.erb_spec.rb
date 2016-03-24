require 'rails_helper'

RSpec.describe "private_message_threads_users/new", type: :view do
  before(:each) do
    assign(:private_message_threads_user, PrivateMessageThreadsUser.new(
      :user => nil,
      :private_message_thread => nil
    ))
  end

  it "renders new private_message_threads_user form" do
    render

    assert_select "form[action=?][method=?]", private_message_threads_users_path, "post" do

      assert_select "input#private_message_threads_user_user_id[name=?]", "private_message_threads_user[user_id]"

      assert_select "input#private_message_threads_user_private_message_thread_id[name=?]", "private_message_threads_user[private_message_thread_id]"
    end
  end
end
