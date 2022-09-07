class Exercise < ApplicationRecord
  belongs_to :workout
  validates  :name, presence: true
  validates :set, presence: true
  validates :rep, presence: true
  validates :weight, presence: true
end
