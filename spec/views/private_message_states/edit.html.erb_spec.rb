require 'rails_helper'

RSpec.describe "private_message_states/edit", type: :view do
  before(:each) do
    @private_message_state = assign(:private_message_state, PrivateMessageState.create!(
      :private_messag => nil,
      :user => nil,
      :action => "MyString"
    ))
  end

  it "renders the edit private_message_state form" do
    render

    assert_select "form[action=?][method=?]", private_message_state_path(@private_message_state), "post" do

      assert_select "input#private_message_state_private_messag_id[name=?]", "private_message_state[private_messag_id]"

      assert_select "input#private_message_state_user_id[name=?]", "private_message_state[user_id]"

      assert_select "input#private_message_state_action[name=?]", "private_message_state[action]"
    end
  end
end
