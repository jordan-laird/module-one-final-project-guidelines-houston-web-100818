require_relative '../config/environment'
require 'rest-client'
require 'pry'



    def get_films_from_API
        headers_we_need = { "api-version" => 'v200',
            "Authorization" => 'Basic RkxBVDpGcTI2WGVzcTZrcGM=',
            "client" => '{{client}}',
            "x-api-key" => 'bf8cV4CUeB70aokhO3GJb3xMkEw2fvnM8K40n8H2',
            "device-datetime" => '2018-10-23T20:11:46.509Z',
            "territory" => 'US',
            "user_id" => 'FLAT',
            "app_version" => 'Version of your app, eg 1.0.5 (Optional)',
            "app_platform" => 'Platform of your app, eg iOS (Optional)',
            "language" => '{{language}}',
            "cache-control" => 'no-cache',
            "Postman-Token" => 'b15c2206-8a61-4ffd-8361-fa24f2408902' }
        response_string = RestClient.get("https://api-gate2.movieglu.com/cinemaShowTimes/?date=2018-10-23&cinema_id=6968", headers = headers_we_need)

        response_hash = JSON.parse(response_string)
        film_information = response_hash["films"].each do |film_content|
        film_name_stored = film_content["film_name"] 
        puts "#{film_name_stored}"


    end
end
get_films_from_API

def start
    puts "Hello! Welcome to FilmGrab!"
    puts "-----------------------------------------"
end

 def get_name
    puts "Enter your full name."
    user_input = gets.chomp
    if User.exists?(:name => user_input)
        puts "Hello #{user_input}! Welcome Back!"
        puts "-----------------------------------------"
    else
        User.create(:name => user_input)
        puts "Welcome #{user_input}!"
        puts "-----------------------------------------"
    end
end

 def user_options
    puts "AVAILABLE OPTIONS"
    puts "[1] My Tickets"
    puts "[2] Today's Movies"
    puts "[3] Movie Times"
    puts "[4] Select Movie Rating"
    puts "-----------------------------------------"
 end

start
get_name
user_options

binding.pry
0

    











