require 'rails_helper'

RSpec.describe "actors/index", type: :view do
  before(:each) do
    assign(:actors, [
      Actor.create!(
        :name => "Name"
      ),
      Actor.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of actors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
