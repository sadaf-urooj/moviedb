class Movie < ApplicationRecord
    acts_as_votable
    has_and_belongs_to_many :genres
    has_one_attached :bg_cover
    has_one_attached :cover

    scope :top_four, -> {order(imdb_rating: :desc).limit(4)}



end
