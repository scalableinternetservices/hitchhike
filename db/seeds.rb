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
  user_id: User.where(username: 'briancc23').first.id,
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
  user_id: User.where(username: 'briancc23').first.id,
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
  user_id: User.where(username: 'jeffreytai').first.id,
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
  user_id: User.where(username: 'jakeM').first.id,
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
  user_id: User.where(username: 'GabbyYang').first.id,
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
  user_id: User.where(username: 'GabbyYang').first.id,
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
  user_id: User.where(username: 'MG93').first.id,
  score: 4
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'East Europe',
  description: 'East European trip starting in Budapest',
  tags: '#Danube #Hungary',
  postdate: Time.now,
  user: User.where(username: 'MG93').first
)

Location.create(
  trip_id: Trip.where(title: 'East Europe').first.id,
  lat: 47.497912,
  lng: 19.040235,
  name: 'Budapest'
)

Location.create(
  trip_id: Trip.where(title: 'East Europe').first.id,
  lat: 47.569246,
  lng: 18.404818,
  name: 'Tatabanya'
)

Location.create(
  trip_id: Trip.where(title: 'East Europe').first.id,
  lat: 47.687457,
  lng: 17.650397,
  name: 'Gyor'
)

Location.create(
  trip_id: Trip.where(title: 'East Europe').first.id,
  lat: 48.145892,
  lng: 17.107137,
  name: 'Bratislava'
)

Comment.create(
  trip_id: Trip.where(title: 'East Europe').first.id,
  body: "Shouldn't have left Budapest",
)

Rating.create(
  trip_id: Trip.where(title: 'East Europe').first.id,
  user_id: User.where(username: 'MG93').first.id,
  score: 2
)

####### Same User/Separate Trips #####
Trip.create(
  title: 'Cape Town',
  description: 'Cape Town, South Africa and some surrounding areas',
  tags: '#port #peninsula',
  postdate: Time.now,
  user: User.where(username: 'MG93').first
)

Location.create(
  trip_id: Trip.where(title: 'Cape Town').first.id,
  lat: -33.503537,
  lng: 18.319316,
  name: 'Grotto Bay'
)

Location.create(
  trip_id: Trip.where(title: 'Cape Town').first.id,
  lat: -33.924869,
  lng: 18.424055,
  name: 'Cape Town'
)

Location.create(
  trip_id: Trip.where(title: 'Cape Town').first.id,
  lat: -33.932105,
  lng: 18.860152,
  name: 'Stellenbosch'
)

Comment.create(
  trip_id: Trip.where(title: 'Cape Town').first.id,
  body: "Grotto Bay was ok but Cape Town is overrated",
)

Rating.create(
  trip_id: Trip.where(title: 'Cape Town').first.id,
  user_id: User.where(username: 'MG93').first.id,
  score: 3
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Prague',
  description: 'Saw a couple iconic landmarks in Prague',
  tags: '#CharlesBridge #St.VitusCathedral',
  postdate: Time.now,
  user: User.where(username: 'MG93').first
)

Location.create(
  trip_id: Trip.where(title: 'Prague').first.id,
  lat: 50.086477,
  lng: 14.411437,
  name: 'Charles Bridge'
)

Location.create(
  trip_id: Trip.where(title: 'Prague').first.id,
  lat: 50.090892,
  lng: 14.400511,
  name: 'St. Vitus Cathedral'
)


Rating.create(
  trip_id: Trip.where(title: 'Prague').first.id,
  user_id: User.where(username: 'MG93').first.id,
  score: 3
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
  user_id: User.where(username: 'JSmith').first.id,
  score: 5
)

Rating.create(
  trip_id: Trip.where(title: 'Arizona Trip').first.id,
  user_id: User.where(username: 'briancc23').first.id,
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
  user: User.where(username: 'LovesToTravel').first
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
  user_id: User.where(username: 'LovesToTravel').first.id,
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
  user_id: User.where(username: 'Mr. L').first.id,
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
  user_id: User.where(username: 'account456').first.id,
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
  user_id: User.where(username: 'account456').first.id,
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
  description: "Stayed in a luxury resort on the island of Bora Bora",
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
  user_id: User.where(username: 'OlvThmp00').first.id,
  score: 5
)

####### Same User/Separate Trips #####
Trip.create(
  title: 'Hong Kong',
  description: 'Theme Parks and Skyscrapers in Hong Kong',
  tags: '#Disneyland #ThePeak #OceanPark',
  postdate: Time.now,
  user: User.where(username: 'OlvThmp00').first
)

