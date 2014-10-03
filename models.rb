class User < ActiveRecord::Base
	has_one :account
	has_many :posts
end

class Account < ActiveRecord::Base
	belongs_to :user
end

class Post < ActiveRecord::Base
	belongs_to :user
end

# move methods over to this file
