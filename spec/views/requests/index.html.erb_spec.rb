require 'rails_helper'

RSpec.describe "requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :user => nil,
        :goal => nil,
        :status => "Status"
      ),
      Request.create!(
        :user => nil,
        :goal => nil,
        :status => "Status"
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