Location.create(
  trip_id: Trip.where(title: 'Hong Kong').first.id,
  lat: 22.312967,
  lng: 114.041282,
  name: 'Hong Kong Disneyland'
)

Location.create(
  trip_id: Trip.where(title: 'Hong Kong').first.id,
  lat: 22.263248,
  lng: 114.158798,
  name: 'The Peak'
)

Location.create(
  trip_id: Trip.where(title: 'Hong Kong').first.id,
  lat: 22.246661,
  lng: 114.175724,
  name: 'Ocean Park'
)

Comment.create(
  trip_id: Trip.where(title: 'Hong Kong').first.id,
  body: "Giant Pandas at Ocean Park",
)

Comment.create(
  trip_id: Trip.where(title: 'Hong Kong').first.id,
  body: "Gerat views from The Peak",
)

Rating.create(
  trip_id: Trip.where(title: 'Hong Kong').first.id,
  user_id: User.where(username: 'OlvThmp00').first.id,
  score: 5
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Hanoi',
  description: 'Sightseeing and food in Hanoi',
  tags: '#OldQuarter #Vietnam',
  postdate: Time.now,
  user: User.where(username: 'OlvThmp00').first
)

Location.create(
  trip_id: Trip.where(title: 'Hanoi').first.id,
  lat: 21.032085,
  lng: 105.847510,
  name: 'Old Quarter'
)

Location.create(
  trip_id: Trip.where(title: 'Hanoi').first.id,
  lat: 21.022911,
  lng: 105.752355,
  name: 'Hoa Lo Prison'
)

Location.create(
  trip_id: Trip.where(title: 'Hanoi').first.id,
  lat: 21.036544,
  lng: 105.834891,
  name: 'Ho Chi Minh Mausoleum'
)

Comment.create(
  trip_id: Trip.where(title: 'Hanoi').first.id,
  body: "Well worth the visit",
)

Rating.create(
  trip_id: Trip.where(title: 'Hanoi').first.id,
  user_id: User.where(username: 'OlvThmp00').first.id,
  score: 2
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
  user_id: User.where(username: 'dougy').first.id,
  score: 3
)

####### Same User/Separate Trips #####
Trip.create(
  title: 'Puerto Rico',
  description: "Went to Puerto Rico to party for awhile",
  tags: '#IslaVerde #SanJuan',
  postdate: Time.now,
  user: User.where(username: 'dougy').first
)


Location.create(
  trip_id: Trip.where(title: 'Puerto Rico').first.id,
  lat: 18.466334,
  lng: -66.105722,
  name: 'San Juan'
)


Rating.create(
  trip_id: Trip.where(title: 'Puerto Rico').first.id,
  user_id: User.where(username: 'dougy').first.id,
  score: 4
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
  user_id: User.where(username: 'cjgardner').first.id,
  score: 4
)

####### Same User/Separate Trips #####
Trip.create(
  title: 'Jerusalem',
  description: "Visited religious and historic sites in Jerusalem",
  tags: '#Jerusalem',
  postdate: Time.now,
  user: User.where(username: 'cjgardner').first
)

Location.create(
  trip_id: Trip.where(title: 'Jerusalem').first.id,
  lat: 31.776719,
  lng: 35.234508,
  name: 'Western Wall'
)

Location.create(
  trip_id: Trip.where(title: 'Jerusalem').first.id,
  lat: 31.778116,
  lng: 35.235993,
  name: 'Temple Mount'
)

Location.create(
  trip_id: Trip.where(title: 'Jerusalem').first.id,
  lat: 31.778481,
  lng: 35.229600,
  name: 'Church of the Holy Sepulchre'
)

Comment.create(
  trip_id: Trip.where(title: 'Jerusalem').first.id,
  body: 'I feel cleansed',
)

Rating.create(
  trip_id: Trip.where(title: 'Jerusalem').first.id,
  user_id: User.where(username: 'cjgardner').first.id,
  score: 4
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Argentina',
  description: "Traveled to Buenos Aires and its surrounding areas",
  tags: '#tango',
  postdate: Time.now,
  user: User.where(username: 'cjgardner').first
)

Location.create(
  trip_id: Trip.where(title: 'Argentina').first.id,
  lat: -34.603684,
  lng: -58.381559,
  name: 'Buenos Aires'
)

