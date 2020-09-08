# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.delete_all
Restaurant.delete_all 
Reservation.delete_all
Rating.delete_all
Favorite.delete_all

demo = User.create!(
    first_name: "Demo",
    last_name: "User",
    email: 'demo@aa.io',
    password: 'password'
)
user1 = User.create!(
    first_name: "Bobby",
    last_name: "Lee",
    email: "bobbyl@aa.io",
    password: "password"
)
user2 = User.create!(
    first_name: "Theo",
    last_name: "Ron",
    email: "theor@aa.io",
    password: "password"
)
user3 = User.create!(
    first_name: "Andrew",
    last_name: "Bantino",
    email: "andrewb@aa.io",
    password: "password"
)
user4 = User.create!(
    first_name: "Joe",
    last_name: "Pogan",
    email: "joer@aa.io",
    password: "password"
)
user5 = User.create!(
    first_name: "Nikki",
    last_name: "Tazer",
    email: "nikkit@aa.io",
    password: "password"
)
user6 = User.create!(
    first_name: "Mark",
    last_name: "Spormand",
    email: "marks@aa.io",
    password: "password"
)
user7 = User.create!(
    first_name: "Jessica",
    last_name: "Pirson",
    email: "jessicanP@aa.io",
    password: "password"
)
user8 = User.create!(
    first_name: "Stephany",
    last_name: "Turry",
    email: "stephanyt@aa.io",
    password: "password"
)
user9 = User.create!(
    first_name: "Klay",
    last_name: "Rompson",
    email: "klayR@aa.io",
    password: "password"
)
user10 = User.create!(
    first_name: "Draymond",
    last_name: "Blue",
    email: "drayb@aa.io",
    password: "password"
)


restaurant1 = Restaurant.create!(
    name: "House of Prime Rib",
    address: "1906 Van Ness Ave",
    city: "San Francisco",
    state: "California",
    zip: "94109",
    price: "$$$$",
    cuisine: 'Steak',
    open_time: DateTime.parse("14:00:00"),
    close_time: DateTime.parse("22:00:00"),
    phone_number: "(415) 885-4605",
    menu_link: "http://www.houseofprimerib.net/#menu",
    photo: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/houseofprimerib.jpg',
    bphoto: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/hopr-back.jpg',
    description: "62 years of loyal customers can't be wrong. We are grateful to all our customers, employees, and critics (...though we may not always agree!). The only way to find out the truth is with a visit. Often imitated, never duplicated. Thank you in advance."     
)

# pic1 = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/houseofprimerib.jpg')
# restaurant1.photo.attach(io: pic1, filename: 'houseofprimerib.jpg')
# pic1back = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/hopr-back.jpg')
# restaurant1.bphoto.attach(io: pic1back, filename: 'hopr-back.jpg')

restaurant2 = Restaurant.create!(
    name: "Providence",
    address: "5955 Melrose Ave",
    city: "Los Angeles",
    state: "California",
    zip: "90038",
    price: "$$$$",
    cuisine: 'Seafood',
    open_time: DateTime.parse("18:00:00"),
    close_time: DateTime.parse("21:00:00"),
    phone_number: "(323) 460-4170",
    menu_link: "https://providencela.com/menus/dinner/",
    photo: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/providence.jpg',
    bphoto: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/providence-back.jpg',
    description: "Two Michelin Stars; 2019 Best Chef: West-Michael Cimarusti, 2013, 2014, 2015, 2016, 2017 Best Restaurant, LA Times; 2010 Chef of the Year, Angeleno Magazine; 2014, 2012, 2011 and 2010 Best Chef Nominee, James Beard Foundation; Best New Restaurants, Esquire Magazine; Best New Restaurant nominee, James Beard Foundation; Best Chef Pacific nominee, James Beard Foundation; Best Seafood Restaurant, Los Angeles Magazine; Top 40 Restaurants in the United States, Gayot.com; Top 50 Restaurants in the United States, Gourmet Magazine."     
)

# pic2 = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/providence.jpg')
# restaurant2.photo.attach(io: pic2, filename: 'providence.jpg')
# pic2back = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/providence-back.jpg')
# restaurant2.bphoto.attach(io: pic2back, filename: 'providence-back.jpg')


