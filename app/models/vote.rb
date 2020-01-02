class Vote < ApplicationRecord

  belongs_to :votable, :polymorphic => true

  enum status: [:up, :down]

  scope :up_size, -> { where(status: :up).count }
  scope :down_size, -> { where(status: :down).count }
end
