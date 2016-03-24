require 'rails_helper'

RSpec.describe "private_message_states/index", type: :view do
  before(:each) do
    assign(:private_message_states, [
      PrivateMessageState.create!(
        :private_messag => nil,
        :user => nil,
        :action => "Action"
      ),
      PrivateMessageState.create!(
        :private_messag => nil,
        :user => nil,
        :action => "Action"
      )
    ])
  end

  it "renders a list of private_message_states" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Action".to_s, :count => 2
  end
end
