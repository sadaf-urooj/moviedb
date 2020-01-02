class HomeController < ApplicationController
  def index
    @movies = Movie.top_four
    @all_movies = Movie.includes(:votes).all.paginate(:page => params[:page], per_page: 8)
  end
end