require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :longitude => 2.5,
        :latitude => 3.5,
        :User => nil
      ),
      Location.create!(
        :longitude => 2.5,
        :latitude => 3.5,
        :User => nil
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