restaurant3 = Restaurant.create!(
    name: "Bouchon at The Venetian",
    address: "3355 Las Vegas Blvd South",
    city: "Las Vegas",
    state: "Nevada",
    zip: "89109",
    price: "$$$",
    cuisine: 'French',
    open_time: DateTime.parse("15:00:00"),
    close_time: DateTime.parse("22:00:00"),
    phone_number: "(702) 414-6200",
    menu_link: "https://www.venetian.com/content/dam/venetian/restaurants/bouchon/dinner-menu.pdf",
    photo: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/bouchon.jpg',
    bphoto: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/bouchon-back.jpg',
    description: "Thomas Keller's Bouchon is located in the Venetian Resort-Hotel-Casino, Venezia Tower. Renowned designer Adam D. Tihany has masterfully created a beautiful interior that features a magnificent French pewter bar, a vibrant mosaic floor, deep blue velvet banquettes, antique light fixtures and an expansive hand-painted mural by noted French artist Paulin Paris. The exquisite décor is the perfect setting for Bouchon’s culinary delights. Chef Crain rediscovers the classics, using historical reference points and classic French techniques, combined with a modern approach. The menu offers classic bistro dishes including steak frites, roasted chicken, quiche, boudin noir, pot de crème and profiteroles. The selection of fruits de mer is celebrated as one of the finest in Las Vegas. The seasonal menu changes throughout the year and is enhanced by a blackboard menu featuring the best products available each day. Flawlessly executed in every aspect, Bouchon delights both the palate and the eye"     
)

# pic3 = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/bouchon.jpg')
# restaurant3.photo.attach(io: pic3, filename: 'bouchon.jpg')
# pic3back = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/bouchon-back.jpg')
# restaurant3.bphoto.attach(io: pic3back, filename: 'bouchon-back.jpg')


restaurant4 = Restaurant.create!(
    name: "Koi",
    address: "40 West 40th Street",
    city: "New York",
    state: "New York",
    zip: "10018",
    price: "$$$",
    cuisine: 'Asian',
    open_time: DateTime.parse("17:00:00"),
    close_time: DateTime.parse("23:00:00"),
    phone_number: "(212) 921-3330",
    menu_link: "https://koirestaurant.com/new-york",
    photo: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/koi.jpg',
    bphoto: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/koi-back.jpg',
    description: "Rich earth tones of orange, red and brown impart warmth to the cool and tranquil space. Thin tapestries of translucent rose fabric are embellished with flame motifs and suspended from the ceiling, creating a separate seating area perfect for a light bite near the large front windows. Famous for its unique and mouth-watering interpretation of Japanese cuisine. Upscale Japanese fare is given a jolt of new life through an innovative use of ingredients, resulting in refreshing and exciting flavor combinations. Crispy Rice with Spice Tuna, an addictive version of the classic spicy tuna roll, featuring warm grilled rice topped with a thick layer of cool, savory tuna. Baked Crab Roll, for which succulent fresh crabmeat is wrapped in a thin rice crepe paper dotted with sesame seeds and baked to perfection. Hamachi Fusion with Soy-Citrus and Truffle Essence all artfully plated by Koi’s skilled culinary team."     
)

# pic4 = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/koi.jpg')
# restaurant4.photo.attach(io: pic4, filename: 'koi.jpg')
# pic4back = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/koi-back.jpg')
# restaurant4.bphoto.attach(io: pic4back, filename: 'koi-back.jpg')

