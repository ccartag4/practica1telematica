require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :longitude => 1.5,
      :latitude => 1.5,
      :User => nil
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input[name=?]", "location[longitude]"

      assert_select "input[name=?]", "location[latitude]"

      assert_select "input[name=?]", "location[User_id]"
    end
  end
end
