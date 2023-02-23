class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end
#create
    def self.create_with_title(title)
        Movie.create(title: "This is a title.")
    end
    #Read
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count
        Movie.count
    end
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    def self.find_movie_with_attributes(title)
        Movie.find_by(title)
    end
    def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002)
    end

    #update
    def self.update_all_titles(title)
        Movie.update(title: "Untitled")
    end
    def update_with_attributes(title)
        self.update(title: "Even Awesomer Flick")
    end

    #delete
    def self.delete_all_movies
        Movie.destroy_all
    end

    def self.delete_by_id(id)
        Movie.destroy(id)
    end


end

