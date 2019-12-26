class Movie < ApplicationRecord
   
    has_and_belongs_to_many :genres
    has_one_attached :bg_cover
    has_one_attached :cover

    has_many :votes

    scope :top_four, -> {order(imdb_rating: :desc).limit(4)}




    def up_vote_for?(current_user)
        if current_user.present?
            votes.up.where(user_id: current_user.id).present?
        end
    end 

    def down_vote_for?(current_user)
        if current_user.present?
            votes.down.where(user_id: current_user.id).present?
        end
    end 


    def up_vote_for(current_user)

        votes.up.find_by(user_id: current_user.id)
    end
    
    def down_vote_for(current_user)
        votes.down.find_by(user_id: current_user.id)
    end
    




end
 # <% if movie.up_vote_for?(current_user)  #movie.votes.down.where(user_id: current_user.id).present? %> 