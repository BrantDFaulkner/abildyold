require 'rails_helper'

RSpec.describe "requests/edit", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :user => nil,
      :goal => nil,
      :status => "MyString"
    ))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", request_path(@request), "post" do

      assert_select "input#request_user_id[name=?]", "request[user_id]"

      assert_select "input#request_goal_id[name=?]", "request[goal_id]"

      assert_select "input#request_status[name=?]", "request[status]"
    end
  end
end
