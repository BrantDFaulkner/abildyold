require 'rails_helper'

RSpec.describe "goals/index", type: :view do
  before(:each) do
    assign(:goals, [
      Goal.create!(
        :title => "Title",
        :description => "MyText",
        :status => "Status",
        :category => "Category"
      ),
      Goal.create!(
        :title => "Title",
        :description => "MyText",
        :status => "Status",
        :category => "Category"
      )
    ])
  end

  it "renders a list of goals" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
