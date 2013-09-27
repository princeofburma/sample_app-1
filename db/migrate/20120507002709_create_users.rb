class CreateUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name
      t.string :email
      t.string :company


      t.timestamps
    end
  end
end
