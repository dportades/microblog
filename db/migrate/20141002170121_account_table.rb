class AccountTable < ActiveRecord::Migration
  def change
  	create_table :accounts do |t|
  		t.integer :user_id
  		t.string :profile_image_url
  		t.string :profile_url
  		t.boolean :active_status
  		t.datetime :created_at
  		t.integer :follower_count
  		t.integer :following_count
  	end
  end
end
