# INSERT INTO users (movies, tickets) VALUES ()

# INSERT INTO movies (users, tickets) VALUES ()

# INSERT INTO tickets (user_id, movie_id) VALUES ()

require 'rest-client'
require 'pry'

Movie.destroy_all
Ticket.destroy_all
User.destroy_all

    

        date = Time.now.strftime("%Y-%m-%d")
        headers_we_need = { "api-version" => 'v200',
            "Authorization" => 'Basic Tk9ORV8xMDoxZlBHbmNXQ3ZjbUE=',
            "client" => '{{client}}',
            "x-api-key" => 'jPFCB6qIo459pl5ql7XJI1VCy1vbRQFda9uvdHEO',
            "device-datetime" => "#{date}T20:11:46.509Z",
            "territory" => 'US',
            "user_id" => 'NONE_10',
            "app_version" => 'Version of your app, eg 1.0.5 (Optional)',
            "app_platform" => 'Platform of your app, eg iOS (Optional)',
            "language" => '{{language}}',
            "cache-control" => 'no-cache',
            "Postman-Token" => '6ab70e1d-dd94-489c-b2ba-b731b06bae22' }
        response_string = RestClient.get("https://api-gate2.movieglu.com/cinemaShowTimes/?date=#{date}&cinema_id=6968", headers = headers_we_need)

        response_hash = JSON.parse(response_string)
        film_information = response_hash["films"].each do |film_content|
            film_showings = film_content["showings"]
            film_rating = film_content["age_rating"]
            #binding.pry
            Movie.create(title: film_showings["Standard"]["film_name"], rating: film_rating[0]["rating"])
            # film_showings["Standard"]["times"].each do |time|
            #     film_start_time = time["start_time"]
            end



        



# binding.pry
# 0