restaurant5 = Restaurant.create!(
    name: "Amber India",
    address: "25 Yerba Buena",
    city: "San Francisco",
    state: "California",
    zip: "94103",
    price: "$$$",
    cuisine: 'Indian',
    open_time: DateTime.parse("17:00:00"),
    close_time: DateTime.parse("22:00:00"),
    phone_number: "(415) 777-0500",
    menu_link: "https://www.amber-india.com/san-francisco-menus/",
    photo: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/amberindia.jpg',
    bphoto: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/amberindaback.jpg',
    description: "Amber India Restaurant embodies the spirit and essence of fine Indian cuisine. Located in the heart of downtown San Francisco, Amber India Restaurant takes Indian cuisine to a new culinary level, while still holding true to its traditional nuances. Much like the ambiance within the restaurant, Amber India’s cuisine is a mix of modern style with traditional roots. The delectable cuisine, the well paired wines, and the exotic cocktails are sure to indulge anyone’s senses. The split-level three-story restaurant can easily accommodate 140 people, with a private dining room in the back for up to 25 people. With its vaulted ceilings, stylish décor, and a constant LED light show behind the bar, Amber India Restaurant is truly a feast for both the mouth as well as the eyes."
)

# pic5 = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/amberindia.jpg')
# restaurant5.photo.attach(io: pic5, filename: 'amberindia.jpg')
# pic5back = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/amberindaback.jpg')
# restaurant5.bphoto.attach(io: pic5back, filename: 'amberindia-back.jpg')

restaurant6 = Restaurant.create!(
    name: "Bestia",
    address: "2121 E. 7th",
    city: "Los Angeles",
    state: "California",
    zip: "90021",
    price: "$$$",
    cuisine: 'Italian',
    open_time: DateTime.parse("17:00:00"),
    close_time: DateTime.parse("22:00:00"),
    phone_number: "(213) 514-5724",
    menu_link: "https://bestiala.com/menu/",
    photo: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/bestia.jpg',
    bphoto: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/bestiaback.jpg',
    description: "A multi-regional Italian restaurant in the Arts District of downtown Los Angeles."
)

# pic6 = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/bestia.jpg')
# restaurant6.photo.attach(io: pic6, filename: 'bestia.jpg')
# pic6back = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/bestiaback.jpg')
# restaurant6.bphoto.attach(io: pic6back, filename: 'bestia-back.jpg')


restaurant7 = Restaurant.create!(
    name: "Lexington Brass",
    address: "517 Lexington Ave",
    city: "New York",
    state: "New York",
    zip: "10017",
    price: "$$$",
    cuisine: 'American',
    open_time: DateTime.parse("17:00:00"),
    close_time: DateTime.parse("23:00:00"),
    phone_number: "(212) 392-5976",
    menu_link: "https://lexingtonbrass.com/",
    photo: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/lexingtonbrass.jpg',
    bphoto: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/lexingtonback.jpg',
    description: "Located adjacent to the Hotel 48 Lex in midtown Manhattan, Lexington Brass is a new age American Brasserie focused on bringing high quality dishes to diners in search of an authentic New York experience. Using only the finest, locally sourced ingredients from some of the region’s most trusted purveyors, the bustling, 100 seat restaurant combines organic, nutrient-rich proteins and fresh, seasonal produce to create a menu of hearty, tasty dishes including the Organic Pennsylvania Dutch Crispy Chicken Salad, Brass Health Bowl, vegetarian Mushroom Pasta and Herb-Roasted Branzino with many gluten free, dairy free and vegan options to boot. Offering reasonable price points and reliable quality in a relaxed upscale environment, Lexington Brass stands beside the business backdrop of modern midtown and sets itself apart with elevated brasserie favorites and a top notch team of hospitality professionals at your service breakfast, lunch, dinner and into the late evening hours."
)

# pic7 = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/lexingtonbrass.jpg')
# restaurant7.photo.attach(io: pic7, filename: 'lexington.jpg')
# pic7back = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/lexingtonback.jpg')
# restaurant7.bphoto.attach(io: pic7back, filename: 'lexington-back.jpg')


