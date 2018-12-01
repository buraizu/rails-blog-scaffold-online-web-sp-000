require 'rails_helper'

RSpec.describe "shows/show", type: :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :title => "Title",
      :episodes => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
