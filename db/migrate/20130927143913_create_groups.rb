class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :user_id
      t.date :dob
      t.string :title
      t.string :telephone
      t.string :group_name
      t.string :group_type
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :checking_number
      t.string :routing_number

      t.timestamps
    end
  end
end
