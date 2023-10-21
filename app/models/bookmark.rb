class Bookmark < ApplicationRecord
  validates_length_of :comment, :minimum => 6
  validates :movie_id, uniqueness: { scope: :list_id, message: "This movie is already in the list." }
  belongs_to :movie
  belongs_to :list
end
