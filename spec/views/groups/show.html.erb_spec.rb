require 'spec_helper'

describe "groups/show" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/Telephone/)
    rendered.should match(/Group Name/)
    rendered.should match(/Group Type/)
    rendered.should match(/Street Address/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip/)
    rendered.should match(/Checking Number/)
    rendered.should match(/Routing Number/)
  end
end
