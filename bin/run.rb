require_relative '../config/environment'
require 'rest-client'
require 'pry'



  @prompt = TTY::Prompt.new
  @prompt.say("Hello! Welcome to FilmGrab!")
  
  def output_by_rating(all_movies, found_user)
    x = @prompt.select("Click to see more:") do |options|
      all_movies.collect do |movie|
        options.choice movie.title
      end 
    end
    selected_movie = Movie.find_by(title: x)
    Ticket.create(user: found_user, movie: selected_movie)
        puts "Thank you"

        start_prompt
  end 
  


  # if found != nil
  #   puts "Welcome #{found.name}"
  # else
  #   puts "#{found.name}"
  # end
  # found


  def start_prompt
    user_input = @prompt.ask('Please enter your name:')
    found_user = User.find_or_create_by(name: user_input)

    return_value = @prompt.select("Available Options", %w(My\ Tickets All\ Movies Find\ By\ Rating Exit))
   

    if return_value == "My Tickets"
        y = []
        Ticket.all.each do |t|
          if t.user_id == found_user.id
          y << Movie.find(t.movie_id).title
          end
        end
        

        if y.empty?
          puts "You have no movies"
        else
          puts y
        end
        start_prompt
    
    # if return_value == "My Tickets"
    #   binding.pry
    #     Ticket.all.each do |t|
    #       if t.user_id == found_user.id
    #         puts t.title
    #       else
    #         puts "error"
    #       end
    #     end
      elsif return_value == "All Movies"
      selected_title = @prompt.select("Available Options", Movie.all.map{ |movie| movie.title})
      selected_movie = Movie.find_by(title: selected_title)
      Ticket.create(user: found_user, movie: selected_movie)
        puts "Thank you"
        start_prompt
    
      # Movie.all.each do |movie|
      #   puts movie.title 
      # end
  
    elsif return_value == "Find By Rating"

      rating_input = @prompt.select("Available Options", %w(PG PG-13 R))
      all_by_rating = Movie.all.select do |m|
        m.rating == rating_input
      end
      
      output_by_rating(all_by_rating, found_user)

     elsif return_value == "Exit"
      exit
    end
  end

  
  start_prompt

  
