# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  email: 'briancc23@yahoo.com',
  password: 'password1',
  first_name: 'Brian',
  last_name: 'Chang',
  username: 'briancc23'
)
######################   Separate Users   #####################################
User.create(
  email: 'jeffreytai@ucla.edu',
  password: 'password2',
  first_name: 'Jeffrey',
  last_name: 'Tai',
  username: 'jeffreytai'
)
<<<<<<< HEAD
######################   Separate Users   #####################################
User.create(
  email: 'jakemoghtader@ucla.edu',
  password: 'password3',
  first_name: 'Jake',
  last_name: 'Moghtader',
  username: 'jakeM'
)
######################   Separate Users   #####################################
User.create(
  email: 'gabriellayang@ucla.edu',
  password: 'password4',
  first_name: 'Gabriella',
  last_name: 'Yang',
  username: 'GabbyYang'
)
######################   Separate Users   #####################################
User.create(
  email: 'mariagarcia@ucla.edu',
  password: 'password5',
  first_name: 'Maria',
  last_name: 'Garcia',
  username: 'MG93'
)
######################   Separate Users   #####################################
User.create(
  email: 'jamessmith@gmail.com',
  password: 'password6',
  first_name: 'James',
  last_name: 'Smith',
  username: 'JSmith'
)
######################   Separate Users   #####################################
User.create(
  email: 'SJ34567@hotmail.com',
  password: 'password7',
  first_name: 'Sophia',
  last_name: 'Jackson',
  username: 'LovesToTravel'
)
######################   Separate Users   #####################################
User.create(
  email: 'MikeL@yahoo.com',
  password: 'password8',
  first_name: 'Michael',
  last_name: 'Long',
  username: 'Mr. L'
)
######################   Separate Users   #####################################
User.create(
  email: 'LWood@gmail.com',
  password: 'password9',
  first_name: 'Lucas',
  last_name: 'Wood',
  username: 'account456'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Pacific Trip',
  description: 'Road trip up the coast of California',
  tags: '#westcoast',
  postdate: Time.now,
  user: User.where(username: 'account456').first
)

Location.create(
  trip_id: Trip.where(title: 'Pacific Trip').first.id,
  lat: 32.7150,
  lng: -117.1625,
  name: 'San Diego'
)

Location.create(
  trip_id: Trip.where(title: 'Pacific Trip').first.id,
  lat: 34.0500,
  lng: -118.2500,
  name: 'Los Angeles'
)

Location.create(
  trip_id: Trip.where(title: 'Pacific Trip').first.id,
  lat: 37.7833,
  lng: -122.4167,
  name: 'San Francisco'
)

Comment.create(
  trip_id: Trip.where(title: 'Pacific Trip').first.id,
  body: 'not fun',
)

Rating.create(
  trip_id: Trip.where(title: 'Pacific Trip').first.id,
  score: 2
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Hawaii',
  description: "Traveled across the Big Island of Hawaii",
  tags: '#beaches, #palmtrees',
  postdate: Time.now,
  user: User.where(username: 'account456').first
)

Location.create(
  trip_id: Trip.where(title: 'Hawaii').first.id,
  lat: 19.6500,
  lng: -155.9942,
  name: 'Kailua-Kona'
)

Location.create(
  trip_id: Trip.where(title: 'Hawaii').first.id,
  lat: 19.7056,
  lng: -155.0858,
  name: 'Hilo'
)

Comment.create(
  trip_id: Trip.where(title: 'Hawaii').first.id,
  body: 'Perfect Weather',
)

Comment.create(
  trip_id: Trip.where(title: 'Hawaii').first.id,
  body: 'Exquisite cuisine',
)

Rating.create(
  trip_id: Trip.where(title: 'Hawaii').first.id,
  score: 5
)

######################   Separate Users   #####################################
User.create(
  email: 'oliviathompson@ucla.edu',
  password: 'password10',
  first_name: 'Olivia',
  last_name: 'Thompson',
  username: 'OlvThmp00'
)
=======

# # Following relationships
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
>>>>>>> 293a2a135aa0abc38d3af8da315493a0273b2827
