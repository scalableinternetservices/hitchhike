# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
######################   Separate Users   #####################################
User.create(
  email: 'briancc23@yahoo.com',
  password: 'password1',
  first_name: 'Brian',
  last_name: 'Chang',
  username: 'briancc23'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Yellowstone',
  description: 'Visited Yellowstone National Park along wtih two other nearby reservations',
  tags: '#yellowstone #nature',
  postdate: Time.now,
  user: User.where(username: 'briancc23').first
)

Location.create(
  trip_id: Trip.where(title: 'Yellowstone').first.id,
  lat: 44.6000,
  lng: -110.5000,
  name: 'Yellowstone National Park'
)

Location.create(
  trip_id: Trip.where(title: 'Yellowstone').first.id,
  lat: 43.8333,
  lng: -110.7008,
  name: 'Grand Teton National Park'
)

Location.create(
  trip_id: Trip.where(title: 'Yellowstone').first.id,
  lat: 44.4644,
  lng: -109.6136,
  name: 'Shoshone National Forest'
)

Comment.create(
  trip_id: Trip.where(title: 'Yellowstone').first.id,
  body: 'Grand Teton was my favorite, though all 3 locations were great',
)

Rating.create(
  trip_id: Trip.where(title: 'Yellowstone').first.id,
  score: 4
)

####### Same User/Separate Trips #####
Trip.create(
  title: 'China',
  description: 'Traveled to various tourist destinations in China',
  tags: '#tea',
  postdate: Time.now,
  user: User.where(username: 'briancc23').first
)

Location.create(
  trip_id: Trip.where(title: 'China').first.id,
  lat: 40.6769,
  lng: 117.2319,
  name: 'Great Wall of China'
)

Location.create(
  trip_id: Trip.where(title: 'China').first.id,
  lat: 39.9147,
  lng: 116.3906,
  name: 'Forbidden City'
)

Location.create(
  trip_id: Trip.where(title: 'China').first.id,
  lat: 39.9167,
  lng: 116.3833,
  name: 'Beijing'
)

Location.create(
  trip_id: Trip.where(title: 'China').first.id,
  lat: 30.272942,
  lng: 118.141568,
  name: 'Huangshan'
)

Comment.create(
  trip_id: Trip.where(title: 'China').first.id,
  body: 'The Great Wall is very long',
)

Comment.create(
  trip_id: Trip.where(title: 'China').first.id,
  body: 'Beijing is too crowded',
)

Rating.create(
  trip_id: Trip.where(title: 'China').first.id,
  score: 3
)
######################   Separate Users   #####################################
User.create(
  email: 'jeffreytai@ucla.edu',
  password: 'password2',
  first_name: 'Jeffrey',
  last_name: 'Tai',
  username: 'jeffreytai'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Vegas',
  description: 'mobbed it to Vegas',
  tags: '#Vegas #mgm',
  postdate: Time.now,
  user: User.where(username: 'jeffreytai').first
)

Location.create(
  trip_id: Trip.where(title: 'Vegas').first.id,
  lat: 36.1208,
  lng: -115.1722,
  name: 'Vegas Strip'
)

Location.create(
  trip_id: Trip.where(title: 'Vegas').first.id,
  lat: 36.114647,
  lng: -115.172813,
  name: 'Downtown Las Vegas'
)

Comment.create(
  trip_id: Trip.where(title: 'Vegas').first.id,
  body: "I dont remember much but I'm pretty sure it was a good time",
)

Rating.create(
  trip_id: Trip.where(title: 'Vegas').first.id,
  score: 4
)
######################   Separate Users   #####################################
User.create(
  email: 'jakemoghtader@ucla.edu',
  password: 'password3',
  first_name: 'Jake',
  last_name: 'Moghtader',
  username: 'jakeM'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'New York',
  description: 'Museum-strolling, theater-going, bar-hopping',
  tags: '#NYC #usa',
  postdate: Time.now,
  user: User.where(username: 'jakeM').first
)

Location.create(
  trip_id: Trip.where(title: 'New York').first.id,
  lat: 40.7791438,
  lng: -73.9627703,
  name: 'Metropolitan Museum of Art'
)

Location.create(
  trip_id: Trip.where(title: 'New York').first.id,
  lat: 40.7588,
  lng: 73.9847,
  name: 'Palace Theatre'
)

Location.create(
  trip_id: Trip.where(title: 'New York').first.id,
  lat: 40.7275,
  lng: 73.9858,
  name: 'East Village'
)

