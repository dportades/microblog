class PostTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.integer :user_id
  		t.string :blog_post
  		t.string :blog_media_url
  		t.datetime :blog_post_date
  		t.integer :blog_post_count
  	end
  end
end
