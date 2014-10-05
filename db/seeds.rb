# --------test users----------------
user_1 = User.create do |u|
  u.fname = "Mindy"
  u.lname = "Kaling"
  u.username = "Mindy"
  u.email = "mindy@gmail.com"
  u.password = "mindy"
  u.location = "Los Angeles"
end

user_2 = User.create do |u|
  u.fname = "Fred"
  u.lname = "Rodgers"
  u.username = "Mr. Rodgers"
  u.email = "fred@gmail.com"
  u.password = "fred"
  u.location = "The Neighborhood"
end

user_3 = User.create do |u|
  u.fname = "Martin"
  u.lname = "Freeman"
  u.username = "Bilbo"
  u.email = "martin@gmail.com"
  u.password = "martin"
  u.location = "The Shire"
end

user_4 = User.create do |u|
  u.fname = "Hodor"
  u.lname = "Hodor"
  u.username = "Hodor"
  u.email = "hodor@gmail.com"
  u.password = "hodor"
  u.location = "Westeros"
end

user_5 = User.create do |u|
  u.fname = "Steve"
  u.lname = "Urkle"
  u.username = "Urkle"
  u.email = "urkle@gmail.com"
  u.password = "urkle"
  u.location = "Chicago"
end

user_6 = User.create do |u|
  u.fname = "Piper"
  u.lname = "Chapman"
  u.username = "Chapman"
  u.email = "piper@gmail.com"
  u.password = "piper"
  u.location = "Litchfield"
end

user_7 = User.create do |u|
  u.fname = "Frank"
  u.lname = "Underwood"
  u.username = "Mr. President"
  u.email = "frank@gmail.com"
  u.password = "frank"
  u.location = "White House"
end

user_8 = User.create do |u|
  u.fname = "Lena"
  u.lname = "Dunham"
  u.username = "Lena"
  u.email = "lena@gmail.com"
  u.password = "lena"
  u.location = "NYC"
end

user_9 = User.create do |u|
  u.fname = "Zooey"
  u.lname = "Deschanel"
  u.username = "New Girl"
  u.email = "zooey@gmail.com"
  u.password = "zooey"
  u.location = "Los Angeles"
end

user_10 = User.create do |u|
  u.fname = "Jeremy"
  u.lname = "Piven"
  u.username = "Ari"
  u.email = "jeremy@gmail.com"
  u.password = "jeremy"
  u.location = "NYC"
end

#-------test accounts --------------------

acct_1 = Account.create do |a|
  a.profile_image_url = "http://www.glamour.com/images/entertainment/2013/03/mindy-kaling-cover-square-w352.jpg"
  a.user_id = 90
end

acct_2 = Account.create do |a|
  a.profile_image_url = "http://www.snappynewday.com/wp-content/gallery/Rogers/fred-rogers-4715.jpg"
  a.user_id = 91
end

acct_3 = Account.create do |a|
  a.profile_image_url = "http://i4.mirror.co.uk/incoming/article1333925.ece/alternates/s615/The%20Hobbit%20An%20Unexpected%20Journey"
  a.user_id = 92
end

acct_4 = Account.create do |a|
  a.profile_image_url ="http://img1.wikia.nocookie.net/__cb20130902151852/gameofthrones/de/images/5/52/Profil-Hodor-1.jpg"
  a.user_id = 93
end

acct_5 = Account.create do |a|
  a.profile_image_url = "http://static.comicvine.com/uploads/scale_super/10/103176/2514391-354955135_f1245a6470_371x414.jpg"
  a.user_id = 94
end

acct_6 = Account.create do |a|
  a.profile_image_url = "http://www.fandomisinthedetails.com/uploads/1/9/2/0/19201953/9606121_orig.jpg?324"
  a.user_id = 95
end

acct_7 = Account.create do |a|
  a.profile_image_url = "http://img2.wikia.nocookie.net/__cb20140227094826/house-of-cards/images/d/df/Frank_Underwood_3.jpg"
  a.user_id = 96
end

