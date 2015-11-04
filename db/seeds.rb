# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  email: 'testuser@hitchhike.com',
  password: 'password',
  first_name: 'Test',
  last_name: 'User',
  username: 'testuser'
)

User.create(
  email: 'jeffreytai@ucla.edu',
  password: 'password',
  first_name: 'Jeffrey',
  last_name: 'Tai',
  username: 'jeffreytai'
)

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
