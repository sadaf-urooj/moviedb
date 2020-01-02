module Movies
  class VotesController < ApplicationController
    before_action :authenticate_user!

    def create
      @vote = Vote.find_or_create_by(votable_id: params[:movie_id], user_id: current_user.id, votable_type: 'Movie')
      @vote.status = params[:status]
      @vote.save
      redirect_back(fallback_location: root_path)
    end

    def destroy
      @vote = Vote.find(params[:id])
      @vote.destroy
      redirect_back(fallback_location: root_path)
    end
  end
end