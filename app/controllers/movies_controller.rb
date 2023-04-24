class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all


    render({ :template => "movie_templates/index_movies.html.erb"})
  end

  #def movie_details
    #params look like...
    #movie_id = params.fetch("movie_id")
    
    #@the_movie = Movie.where({ :id=>movie_id}).at(0)
    #@filmography = Movie.where({ :movie_id =>@the_movie.id })
  #end

end
