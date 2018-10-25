
class Interface

    def initialize
        start
        get_name
        user_options
    end


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

    # def user_option_input

        user_input = gets.chomp

        if user_input == 1

        elsif user_input == 2
            Movie.titles
        elsif user_input == 3 

        elsif user_input == 4

        else

        end
            

    end



end

