class Participant < ApplicationRecord
  belongs_to :game
  belongs_to :member
  validates :score, presence: true
end
