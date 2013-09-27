require 'spec_helper'

describe "groups/new" do
  before(:each) do
    assign(:group, stub_model(Group,
      :user_id => 1,
      :title => "MyString",
      :telephone => "MyString",
      :group_name => "MyString",
      :group_type => "MyString",
      :street_address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :checking_number => "MyString",
      :routing_number => "MyString"
    ).as_new_record)
  end

  it "renders new group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => groups_path, :method => "post" do
      assert_select "input#group_user_id", :name => "group[user_id]"
      assert_select "input#group_title", :name => "group[title]"
      assert_select "input#group_telephone", :name => "group[telephone]"
      assert_select "input#group_group_name", :name => "group[group_name]"
      assert_select "input#group_group_type", :name => "group[group_type]"
      assert_select "input#group_street_address", :name => "group[street_address]"
      assert_select "input#group_city", :name => "group[city]"
      assert_select "input#group_state", :name => "group[state]"
      assert_select "input#group_zip", :name => "group[zip]"
      assert_select "input#group_checking_number", :name => "group[checking_number]"
      assert_select "input#group_routing_number", :name => "group[routing_number]"
    end
  end
end
