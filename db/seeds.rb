user_1 = User.create do |u|
  u.email = 'jesse'
  u.username = 'jesse'
  u.password = 'jesse'
end

user_2 = User.create do |u|
  u.email = 'sam'
  u.username = 'sam'
  u.password = 'sam'
end

user_3 = User.create do |u|
  u.email = 'anh'
  u.username = 'anh'
  u.password = 'anh'
end

user_4 = User.create do |u|
  u.email = 'julie'
  u.username = 'julie'
  u.password = 'julie'
end

Relationship.create(follower_id: user_1.id, followed_id: user_2.id)
Relationship.create(follower_id: user_1.id, followed_id: user_3.id)
Relationship.create(follower_id: user_1.id, followed_id: user_4.id)
binding.pry