Comment.create(
  trip_id: Trip.where(title: 'New York').first.id,
  body: "Perfect blend of culture and the nightlife",
)

Rating.create(
  trip_id: Trip.where(title: 'New York').first.id,
  score: 5
)
######################   Separate Users   #####################################
User.create(
  email: 'gabriellayang@ucla.edu',
  password: 'password4',
  first_name: 'Gabriella',
  last_name: 'Yang',
  username: 'GabbyYang'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Massachusetts',
  description: 'Biked along the coast of Massachusetts from Boston to Cape Cod',
  tags: '#waves',
  postdate: Time.now,
  user: User.where(username: 'GabbyYang').first
)

Location.create(
  trip_id: Trip.where(title: 'Massachusetts').first.id,
  lat: 42.3601,
  lng: -71.0589,
  name: 'Boston'
)

Location.create(
  trip_id: Trip.where(title: 'Massachusetts').first.id,
  lat: 41.6800,
  lng: -70.2000,
  name: 'Cape Cod'
)

Comment.create(
  trip_id: Trip.where(title: 'Massachusetts').first.id,
  body: "Was fun but the local's accents were annoying",
)

Rating.create(
  trip_id: Trip.where(title: 'Massachusetts').first.id,
  score: 3
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Tour of England',
  description: 'Visited some of England most popular cities',
  tags: '#UK #thebeatles',
  postdate: Time.now,
  user: User.where(username: 'GabbyYang').first
)

Location.create(
  trip_id: Trip.where(title: 'Tour of England').first.id,
  lat: 51.507351,
  lng: -0.127758,
  name: 'London'
)

Location.create(
  trip_id: Trip.where(title: 'Tour of England').first.id,
  lat: 53.408371,
  lng: -2.991573,
  name: 'Liverpool'
)

Location.create(
  trip_id: Trip.where(title: 'Tour of England').first.id,
  lat: 53.480759,
  lng: -2.242631,
  name: 'Manchester'
)

Comment.create(
  trip_id: Trip.where(title: 'Tour of England').first.id,
  body: "The English accent is far superior to Boston's",
)

Comment.create(
  trip_id: Trip.where(title: 'Tour of England').first.id,
  body: "Buckingham Palace's guards are not friendly",
)

Rating.create(
  trip_id: Trip.where(title: 'Tour of England').first.id,
  score: 5
)
######################   Separate Users   #####################################
User.create(
  email: 'mariagarcia@ucla.edu',
  password: 'password5',
  first_name: 'Maria',
  last_name: 'Garcia',
  username: 'MG93'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'New Orleans',
  description: 'Historical Destinations in New Orleans',
  tags: '#history #thebigeasy',
  postdate: Time.now,
  user: User.where(username: 'MG93').first
)

Location.create(
  trip_id: Trip.where(title: 'New Orleans').first.id,
  lat: 29.9431,
  lng: -90.0704,
  name: 'The National WWII Museum'
)

Location.create(
  trip_id: Trip.where(title: 'New Orleans').first.id,
  lat: 29.986107,
  lng: -90.059544,
  name: 'Frenchmen Street'
)

Location.create(
  trip_id: Trip.where(title: 'New Orleans').first.id,
  lat: 29.957462,
  lng: -90.062955,
  name: 'Jackson Square'
)

Comment.create(
  trip_id: Trip.where(title: 'New Orleans').first.id,
  body: "Lots of history and art",
)

Comment.create(
  trip_id: Trip.where(title: 'New Orleans').first.id,
  body: "A humbling experience",
)

Rating.create(
  trip_id: Trip.where(title: 'New Orleans').first.id,
  score: 4
)
######################   Separate Users   #####################################
User.create(
  email: 'jamessmith@gmail.com',
  password: 'password6',
  first_name: 'James',
  last_name: 'Smith',
  username: 'JSmith'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Arizona Trip',
  description: "Explored two of Arizona's breathtaking natural wonders",
  tags: '#GrandCanyon #MarbleCanyon',
  postdate: Time.now,
  user: User.where(username: 'JSmith').first
)

Location.create(
  trip_id: Trip.where(title: 'Arizona Trip').first.id,
  lat: 36.1000,
  lng: -112.1000,
  name: 'Grand Canyon'
)

Location.create(
  trip_id: Trip.where(title: 'Arizona Trip').first.id,
  lat: 36.8156,
  lng: -111.6378,
  name: 'Vermilion Cliffs'
)

Rating.create(
  trip_id: Trip.where(title: 'Arizona Trip').first.id,
  score: 5
)

