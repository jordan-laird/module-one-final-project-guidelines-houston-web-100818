# require_relative '../config/environment'

# @prompt = TTY::Prompt.new

# @prompt.say('Hello! Welcome to FilmGrab!')

# @prompt.ask('Please enter your name:') do |q|
#   q.required true  
#   q.modify :strip, :collapse
#   end

# @prompt.ask(what) do |q|
#         q.required true
#         q.modify :strip, :collapse
#       end
# # prompt.select("Please select a movie?", %w(Scorpion Kano Jax))
# =>
# Choose your destiny? (Use arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax

# prompt.select('What movie would you like to watch?') do |menu|
#     menu.choice film_name: 'small',  value: 1
#     menu.choice film_name: 'medium', value: 2
#     menu.choice film_name: 'large',  value: 3
#   end


#   def user_options
#     puts "AVAILABLE OPTIONS"
#     puts "[1] My Tickets"
#     puts "[2] Today's Movies"
#     # puts "[3] Movie Times"
#     puts "[4] Select Movie Rating"
#     puts "-----------------------------------------"
# end

# require_relative '../config/environment'
# system "clear"


# @prompt = TTY::Prompt.new(enable_color: true)

# def spacing(user_input)
#     good_input = user_input.split(' ').map do |word|
#         word.capitalize
#     end
#     good_input.join(' ')
# end 

# def ask(question)
#   @prompt.ask(question) do |q|
#     q.required true
#     q.modify :strip, :collapse
#   end
# end

# def more_info(found_object)
#   @prompt.select("Click to see more info:", filter: true) do |options|
#     found_object.collect do |object|
#       options.choice object.name 
#     end
#   end
# end

# def film_info(all_films)
#     x = @prompt.select("Click to see more info:", filter: true) do |options| 
#         all_films.collect do |film|
#             options.choice film.name
#         end 
#     end
#     puts film.find_by(name: x).info
# end

# def not_found 
#     puts "Sorry, we couldn't find that one."
#     start_prompt
# end

# def film_details(results)
#     puts results.info
#     @prompt.keypress("Press any key to see the menu")
#     film_details(results.movies)
# end


# def exit?(user_input)
#     if user_input == "exit"
#         exit
#     elsif user_input == "back"
#         start_prompt 
#     end
# end
# binding.pry

# 0
# # def start_prompt_beers_name

# #     user_input = ask("What is the name of the beer?")
# #     exit?(user_input)
# #     begin
# #     x = Beer.find_by(name: spacing(user_input))
      
# #     puts x.label
# #     rescue 
# #     puts "Sorry, we couldn't find that one."
# #         start_prompt_beers_name
# #     end
# #     start_prompt
# # end 

# # def start_prompt_beer_by_brewery
# #     user_input = ask("What is the name of the brewery?")
# #     exit?(user_input)
# #         begin 
# #         found_brewery = Brewery.find_by(name: spacing(user_input))
        
# #         x= @prompt.select("Click to see more info:", filter: true) do |options|
# #             found_brewery.beers.collect do |beer|
# #                 options.choice beer.name
# #             end     
# #         end
        
#         puts Beer.find_by(name: x).label
#     rescue 
#         puts "Sorry, we couldn't find that one."
#         start_prompt_beer_by_brewery
#     end
#     start_prompt
        
# end 

# def start_prompt_beer_by_style
#     user_input = ask("Which style?") 
#     exit?(user_input)
#         begin    
#         found_by_style = Beer.find_by_style(spacing(user_input))
#         rescue
#             puts "Sorry, we couldn't find that one."
#              start_prompt_beer_by_style
#         end
#         x= more_info(found_by_style)
#         puts Beer.find_by(name: x).label
#         start_prompt
# end 

# def start_prompt_brewery_by_name
#     user_input = ask("What is the name of the brewery?")
#     exit?(user_input)
#     begin 
#     x = Brewery.find_by(name: spacing(user_input))
#         puts x.info
#     rescue 
#         puts "Sorry, we couldn't find that one."
#              start_prompt_brewery_by_name
#     end

#     @prompt.keypress("Press any key to see the menu")
#     beers_select_label(x.beers)
# end 

# def start_prompt_brewery_by_city
#     user_input = ask("What is the name of the city?")
#     exit?(user_input)
#         begin
#             found_breweries = Brewery.select {|b| b.city == spacing(user_input)}

#             y = more_info(found_breweries)
#         rescue
#             puts "Sorry, we couldn't find that one."
#             start_prompt_brewery_by_city
#         end
#         z = Brewery.find_by(name: y)
        
#         see_menu_labels(z)
# end 

# def start_prompt_brewery_by_state
#     user_input = ask("What is the name of the state?")
#     exit?(user_input)       
#     begin
#     x = Brewery.select {|b| b.state == spacing(user_input)}

#     y = more_info(x)
#     rescue
#         puts "Sorry, we couldn't find that one."
#         start_prompt_brewery_by_state
#     end
#     z = Brewery.find_by(name: y)
    
#     see_menu_labels(z)
# end 

# def start_prompt_brewery_by_country
#     user_input = ask("What is the name of the country?")
#     exit?(user_input)    
#         begin
#         x = Brewery.select {|b| b.country == spacing(user_input)}
        
#         y = more_info(x)
#         rescue
#             puts "Sorry, we couldn't find that one."
#             start_prompt_brewery_by_country
#         end
#         z = x.find do |brewery|
#             brewery.name == y
#         end 
        
#         see_menu_labels(z)
# end

# def start_prompt
# answer1 = @prompt.select("What do you want to do?", 
#     %w(Find\ Beer Find\ Brewery Browse\ By\ Style Exit))
# if answer1 == "Find Beer"
    
#     answer2 = @prompt.select("How do you want to find a beer?", %w(Name Brewery Style Display\ All))
#     case answer2 
#     when "Name" 

#         start_prompt_beers_name

#     when "Brewery"
#         start_prompt_beer_by_brewery

#     when "Style"
        
#         start_prompt_beer_by_style
    
#     when "Display\ All"
#         beers_select_label(Beer.all)
#         start_prompt
#     end


# elsif answer1 == "Find Brewery"
#     answer2 = @prompt.select("How do you want to find a brewery?", %w(Name City State Country Display\ All))
#     case answer2
#     when "Name"
#         start_prompt_brewery_by_name
        
#         start_prompt
#     when "City"
#         start_prompt_brewery_by_city
#         start_prompt
#     when "State"
#         start_prompt_brewery_by_state
#         start_prompt
#     when "Country"
#         start_prompt_brewery_by_country
#         start_prompt
#     when "Display\ All"
#         x = @prompt.select("Click to see more info:", filter: true) do |options| 
#             Brewery.all.collect do |brewery|
#                 options.choice brewery.name
#             end 
#         end
    
#         z = Brewery.find_by(name: x)
#         see_menu_labels(z)
#         start_prompt
#     end 
# elsif answer1 == "Browse By Style"
#   x = @prompt.select("Click to see beers in this style:") do |options| 
#     Style.all.collect do |style|
#         options.choice style.style_name
#     end 
#   end
 
#   instance_of_style = Style.find_by(style_name: x)
#   style_beers = Beer.all.select do |b|
#     b.style_id == instance_of_style.id 
#   end
    
#   beers_select_label(style_beers)
#   start_prompt
# elsif answer1 == "Exit"
# exit 
# end

#end
