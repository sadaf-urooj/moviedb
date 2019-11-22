class MoviesController < ApplicationController
   
 before_action :authenticate_user!, except: :index


  def index
    if params[:genre_id]  
        @genre = Genre.find(params[:genre_id])
        @movies = @genre.movies.includes(:votes).all.paginate(:page => params[:page], per_page: 3)
    else 
        @movies = Movie.includes(:votes).all.paginate(:page => params[:page], per_page: 2)
    end
  end

def show
  @movie = Movie.find(params[:id])
end 


  
  
end
