class Post < ApplicationRecord
  belongs_to :user
  validates :caption, presence: true
end
