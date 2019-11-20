class Vote < ApplicationRecord

    belongs_to :movie
    belongs_to :user


     enum status: [:up, :down]
end
