require_relative '../config/environment'

def start
    puts "Hello! Welcome to FilmGrab!"
    puts "-----------------------------------------"
end

def get_name
    puts "Enter your full name."
    user_input = gets.chomp

    if User.exists?(:name => user_input)
        puts "Welcome back #{user_input}!"
    else
        User.create(:name => user_input)
        puts "Welcome #{user_input}!"
    end
end

def user_options


end
start
get_name

binding.pry