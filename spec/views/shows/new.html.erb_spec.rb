require 'rails_helper'

RSpec.describe "shows/new", type: :view do
  before(:each) do
    assign(:show, Show.new(
      :title => "MyString",
      :episodes => 1
    ))
  end

  it "renders new show form" do
    render

    assert_select "form[action=?][method=?]", shows_path, "post" do

      assert_select "input#show_title[name=?]", "show[title]"

      assert_select "input#show_episodes[name=?]", "show[episodes]"
    end
  end
end
