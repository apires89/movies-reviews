class Review < ApplicationRecord
  belongs_to :movie
  # @review.movie
  validates :content, presence: true
end
