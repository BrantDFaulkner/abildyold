require 'rails_helper'

RSpec.describe "private_message_states/show", type: :view do
  before(:each) do
    @private_message_state = assign(:private_message_state, PrivateMessageState.create!(
      :private_messag => nil,
      :user => nil,
      :action => "Action"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Action/)
  end
end
