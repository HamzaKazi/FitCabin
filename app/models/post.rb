class Post < ApplicationRecord
  # acts_as_votable
  belongs_to :user
  validates :caption, presence: true
  # validates :image, presence: true
  has_one_attached :image
  has_many :comments
end