restaurant8 = Restaurant.create!(
    name: "Nacho Daddy",
    address: "3663 Las Vegas Blvd",
    city: "Las Vegas",
    state: "Nevada",
    zip: "89109",
    price: "$$",
    cuisine: 'Mexican',
    open_time: DateTime.parse("15:00:00"),
    close_time: DateTime.parse("18:00:00"),
    phone_number: "(213) 514-5724",
    menu_link: "https://nachodaddy.com/menu/",
    photo: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/nachodaddy.jpg',
    bphoto: 'https://seat-check-seeds.s3-us-west-1.amazonaws.com/nachodaddyback.jpeg',
    description: "Las Vegas born and raised since 2010, Nacho Daddy is a locally owned modern Mexican restaurant setting the industry standard for fighting children's hunger in the community while also serving honest food to our friends. Don't let our name fool you, we don't serve nachos...we serve the MOST INSANE GOURMET NACHOS smothered in queso and salsa made fresh daily, and we guarantee you'll never find a dry chip! Nachos nach'yo thing? No worries - we have something for everyone, including all day breakfast, tasty Mexican-American collisions, and a full vegan menu. Be sure to try our housemade specialty drinks, including our Best of Las Vegas 'Daddy's Margarita', or if you're feeling brave we dare you to #getstung with our world famous Scorpion Shot as seen on Tanked and the Food Network."
)

# pic8 = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/nachodaddy.jpg')
# restaurant8.photo.attach(io: pic8, filename: 'nacho.jpg')
# pic8back = open('https://seat-check-seeds.s3-us-west-1.amazonaws.com/nachodaddyback.jpeg')
# restaurant8.bphoto.attach(io: pic8back, filename: 'nacho-back.jpg')

restaurant9 = Restaurant.create!(
    name: "The Publican",
    address: "837 W Fulton Market",
    city: "Chicago",
    state: "Illinois",
    zip: "60607",
    price: "$$",
    cuisine: 'American',
    open_time: DateTime.parse("16:00:00"),
    close_time: DateTime.parse("20:00:00"),
    phone_number: "(312) 733-9555",
    menu_link: "http://www.thepublicanrestaurant.com/dinner",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/publican.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/publican-back.jpg",
    description: "From the team behind Blackbird and avec comes this homage to beer, pork, and fish. Executive Chef Paul Kahan and Chef de Cuisine Dennis Bernard have developed a network of purveyors to supply the restaurant with hand-selected, sustainably-harvested fish and seafood as well as sustainably-raised heirloom pork to anchor a rustic menu of simple, eclectic fare. The extensive international beer list, developed by partners Eduard Seitan and Terry Alexander and now Beer Director Adam Vavrick, features 100 or so ales, lagers, stouts and ciders by the bottle, 12 of those available on tap. Like Blackbird and avec, The Publican is a design partnership from the James Beard Award-winning team of Thomas Schlesser and partner Donnie Madia."
)

restaurant10 = Restaurant.create!(
    name: "Zingari Rooftop Ristorante",
    address: "501 Post St",
    city: "San Francisco",
    state: "California",
    zip: "94102",
    price: "$$$",
    cuisine: 'Italian',
    open_time: DateTime.parse("13:00:00"),
    close_time: DateTime.parse("20:00:00"),
    phone_number: "(415) 885-8850",
    menu_link: "http://www.zingari.com/menu.html",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/zingari.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/zingari-back.jpg",
    description: "Welcome to our Rooftop Ristorante. Sip your Spritz or Negroni while you dine on Pappardelle and Ossobuco with Aperitivo music in the open air. With house-made pastas and roasted or grilled meats and fish around Italian wine and classic Italian cocktails, Zingari is a beautiful, lively place for you to restore and feel at home with your guests. Our Rooftop Ristorante is truly a unique event space and one of the best restaurants for group events and private dining in San Francisco."
)

restaurant11 = Restaurant.create!(
    name: "Wayfare Tavern",
    address: "558 Sacramento St",
    city: "San Francisco",
    state: "California",
    zip: "94111",
    price: "$$",
    cuisine: 'American',
    open_time: DateTime.parse("17:00:00"),
    close_time: DateTime.parse("21:00:00"),
    phone_number: "(415) 772-9060",
    menu_link: "https://www.wayfaretavern.com/menus/",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/foreign-cinema.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/foreign-cinema-back.jpg",
    description: "Chef Tyler Florence brings his passion for high quality and style to San Francisco with his new flagship restaurant, Wayfare Tavern. A classic San Francisco Tavern featuring authentic American dishes inspired by local cuisine at the turn of the 20th century, the menu ranges from classic comforts to rustic delicacies. The beverage menu features locally-sourced wines including a selection of Florence's own label, quality draft beers and organic root beer as well as classic Victorian-era cocktails. All three floors of the restaurant have been designed keeping historical accuracy in mind making Wayfare Tavern reminiscent of a Victorian parlor and an Edwardian men's club, where anything goes from black-tie to blue jeans. Pull up a stool to the Chef's Counter at the open kitchen and look on as Chef prepares your lunch or head to the Library and Billiard Room for a game of pool. Wayfare Tavern is a truly unparalleled dining experience translated from a century ago. Photo: John Lee."
)

