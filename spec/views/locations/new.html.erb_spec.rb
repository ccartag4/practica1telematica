require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :longitude => 1.5,
      :latitude => 1.5,
      :User => nil
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input[name=?]", "location[longitude]"

      assert_select "input[name=?]", "location[latitude]"

      assert_select "input[name=?]", "location[User_id]"
    end
  end
end
