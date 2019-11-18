class HomeController < ApplicationController
  def index
    @movies = Movie.top_four
  end
end
