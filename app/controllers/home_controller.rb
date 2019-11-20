class HomeController < ApplicationController
  def index
    @movies = Movie.top_four
    @all_movies = Movie.all
  end
end
