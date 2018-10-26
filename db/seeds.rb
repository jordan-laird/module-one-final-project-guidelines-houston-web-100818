Movie.destroy_all
# Ticket.destroy_all
# User.destroy_all

    

#         date = Time.now.strftime("%Y-%m-%d")
#         headers_we_need = { "api-version" => 'v200',
#             "Authorization" => 'Basic Tk9ORV8xMDoxZlBHbmNXQ3ZjbUE=',
#             "client" => '{{client}}',
#             "x-api-key" => 'jPFCB6qIo459pl5ql7XJI1VCy1vbRQFda9uvdHEO',
#             "device-datetime" => "#{date}T20:11:46.509Z",
#             "territory" => 'US',
#             "user_id" => 'NONE_10',
#             "app_version" => 'Version of your app, eg 1.0.5 (Optional)',
#             "app_platform" => 'Platform of your app, eg iOS (Optional)',
#             "language" => '{{language}}',
#             "cache-control" => 'no-cache',
#             "Postman-Token" => '6ab70e1d-dd94-489c-b2ba-b731b06bae22' }
#         response_string = RestClient.get("https://api-gate2.movieglu.com/cinemaShowTimes/?date=#{date}&cinema_id=6968", headers = headers_we_need)

#         response_hash = JSON.parse(response_string)
#         film_information = response_hash["films"].each do |film_content|
#             film_showings = film_content["showings"]
#             film_rating = film_content["age_rating"]
#             #binding.pry
#             Movie.create(title: film_showings["Standard"]["film_name"], rating: film_rating[0]["rating"])
#             # film_showings["Standard"]["times"].each do |time|
#             #     film_start_time = time["start_time"]
#             end



        



# # binding.pry
# # 0

first = Movie.create(title: "Halloween (2018)", rating: "R")
Movie.create(title: "A Star is Born", rating: "R")
Movie.create(title: "Venom", rating: "PG-13")
Movie.create(title: "Goosebumps 2: Haunted Halloween", rating: "PG")
Movie.create(title: "First Man", rating: "PG-13")
Movie.create(title: "Hunter Killer", rating: "R")
Movie.create(title: "The Hate U Give", rating: "PG-13")
Movie.create(title: "Smallfoot", rating: "PG")
Movie.create(title: "Night School", rating: "PG-13")
Movie.create(title: "Mid90s", rating: "R")
Movie.create(title: "Bad Times at the El Royale", rating: "R")
Movie.create(title: "The Old Man & The Gun", rating: "PG-13")
Movie.create(title: "Indivisible", rating: "PG-13")
Movie.create(title: "Johnny English Strikes Again", rating: "PG")
Movie.create(title: "Free Solo", rating: "PG-13")
Movie.create(title: "The Oath", rating: "R")

User.create(name: "Janet")
User.create(name: "Bilikis")
User.create(name: "Jordan")