Location.create(
  trip_id: Trip.where(title: 'Argentina').first.id,
  lat: -34.655861,
  lng: -58.616721,
  name: 'Moron'
)

Location.create(
  trip_id: Trip.where(title: 'Argentina').first.id,
  lat: -34.425087,
  lng: -58.579658,
  name: 'Tigre'
)

Comment.create(
  trip_id: Trip.where(title: 'Argentina').first.id,
  body: 'Amazing architecture and restaurants',
)

Comment.create(
  trip_id: Trip.where(title: 'Argentina').first.id,
  body: 'Too much dancing',
)

Rating.create(
  trip_id: Trip.where(title: 'Argentina').first.id,
  user_id: User.where(username: 'cjgardner').first.id,
  score: 5
)

Rating.create(
  trip_id: Trip.where(title: 'Argentina').first.id,
  user_id: User.where(username: 'jakeM').first.id,
  score: 2
)
####### Same User/Separate Trips #####
Trip.create(
  title: 'Moroccooo',
  description: "Visited two of Morocco's most famous cities",
  tags: '#architecture #Casablanca',
  postdate: Time.now,
  user: User.where(username: 'cjgardner').first
)

Location.create(
  trip_id: Trip.where(title: 'Moroccooo').first.id,
  lat: 31.629472,
  lng: -7.981084,
  name: 'Marrakesh'
)

Location.create(
  trip_id: Trip.where(title: 'Moroccooo').first.id,
  lat: 33.573110,
  lng: -7.589843,
  name: 'Casablanca'
)

Comment.create(
  trip_id: Trip.where(title: 'Moroccooo').first.id,
  body: 'The people here are beautiful',
)

Rating.create(
  trip_id: Trip.where(title: 'Moroccooo').first.id,
  user_id: User.where(username: 'cjgardner').first.id,
  score: 5
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
  user_id: User.where(username: 'joecal22').first.id,
  score: 2
)

####### Same User/Separate Trips #####
Trip.create(
  title: 'The Matterhorn',
  description: "Climbed The Matterhorn in Zermatt, Switzerland",
  tags: '#snow #mountain',
  postdate: Time.now,
  user: User.where(username: 'joecal22').first
)

Location.create(
  trip_id: Trip.where(title: 'The Matterhorn').first.id,
  lat: 45.976574,
  lng: 7.658452,
  name: 'The Matterhorn'
)

Comment.create(
  trip_id: Trip.where(title: 'The Matterhorn').first.id,
  body: 'A fairly simple climb; not worth my time',
)

Rating.create(
  trip_id: Trip.where(title: 'The Matterhorn').first.id,
  user_id: User.where(username: 'joecal22').first.id,
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
  description: "Spent a week in Brazil's huge seaside city",
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
  user_id: User.where(username: 'macncheese').first.id,
  score: 5
)

####### Same User/Separate Trips #####
Trip.create(
  title: 'Relaxing in Ubud',
  description: "Got a Balinese massage and played with monkeys",
  tags: '#spa #acupuncture',
  postdate: Time.now,
  user: User.where(username: 'macncheese').first
)

Location.create(
  trip_id: Trip.where(title: 'Relaxing in Ubud').first.id,
  lat: -8.519268,
  lng: 115.263298,
  name: 'Ubud Village'
)

Location.create(
  trip_id: Trip.where(title: 'Relaxing in Ubud').first.id,
  lat: -8.518751,
  lng: 115.258597,
  name: 'Monkey Forest Park'
)

Comment.create(
  trip_id: Trip.where(title: 'Relaxing in Ubud').first.id,
  body: "Ubud lives up to it's reputation as one of Asia's top spa destinations",
)

Comment.create(
  trip_id: Trip.where(title: 'Relaxing in Ubud').first.id,
  body: "A Macaque stole my wallet",
)

Rating.create(
  trip_id: Trip.where(title: 'Relaxing in Ubud').first.id,
  user_id: User.where(username: 'macncheese').first.id,
  score: 5
)

Rating.create(
  trip_id: Trip.where(title: 'Relaxing in Ubud').first.id,
  user_id: User.where(username: 'JSmith').first.id,
  score: 1
)

Rating.create(
  trip_id: Trip.where(title: 'Relaxing in Ubud').first.id,
  user_id: User.where(username: 'jeffreytai').first.id,
  score: 4
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
  user_id: User.where(username: 'slime').first.id,
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
  user_id: User.where(username: 'slime').first.id,
  score: 5
)
###########  Relationships  ###########################
Relationship.create(
  follower_id: 1,
  followed_id: 2
)