restaurant12 = Restaurant.create!(
    name: "Foreign Cinema",
    address: "2534 Mission St",
    city: "San Francisco",
    state: "California",
    zip: "94110",
    price: "$$$",
    cuisine: 'Californian',
    open_time: DateTime.parse("17:00:00"),
    close_time: DateTime.parse("23:00:00"),
    phone_number: "(415) 648-7600",
    menu_link: "https://www.wayfaretavern.com/menus/",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/wayfaret.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/wayfaret-back.jpg",
    description: "Foreign Cinema is a one of a kind, nationally acclaimed restaurant combining independent films with California-Mediterranean cooking. Enjoy an airy yet chic setting, complete with indoor dining room with a fireplace, outdoor courtyard, mezzanine, gallery curated by Modernism & full bar in the main dining room. There is also a great cocktail bar, Laszlo, as you enter from Mission Street."
)

restaurant13 = Restaurant.create!(
    name: "Gracias Madre",
    address: "2211 Mission St",
    city: "San Francisco",
    state: "California",
    zip: "94110",
    price: "$$",
    cuisine: 'Mexican',
    open_time: DateTime.parse("16:00:00"),
    close_time: DateTime.parse("23:00:00"),
    phone_number: "(415) 683-1346",
    menu_link: "https://www.gracias-madre.com/menus.html",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/gracias-madre.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/gracias-madre-back.jpg",
    description: "Gracias Madre is truly an expression of who we are – it represents our deep love of and reverence for food, our commitment to health and sustainability, our unconditional love for our multicultural family and community, our devotion to the Earth and the divine feminine, and our commitment to raising consciousness on the planet. It is our intention that the emphasis we place on the sourcing of our food will bring consciousness in the community to the importance of sustainability and of buying and selling locally grown organic food. In an effort to cultivate a shared experience of nourishment through food and community, all tables at Gracias Madre are sat communally."
)

restaurant14 = Restaurant.create!(
    name: "Ombu Grill",
    address: "400 S Western Ave",
    city: "Los Angeles",
    state: "California",
    zip: "90020",
    price: "$$$",
    cuisine: 'Korean',
    open_time: DateTime.parse("16:00:00"),
    close_time: DateTime.parse("23:00:00"),
    phone_number: "(213) 297-5658",
    menu_link: "https://ombugrill.com/menu-2/",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/ombu.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/ombu-back.jpeg",
    description: "Ombu Grill is a casual chic Los Angeles Korean barbecue restaurant, featuring a twist of Argentinian asado in a unique mix of cuisines. Our premium quality Korean meats include favorites such as prime beef short ribs, pork, and seafood alongside authentic side dishes (banchan) and fresh salads. We also provide an Argentinian asado experience. Enjoy it alone, or pair the ribs with essential achuras for a complete parrillada combination. Guests delight in relaxing in our space with a modern and sophisticated ambiance. High backed booths and private rooms for small or large groups accommodate both personal and professional occasions, free from any loud interruptions or distractions. Strategic pops of color make for a trendy and inviting environment, while lush greenery provides a positive energy. Our high-tech smokeless grills are just one of many sleek details found at Ombu Grill."
)

