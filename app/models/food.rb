class Food < ApplicationRecord
  # include PgSearch::Model

  # pg_search_scope :global_search,
  # against: [ :name,],
  # associated_against: {
  #   name: [ :name]
  # },
  # using: {
  #   tsearch: { prefix: true }
  # }
end
