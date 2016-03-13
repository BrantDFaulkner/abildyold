require 'rails_helper'

RSpec.describe "requests/new", type: :view do
  before(:each) do
    assign(:request, Request.new(
      :user => nil,
      :goal => nil,
      :status => "MyString"
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input#request_user_id[name=?]", "request[user_id]"

      assert_select "input#request_goal_id[name=?]", "request[goal_id]"

      assert_select "input#request_status[name=?]", "request[status]"
    end
  end
end
