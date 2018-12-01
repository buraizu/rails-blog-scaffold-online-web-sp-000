require 'rails_helper'

RSpec.describe "shows/index", type: :view do
  before(:each) do
    assign(:shows, [
      Show.create!(
        :title => "Title",
        :episodes => 2
      ),
      Show.create!(
        :title => "Title",
        :episodes => 2
      )
    ])
  end

  it "renders a list of shows" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
