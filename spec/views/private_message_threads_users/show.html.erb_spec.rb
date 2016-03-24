require 'rails_helper'

RSpec.describe "private_message_threads_users/show", type: :view do
  before(:each) do
    @private_message_threads_user = assign(:private_message_threads_user, PrivateMessageThreadsUser.create!(
      :user => nil,
      :private_message_thread => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
