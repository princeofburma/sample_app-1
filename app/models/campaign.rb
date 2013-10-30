class Campaign < ActiveRecord::Base
  attr_accessible :content, :user_id,:city, :dob, :photo,:group_name,:checking_number, :group_type, :routing_number, :state, :street_address, :telephone, :title, :zip
belongs_to :user
end
