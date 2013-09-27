require 'spec_helper'

describe "groups/index" do
  before(:each) do
    assign(:groups, [
      stub_model(Group,
        :user_id => 1,
        :title => "Title",
        :telephone => "Telephone",
        :group_name => "Group Name",
        :group_type => "Group Type",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :checking_number => "Checking Number",
        :routing_number => "Routing Number"
      ),
      stub_model(Group,
        :user_id => 1,
        :title => "Title",
        :telephone => "Telephone",
        :group_name => "Group Name",
        :group_type => "Group Type",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :checking_number => "Checking Number",
        :routing_number => "Routing Number"
      )
    ])
  end

  it "renders a list of groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Group Name".to_s, :count => 2
    assert_select "tr>td", :text => "Group Type".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Checking Number".to_s, :count => 2
    assert_select "tr>td", :text => "Routing Number".to_s, :count => 2
  end
end
