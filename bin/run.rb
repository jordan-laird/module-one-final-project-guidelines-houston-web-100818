require_relative '../config/environment'
require 'rest-client'
require 'pry'

@prompt = TTY::Prompt.new

@prompt.say("Hello! Welcome to FilmGrab!")

user_input = @prompt.ask('Please enter your name:')
found_user = User.find_or_create_by(name: user_input)

  if found_user != nil
    puts "Welcome #{found_user.name}"
  else
    puts "#{found_user.name}"
  end

  return_value = @prompt.select("Available Options", %w(My\ Tickets All\ Movies Find\ By\ Rating Find\ By\ Title))



  if return_value == "My Tickets"
    if nil
      puts "You have no tickets"
    else
      Ticket.all.select do |t|
      t.users == found_user.name
      end
    end
     
    
  elsif return_value == "All Movies"
    selected_title = @prompt.select("Available Options", Movie.all.map{ |movie| movie.title})
    selected_movie = Movie.find_by(title: selected_title)
    Ticket.create(user: found_user, movie: selected_movie)
    binding.pry
  
    # Movie.all.each do |movie|
    #   puts movie.title 
    # end
 
  elsif return_value == "Find By Rating"
    rating_input = @prompt.select("Available Options", %w(PG PG-13 R))
    Movie.all.each do |m|
      if m.rating == rating_input
        puts m.title
      end
    end
    
  

  # elsif return_value == "Find By Title"

  end
  
  # if user_input == "exit"
  #       exit
  #   elsif user_input == "back"
  #       start_prompt 
  # end
  
