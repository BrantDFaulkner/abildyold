require 'rails_helper'

RSpec.describe "private_message_threads_users/index", type: :view do
  before(:each) do
    assign(:private_message_threads_users, [
      PrivateMessageThreadsUser.create!(
        :user => nil,
        :private_message_thread => nil
      ),
      PrivateMessageThreadsUser.create!(
        :user => nil,
        :private_message_thread => nil
      )
    ])
  end

  it "renders a list of private_message_threads_users" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