Rating.create(
  trip_id: Trip.where(title: 'Arizona Trip').first.id,
  score: 4
)
######################   Separate Users   #####################################
User.create(
  email: 'SJ34567@hotmail.com',
  password: 'password7',
  first_name: 'Sophia',
  last_name: 'Jackson',
  username: 'LovesToTravel'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Alaskan Camping',
  description: 'Saw the northern lights from Anchorage then camped out by Denali National Park',
  tags: '#auroraborealis',
  postdate: Time.now,
  user: User.where(username: 'LovestoTravel').first
)

Location.create(
  trip_id: Trip.where(title: 'Alaskan Camping').first.id,
  lat: 61.218056,
  lng: -149.900278,
  name: 'Anchorage'
)

Location.create(
  trip_id: Trip.where(title: 'Alaskan Camping').first.id,
  lat: 63.333333,
  lng: -150.500000,
  name: 'Denali National Park'
)

Comment.create(
  trip_id: Trip.where(title: 'Alaskan Camping').first.id,
  body: 'Very beautiful but too cold',
)

Rating.create(
  trip_id: Trip.where(title: 'Alaskan Camping').first.id,
  score: 3
)
######################   Separate Users   #####################################
User.create(
  email: 'MikeL@yahoo.com',
  password: 'password8',
  first_name: 'Michael',
  last_name: 'Long',
  username: 'Mr. L'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Northern Pacific',
  description: 'Drove from Oregon to Seattle and stayed for a week',
  tags: '#fashion #washington',
  postdate: Time.now,
  user: User.where(username: 'Mr. L').first
)

Location.create(
  trip_id: Trip.where(title: 'Northern Pacific').first.id,
  lat: 43.804133,
  lng: -120.554201,
  name: 'Oregon'
)

Location.create(
  trip_id: Trip.where(title: 'Northern Pacific').first.id,
  lat: 47.606209,
  lng: -122.332071,
  name: 'Seattle'
)

Comment.create(
  trip_id: Trip.where(title: 'Northern Pacific').first.id,
  body: 'Cold and depressing',
)

