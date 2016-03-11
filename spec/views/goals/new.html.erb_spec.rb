require 'rails_helper'

RSpec.describe "goals/new", type: :view do
  before(:each) do
    assign(:goal, Goal.new(
      :title => "MyString",
      :description => "MyText",
      :status => "MyString",
      :category => "MyString"
    ))
  end

  it "renders new goal form" do
    render

    assert_select "form[action=?][method=?]", goals_path, "post" do

      assert_select "input#goal_title[name=?]", "goal[title]"

      assert_select "textarea#goal_description[name=?]", "goal[description]"

      assert_select "input#goal_status[name=?]", "goal[status]"

      assert_select "input#goal_category[name=?]", "goal[category]"
    end
  end
end