restaurant15 = Restaurant.create!(
    name: "Takami Sushi & Robata Restaurant",
    address: "811 Wilshire Blvd",
    city: "Los Angeles",
    state: "California",
    zip: "90017",
    price: "$$$",
    cuisine: 'Japanese',
    open_time: DateTime.parse("18:00:00"),
    close_time: DateTime.parse("22:00:00"),
    phone_number: "(213) 236-9600",
    menu_link: "http://www.takamisushi.com/page/takami-sushi-menu",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/takami.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/takami-back.jpg",
    description: "Takami Sushi & Robata restaurant offers only the highest quality sushi grade seafood. Featuring 3 kitchens,- Sushi, Robata and Asian Fusion- Takami is the only restaurant located in Downtown LA offering outside dining 21 floors above the city with 360 degree views of Los Angeles. Craft Cocktails and full bar service is available."
)

restaurant16 = Restaurant.create!(
    name: "Arte Cafe",
    address: "106 W 73rd St",
    city: "New York",
    state: "New York",
    zip: "10023",
    price: "$$$",
    cuisine: 'Italian',
    open_time: DateTime.parse("16:00:00"),
    close_time: DateTime.parse("23:00:00"),
    phone_number: "(212) 501-7014",
    menu_link: "https://www.artecafenyc.com/upper-west-side-menus/",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/arte-cafe.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/arte-cafe-back.jpg",
    description: "West of Strawberry Fields, Arte Cafe located in a landmark brownstone, celebrating 22 years of serving the Upper West Side. Just steps away from Central Park presents upscale pan-Italian cuisine with artisanal homemade pastas, fresh meats, fish, pizza from a brick-oven and sumptuous desserts. Private rooms are available for all events and budgets."
)

restaurant17 = Restaurant.create!(
    name: "Prime & Provisions Steakhouse",
    address: "222 N La Salle St",
    city: "Chicago",
    state: "Illinois",
    zip: "60601",
    price: "$$$$",
    cuisine: 'Steak',
    open_time: DateTime.parse("15:00:00"),
    close_time: DateTime.parse("23:00:00"),
    phone_number: "(312) 726-7777",
    menu_link: "https://primeandprovisions.com/#section-23",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/prime-provis.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/prime-provis-back.jpg",
    description: "Prime & Provisions celebrates the simplicity of true steakhouse cuisine and prides itself on its' mission: to source the absolute best domestic beef available in the United States. Prime & Provisions' is the only steakhouse in Chicago to serve USDA Prime Creekstone Farms 100% All Natural Black Angus Beef, humanely raised, with no hormones or antibiotics. While the menu reconnects with traditional steakhouse roots, the decor highlights the vintage opulence of 222 North LaSalle's 'Crown Building' and creates a social experience that connects the modern-day patron with the sophistication and glamor of the era in which the building was first constructed. Prime & Provisions also offers a variety of private and semi-private dining spaces, including Prime Private, one of the largest and most intimate private dining rooms in Chicago."
)

restaurant18 = Restaurant.create!(
    name: "NoMI",
    address: "800 N Michigan Ave",
    city: "Chicago",
    state: "Illinois",
    zip: "60611",
    price: "$$$$",
    cuisine: 'French',
    open_time: DateTime.parse("17:00:00"),
    close_time: DateTime.parse("22:00:00"),
    phone_number: "(312) 239-4030",
    menu_link: "https://www.nomichicago.com/menus/",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/nomi.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/nomi-back.jpg",
    description: "NoMI represents a variety of unique dining experiences in NoMI Lounge and seasonal rooftop NoMI Garden, both serving modern French cuisine and sushi paired with skyline views."
)

restaurant19 = Restaurant.create!(
    name: "Salty's on Alki Beach",
    address: "1936 Harbor Ave",
    city: "Seattle",
    state: "Washington",
    zip: "98126",
    price: "$$$",
    cuisine: 'Seafood',
    open_time: DateTime.parse("14:00:00"),
    close_time: DateTime.parse("21:00:00"),
    phone_number: "(206) 937-1600",
    menu_link: "https://www.saltys.com/menus-seattle/",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/salt-alki.jpeg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/salty-alki-back.jpg",
    description: "Located on Alki Beach with the most spectacular view of the Seattle skyline, Salty's is one of the Top 100 Most Scenic Restaurants and Top 100 Best Brunches in America by OpenTable. Come dressed up or casual to enjoy our waterfront decks, patios, dining room, and private dining. Salty’s is renowned for our seasonal seafood, Northwest coastal cuisine, playful atmosphere, and uncommonly warm service. Our Northwest wine menu has won the Wine Spectator’s Award of Excellence since 2003. For nearly four decades, Salty’s has proudly welcomed generations of locals and travelers celebrating vacations, engagements, business, or simply a lovely day on the water. Join us for astonishing northwest coastal cuisine, service & smiles! We are proudly independent, family owned and operated with woman ownership."
)

