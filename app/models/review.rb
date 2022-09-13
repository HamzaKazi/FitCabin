class Review < ApplicationRecord
  belongs_to :gym
  belongs_to :user
  validates :rating, presence: true
end
