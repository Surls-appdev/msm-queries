class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index_movies.html.erb"})
  end

  def movie_details
    movie_id = params.fetch("movie_id")
    
    @the_movie = Movie.where({ :id => movie_id}).at(0)
    
    render({ :template => "movie_templates/details.html.erb"})
  end

end
