require 'rails_helper'

RSpec.describe "message_thread_users/index", type: :view do
  before(:each) do
    assign(:message_thread_users, [
      MessageThreadUser.create!(
        :message_thread => nil,
        :user => nil
      ),
      MessageThreadUser.create!(
        :message_thread => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of message_thread_users" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
