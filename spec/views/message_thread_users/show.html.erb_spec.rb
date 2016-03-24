require 'rails_helper'

RSpec.describe "message_thread_users/show", type: :view do
  before(:each) do
    @message_thread_user = assign(:message_thread_user, MessageThreadUser.create!(
      :message_thread => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