acct_8 = Account.create do |a|
  a.profile_image_url = "http://cdn.breitbart.com/mediaserver/Breitbart/Big-Hollywood/2013/01/18/girls-conservatives/Girls%20Season%202.jpg"
  a.user_id = 97
end

acct_9 = Account.create do |a|
  a.profile_image_url = "http://hollywood-treatment.com/blog/img/2012/02/Zooey-Deschanel.jpg"
  a.user_id = 98
end

acct_10 = Account.create do |a|
  a.profile_image_url = "http://www.funnelholic.com/wp-content/uploads/2014/07/Ari-Gold.jpg"
  a.user_id = 99
end

# -------- test post---------------
post_1 = Post.create do |p|
  p.user_id = 90
  p.blog_post = "Hi there, it's Mindy!"
end

post_2 = Post.create do |p|
  p.user_id = 91
  p.blog_post = "It's a beautiful day in the neighborhood."
end

post_3 = Post.create do |p|
  p.user_id = 92
  p.blog_media_url = "http://wallalay.com/wp-content/uploads/2014/02/Martin-Freeman-35.jpg"
end

post_4 = Post.create do |p|
  p.user_id = 93
  p.blog_post = "Hodor Hodor Hodor Hodor Hodor."
end

post_5 = Post.create do |p|
  p.user_id = 94
  p.blog_media_url = "http://www.bluntbit.com/wp-content/uploads/2013/12/original-hipster.jpg"
end

post_6 = Post.create do |p|
  p.user_id = 95
  p.blog_media_url = "http://uproxx.files.wordpress.com/2014/06/piper-pimp-2.gif?w=650&h=650"
end

post_7 = Post.create do |p|
  p.user_id = 96
  p.blog_post = "That's how you devour a whale. One bite at a time."
end

post_8 = Post.create do |p|
  p.user_id = 97
  p.blog_media_url = "http://ecochainofdating.com/blog/wp-content/uploads/2013/03/tumblr_new-Lena-Picture-March-18qbbcqko1_500.gif"
end

post_9 = Post.create do |p|
  p.user_id = 98
  p.blog_post = "Only you know what you can do and can’t do."
end

post_10 = Post.create do |p|
  p.user_id = 99
  p.blog_post = "Enjoy life, what else."
end

# ------------relationships----------------

user_1.follow(user_2.id)
user_1.follow(user_3.id)
user_1.follow(user_4.id)
user_1.follow(user_5.id)
user_1.follow(user_6.id)
user_1.follow(user_7.id)
user_1.follow(user_8.id)
user_1.follow(user_9.id)
user_1.follow(user_10.id)

user_2.follow(user_1.id)
user_2.follow(user_3.id)
user_2.follow(user_4.id)
user_2.follow(user_5.id)
user_2.follow(user_6.id)
user_2.follow(user_7.id)
user_2.follow(user_8.id)
user_2.follow(user_9.id)
user_2.follow(user_10.id)

user_3.follow(user_1.id)
user_3.follow(user_2.id)
user_3.follow(user_4.id)
user_3.follow(user_5.id)
user_3.follow(user_6.id)
user_3.follow(user_7.id)
user_3.follow(user_8.id)
user_3.follow(user_9.id)
user_3.follow(user_10.id)

user_4.follow(user_1.id)
user_4.follow(user_2.id)
user_4.follow(user_3.id)
user_4.follow(user_5.id)
user_4.follow(user_6.id)
user_4.follow(user_7.id)
user_4.follow(user_8.id)
user_4.follow(user_9.id)
user_4.follow(user_10.id)

user_5.follow(user_1.id)
user_5.follow(user_2.id)
user_5.follow(user_3.id)
user_5.follow(user_4.id)
user_5.follow(user_6.id)
user_5.follow(user_7.id)
user_5.follow(user_8.id)
user_5.follow(user_9.id)
user_5.follow(user_10.id)

user_6.follow(user_1.id)
user_6.follow(user_2.id)
user_6.follow(user_3.id)
user_6.follow(user_4.id)
user_6.follow(user_5.id)
user_6.follow(user_7.id)
user_6.follow(user_8.id)
user_6.follow(user_9.id)
user_6.follow(user_10.id)