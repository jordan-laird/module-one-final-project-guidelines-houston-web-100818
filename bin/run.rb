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

  @prompt.select("Available Options", %w(My\ Tickets All\ Movies Find\ By\ Rating Find\ By\ Title))

  binding.pry
  0
