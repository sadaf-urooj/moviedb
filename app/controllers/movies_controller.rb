class MoviesController < ApplicationController
   
 before_action :authenticate_user!, except: :index


  def index
    if params[:genre_id]  
        @genre = Genre.find(params[:genre_id])
        @movies = @genre.movies
    else 
        @movies = Movie.all
    end
  end

def show
  @movie = Movie.find(params[:id])
end 


  def upvote
    @movie = Movie.find(params[:id])
    @movie.upvote_from current_user

     redirect_back(fallback_location: root_path)
  end


  def downvote
    @movie = Movie.find(params[:id])
    @movie.downvote_from current_user
    
    redirect_back(fallback_location: root_path)
  end 
end
