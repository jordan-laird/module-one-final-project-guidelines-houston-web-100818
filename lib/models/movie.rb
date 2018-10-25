class Movie < ActiveRecord::Base
    has_many :tickets
    has_many :users, through: :tickets


    def self.all_movie_titles
        Movie.all.map  do |movie|
            movie.title
        end
    end

    def find_by_title(title)
        Movie.all.select do |title|
            title == Movie.title
        end
    
    end

    def find_by_rating(input_rating)
        Movie.where(rating: input_rating)
    end

end