restaurant20 = Restaurant.create!(
    name: "Canlis",
    address: "2576 Aurora Ave",
    city: "Seattle",
    state: "Washington",
    zip: "98109",
    price: "$$$$",
    cuisine: 'American',
    open_time: DateTime.parse("12:00:00"),
    close_time: DateTime.parse("21:00:00"),
    phone_number: "(206) 283-3313",
    menu_link: "https://canlis.com/menu",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/canlis.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/canlis-back.jpg",
    description: "This is a place where you feel welcomed. Run by the Canlis family, Canlis is the Pacific Northwest's most celebrated restaurant, winner of twenty consecutive Wine Spectator Grand Awards and three time James Beard runner up for best service in the country. Voted Most Romantic, Best View, Best Service, Best Design, Top Wine List and Wine Service, Washington Family Business of the year, and Best Overall Restaurant. At Canlis we are learners, and after 66 years of serving Seattle, we believe we're just beginning to get things right. We look forward to meeting you."
)

restaurant21 = Restaurant.create!(
    name: "Wild Ginger McKenzie",
    address: "2202B 8th Ave",
    city: "Seattle",
    state: "Washington",
    zip: "98121",
    price: "$$$",
    cuisine: 'Asian',
    open_time: DateTime.parse("15:00:00"),
    close_time: DateTime.parse("22:00:00"),
    phone_number: "(206) 707-0396",
    menu_link: "https://www.wildginger.net/menus-mckenzie",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/wgk.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/wgk-back.jpg",
    description: "Wild Ginger has been a staple in the Seattle food scene since 1989 - serving authentic Southeast Asian cuisine, craft cocktails, and more. This location has a hip, modern vibe and an industrial feel complete with a large U-shaped bar, custom lighting, authentic artwork and décor (such as a beautiful multi-colored Indian wedding shawl), Indonesian wood and copper details, floor-to-ceiling glass windows, an outdoor patio, and more. Both the bar and satay counter provide guests the opportunity to see all of the action unfold right in front of them. Enjoy dining outside this summer on our patio!"
)

restaurant22 = Restaurant.create!(
    name: "Ivar's Acres of Clams",
    address: "1001 Alaskan Way",
    city: "Seattle",
    state: "Washington",
    zip: "98104",
    price: "$$",
    cuisine: 'Seafood',
    open_time: DateTime.parse("12:00:00"),
    close_time: DateTime.parse("20:00:00"),
    phone_number: "(206) 624-6852",
    menu_link: "https://www.ivars.com/locations/acres-of-clams#menus",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/ivar.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/ivar-back.jpg",
    description: "We're happy to welcome you back for seated dining. We appreciate the support you've shown us during these challenging times and want to ensure your safety and comfort come first when visiting us. We're taking extra precautions and steps to create an extra safe environment, including additional sanitization throughout our restaurants, proper spacing among parties, minimal contact between servers and guests and additional health screening and training of our staff. Due to space limitations within our restaurant, reservations are recommended."
)