Relationship.create(
  follower_id: 1,
  followed_id: 3
)

Relationship.create(
  follower_id: 1,
  followed_id: 4
)

Relationship.create(
  follower_id: 1,
  followed_id: 15
)

Relationship.create(
  follower_id: 2,
  followed_id: 1
)

Relationship.create(
  follower_id: 2,
  followed_id: 3
)


Relationship.create(
  follower_id: 2,
  followed_id: 4
)

Relationship.create(
  follower_id: 2,
  followed_id: 7
)

Relationship.create(
  follower_id: 2,
  followed_id: 10
)

Relationship.create(
  follower_id: 2,
  followed_id: 12
)

Relationship.create(
  follower_id: 3,
  followed_id: 1
)

Relationship.create(
  follower_id: 3,
  followed_id: 2
)

Relationship.create(
  follower_id: 3,
  followed_id: 4
)

Relationship.create(
  follower_id: 3,
  followed_id: 5
)

Relationship.create(
  follower_id: 3,
  followed_id: 8
)

Relationship.create(
  follower_id: 3,
  followed_id: 11
)

Relationship.create(
  follower_id: 4,
  followed_id: 1
)

Relationship.create(
  follower_id: 4,
  followed_id: 2
)

Relationship.create(
  follower_id: 4,
  followed_id: 3
)

Relationship.create(
  follower_id: 4,
  followed_id: 6
)

Relationship.create(
  follower_id: 4,
  followed_id: 12
)

Relationship.create(
  follower_id: 5,
  followed_id: 1
)

Relationship.create(
  follower_id: 5,
  followed_id: 12
)

Relationship.create(
  follower_id: 5,
  followed_id: 15
)

Relationship.create(
  follower_id: 6,
  followed_id: 1
)

Relationship.create(
  follower_id: 6,
  followed_id: 2
)

Relationship.create(
  follower_id: 6,
  followed_id: 3
)

Relationship.create(
  follower_id: 6,
  followed_id: 4
)

Relationship.create(
  follower_id: 6,
  followed_id: 13
)

Relationship.create(
  follower_id: 7,
  followed_id: 5
)

Relationship.create(
  follower_id: 7,
  followed_id: 6
)

Relationship.create(
  follower_id: 7,
  followed_id: 14
)

Relationship.create(
  follower_id: 7,
  followed_id: 15
)

Relationship.create(
  follower_id: 8,
  followed_id: 1
)

Relationship.create(
  follower_id: 8,
  followed_id: 3
)


Relationship.create(
  follower_id: 9,
  followed_id: 2
)

Relationship.create(
  follower_id: 9,
  followed_id: 3
)

Relationship.create(
  follower_id: 9,
  followed_id: 4
)

Relationship.create(
  follower_id: 9,
  followed_id: 5
)

Relationship.create(
  follower_id: 9,
  followed_id: 8
)

Relationship.create(
  follower_id: 10,
  followed_id: 5
)

Relationship.create(
  follower_id: 10,
  followed_id: 7
)

Relationship.create(
  follower_id: 10,
  followed_id: 11
)

Relationship.create(
  follower_id: 11,
  followed_id: 2
)

Relationship.create(
  follower_id: 11,
  followed_id: 4
)

Relationship.create(
  follower_id: 11,
  followed_id: 6
)

Relationship.create(
  follower_id: 12,
  followed_id: 2
)

Relationship.create(
  follower_id: 12,
  followed_id: 8
)

Relationship.create(
  follower_id: 12,
  followed_id: 11
)

Relationship.create(
  follower_id: 12,
  followed_id: 13
)

Relationship.create(
  follower_id: 12,
  followed_id: 14
)

Relationship.create(
  follower_id: 13,
  followed_id: 3
)

Relationship.create(
  follower_id: 13,
  followed_id: 5
)

Relationship.create(
  follower_id: 13,
  followed_id: 7
)

Relationship.create(
  follower_id: 13,
  followed_id: 9
)

Relationship.create(
  follower_id: 14,
  followed_id: 6
)

Relationship.create(
  follower_id: 14,
  followed_id: 8
)

Relationship.create(
  follower_id: 14,
  followed_id: 10
)

Relationship.create(
  follower_id: 14,
  followed_id: 12
)

Relationship.create(
  follower_id: 14,
  followed_id: 15
)

Relationship.create(
  follower_id: 15,
  followed_id: 1
)


# # Following relationships
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
