require_relative '../config/environment'
require 'rest-client'
require 'pry'



    def get_films_from_API

        date = Time.now.strftime("%Y-%m-%d")
<<<<<<< HEAD
=======

>>>>>>> 951b0917c7f2c7579378d015196e3cf022a5e680
        headers_we_need = { "api-version" => 'v200',
            "Authorization" => 'Basic RkxBVDpGcTI2WGVzcTZrcGM=',
            "client" => '{{client}}',
            "x-api-key" => 'bf8cV4CUeB70aokhO3GJb3xMkEw2fvnM8K40n8H2',
            "device-datetime" => "#{date}T20:11:46.509Z",
            "territory" => 'US',
            "user_id" => 'FLAT',
            "app_version" => 'Version of your app, eg 1.0.5 (Optional)',
            "app_platform" => 'Platform of your app, eg iOS (Optional)',
            "language" => '{{language}}',
            "cache-control" => 'no-cache',
            "Postman-Token" => 'b15c2206-8a61-4ffd-8361-fa24f2408902' }
<<<<<<< HEAD
        response_string = RestClient.get("https://api-gate2.movieglu.com/cinemaShowTimes/?date=#{date}&cinema_id=6968", headers = headers_we_need)
=======

>>>>>>> 951b0917c7f2c7579378d015196e3cf022a5e680



        response_hash = JSON.parse(response_string)
        film_information = response_hash["films"].each do |film_content|
        film_name_stored = film_content["film_name"] 
        puts "#{film_name_stored}"


    end
end
get_films_from_API

binding.pry
0
