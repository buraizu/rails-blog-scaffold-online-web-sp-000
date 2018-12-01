require 'rails_helper'

RSpec.describe "actors/edit", type: :view do
  before(:each) do
    @actor = assign(:actor, Actor.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit actor form" do
    render

    assert_select "form[action=?][method=?]", actor_path(@actor), "post" do

      assert_select "input#actor_name[name=?]", "actor[name]"
    end
  end
end
