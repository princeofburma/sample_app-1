class Group < ActiveRecord::Base
  attr_accessible  :city, :dob, :photo,:group_name,:checking_number, :group_type, :routing_number, :state, :street_address, :telephone, :title, :user_id, :zip
  belongs_to :user
end