restaurant24 = Restaurant.create!(
    name: "Ohlala French Bistro",
    address: "2120 N Rampart Blvd",
    city: "Las Vegas",
    state: "Nevada",
    zip: "89128",
    price: "$$",
    cuisine: 'French',
    open_time: DateTime.parse("13:00:00"),
    close_time: DateTime.parse("21:00:00"),
    phone_number: "(702) 222-3522",
    menu_link: "https://www.ohlalafrenchbistro.com/dinner/",
    photo: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/ohlala.jpg",
    bphoto: "https://seat-check-seeds.s3-us-west-1.amazonaws.com/ohlala-back.jpg",
    description: "OHLALA is a modern french bistro that make you fall in love with french food. Ohlala had been created by Richard Terzaghi, owner of L'Osteria Del Forno in San Francisco. In the Industry restaurant since 2002. Whether you’re looking for a romantic rendez-vous or a place to enjoy for happy hour with large choice of different plates to share, you’ll find the perfect spot at OHLALA. The décor midway between little Parisian bistro and cozy restaurant is ideal for Rendez-Vous and happy friends meeting. The bar waits for you, enjoy happy hours, and wine tasting. OHLALA definitely awaits for you. The large choice of small plates to share, tartines and full dishes in the respect of traditional french cook will delight the food lovers The wine list is comprised of high quality yet affordable wines from France and California."
)


reservation1 = Reservation.create!(
    restaurant_id: 6,
    user_id: 4,
    party: 2,
    time: "17",
    date: "2020-07-04"
)

reservation2 = Reservation.create!(
    restaurant_id: 3,
    user_id: 2,
    party: 5,
    time: "18",
    date: "2020-10-05"
)
reservation3 = Reservation.create!(
    restaurant_id: 2,
    user_id: 2,
    party: 3,
    time: "19",
    date: "2020-08-24"
)
reservation4 = Reservation.create!(
    restaurant_id: 4,
    user_id: 2,
    party: 7,
    time: "20",
    date: "2020-12-18"
)
reservation5 = Reservation.create!(
    restaurant_id: 7,
    user_id: 3,
    party: 4,
    time: "20",
    date: "2020-12-18"
)

reviewDataGood = [
    "Absolutely magnificent",
    "I did not know this awesome place was here!",
    "My partner and I had our first date here. We loved it!",
    "Hands down the best service in the city!",
    "Can't wait to come back!",
    "Be sure the try the drinks here too",
    "Wowerz Bowsers",
    "Wauuuuuuuu AMAZING!",
    "I wish I knew about this earlier",
    "Told the chef to pack his bags and things, because he should be working in the finest restaurant in the world! Love the food",
    "Totally worth the price",
    "I saw Steph Curry eat here!",
    "Only thing bad about this place is that parking, there is a garage/lot 2 blocks away for $10 though.",
    "What ever you do, don't try the steak. It is so good you will come back everyday. This place ruined my social life.",
    "I upgrade this score because the wait staff was spectacular.",
    "Sat down for lunch for 3 hours, stayed for dinner too.",
    "My Lover Karen and I adore this place so much we're considering holding our ceremony here. Hope they do weddings!"

]
reviewDataBad = [
    "I was petrified by the food here, would not recommend",
    "Not the best in the city, but it was okay to my standard",
    "Place was slow, but could be because I went on a Friday night.",
    "My friend showed my this place, worst friend ever...",
    "If my meat were Gordan Ramsey it would say IT WAS RAW, maybe try the fish next time.",
    "I wish I knew about this eariler! so I would know how good of place this was and thats bad.",
    "Same-Same but Different but still Same to the place across the street",
    "Food was great, but the music they played was too loud",
    "The entire kitchen and wait staff saw an ice cream truck and ran outside. I sat in the restaurant alone for 10 minutes. I can't believe this happened."
]

Rating.create(
    user_id: 1,
    restaurant_id:1,
    overall_score: 5,
    review: "Make no mistake. This is the best steakhouse in the town. Be sure the get the cream spinach. It's bomb diggity"
)

20.times do 
    Rating.create(
        user_id: (2..10).to_a.sample,
        restaurant_id: (1..24).to_a.sample,
        overall_score: (3..5).to_a.sample,
        review: reviewDataGood.sample
    )
end

20.times do 
    Rating.create(
        user_id: (2..10).to_a.sample,
        restaurant_id: (1..24).to_a.sample,
        overall_score: (1..2).to_a.sample,
        review: reviewDataBad.sample
    )
end

Favorite1 = Favorite.create(
    user_id: 1,
    restaurant_id: 1
)
Favorite2 = Favorite.create(
    user_id: 1,
    restaurant_id: 4
)