Rating.create(
  trip_id: Trip.where(title: 'Northern Pacific').first.id,
  score: 1
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
  body: 'lots of traffic',
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
####### Same User/Separate Trips #####
Trip.create(
  title: 'Bora Bora',
  description: "Stayed in a luxury resort on the isalnd of Bora Bora",
  tags: '#scubadiving, #island',
  postdate: Time.now,
  user: User.where(username: 'OlvThmp00').first
)

Location.create(
  trip_id: Trip.where(title: 'Bora Bora').first.id,
  lat: -16.500413,
  lng: -151.741490,
  name: 'Bora Bora'
)

Rating.create(
  trip_id: Trip.where(title: 'Bora Bora').first.id,
  score: 5
)

######################   Separate Users   #####################################
User.create(
  email: 'Douglasss@yahoo.com',
  password: 'password11',
  first_name: 'Doug',
  last_name: 'Ruby',
  username: 'dougy'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Paname',
  description: "Tasted lots of wine and went to Disneyland",
  tags: '#eiffeltower #monalisa',
  postdate: Time.now,
  user: User.where(username: 'dougy').first
)

Location.create(
  trip_id: Trip.where(title: 'Paname').first.id,
  lat: 48.872234,
  lng: 2.775808,
  name: 'Disneyland Paris'
)

Location.create(
  trip_id: Trip.where(title: 'Paname').first.id,
  lat: 48.858370,
  lng: 2.294481,
  name: 'Eiffel Tower'
)

Location.create(
  trip_id: Trip.where(title: 'Paname').first.id,
  lat: 48.864179,
  lng: 2.342501,
  name: 'The Louvre'
)

Comment.create(
  trip_id: Trip.where(title: 'Paname').first.id,
  body: 'Life changing',
)

Rating.create(
  trip_id: Trip.where(title: 'Paname').first.id,
  score: 3
)

######################   Separate Users   #####################################
User.create(
  email: 'cjgardner@ucla.edu',
  password: 'password12',
  first_name: 'CJ',
  last_name: 'Gardner',
  username: 'cjgardner'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Spain',
  description: "Visited Spain's two most renowned cities ",
  tags: '#Madrid #Barcelona',
  postdate: Time.now,
  user: User.where(username: 'cjgardner').first
)

Location.create(
  trip_id: Trip.where(title: 'Spain').first.id,
  lat: 40.416775,
  lng: -3.703790,
  name: 'Madrid'
)

Location.create(
  trip_id: Trip.where(title: 'Spain').first.id,
  lat: 41.385064,
  lng: 2.173403,
  name: 'Barcelona'
)

Comment.create(
  trip_id: Trip.where(title: 'Spain').first.id,
  body: 'Messi is the GOAT',
)

Rating.create(
  trip_id: Trip.where(title: 'Spain').first.id,
  score: 4
)
######################   Separate Users   #####################################
User.create(
  email: 'JRyals@ucla.edu',
  password: 'password13',
  first_name: 'Joeseph',
  last_name: 'Ryals',
  username: 'joecal22'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Down Under',
  description: "Flew into Melbourne then went to Sydney for a show at it's world famous Opera House ",
  tags: '#oz #mate',
  postdate: Time.now,
  user: User.where(username: 'joecal22').first
)

Location.create(
  trip_id: Trip.where(title: 'Down Under').first.id,
  lat: -37.814107,
  lng: 144.963280,
  name: 'Melbourne'
)

Location.create(
  trip_id: Trip.where(title: 'Down Under').first.id,
  lat: -33.857197,
  lng: 151.215140,
  name: 'Sydney Opera House'
)

Comment.create(
  trip_id: Trip.where(title: 'Down Under').first.id,
  body: 'Hot, not a fan of opera',
)

Rating.create(
  trip_id: Trip.where(title: 'Down Under').first.id,
  score: 2
)
######################   Separate Users   #####################################
User.create(
  email: 'MCC@gmail.com',
  password: 'password14',
  first_name: 'Mac',
  last_name: 'Casey',
  username: 'macncheese'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Adventures in Rio de Janeiro',
  description: "Spent a week in Brazils' huge seaside city",
  tags: '#beaches #bossanova',
  postdate: Time.now,
  user: User.where(username: 'macncheese').first
)

Location.create(
  trip_id: Trip.where(title: 'Adventures in Rio de Janeiro').first.id,
  lat: -22.969778,
  lng: -43.186859,
  name: 'Copacabana Beach'
)

Location.create(
  trip_id: Trip.where(title: 'Adventures in Rio de Janeiro').first.id,
  lat: -22.984667,
  lng: -43.198593,
  name: 'Ipanema Beach'
)

Location.create(
  trip_id: Trip.where(title: 'Adventures in Rio de Janeiro').first.id,
  lat: -22.906847,
  lng: -43.172896,
  name: 'The Lapa Neighborhood'
)

Comment.create(
  trip_id: Trip.where(title: 'Adventures in Rio de Janeiro').first.id,
  body: 'Beautiful beaches',
)

Comment.create(
  trip_id: Trip.where(title: 'Adventures in Rio de Janeiro').first.id,
  body: 'Vibrant locals and nightlife',
)

Rating.create(
  trip_id: Trip.where(title: 'Adventures in Rio de Janeiro').first.id,
  score: 5
)
######################   Separate Users   #####################################
User.create(
  email: 'NicoleChen@gmail.com',
  password: 'password15',
  first_name: 'Nicole',
  last_name: 'Chen',
  username: 'slime'
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Slime',
  description: "Homecoming trip to where I was born and raised",
  tags: '#slime',
  postdate: Time.now,
  user: User.where(username: 'slime').first
)

Location.create(
  trip_id: Trip.where(title: 'Slime').first.id,
  lat: 43.97028,
  lng: 16.5325,
  name: 'Slime'
)

Comment.create(
  trip_id: Trip.where(title: 'Slime').first.id,
  body: "No where else I'd rather be than Slime. I wish I could've stayed forever",
)

Rating.create(
  trip_id: Trip.where(title: 'Slime').first.id,
  score: 5
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Slime Round 2',
  description: "Was supposed to explore Italy with a friend but ended up in Slime",
  tags: '#slime',
  postdate: Time.now,
  user: User.where(username: 'slime').first
)

Location.create(
  trip_id: Trip.where(title: 'Slime Round 2').first.id,
  lat: 41.9000,
  lng: 12.5000,
  name: 'Rome'
)

Location.create(
  trip_id: Trip.where(title: 'Slime Round 2').first.id,
  lat: 43.97028,
  lng: 16.5325,
  name: 'Slime'
)

Comment.create(
  trip_id: Trip.where(title: 'Slime Round 2').first.id,
  body: "Couldn't resist ditching my friend to go back to Slime",
)

Rating.create(
  trip_id: Trip.where(title: 'Slime Round 2').first.id,
  score: 5
)


# # Following relationships
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
