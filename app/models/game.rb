# frozen_string_literal: true

# Game model
class Game < ApplicationRecord
  has_many :participants, dependent: :destroy
  validates :title, :game_date, :location, presence: true

  accepts_nested_attributes_for :participants, allow_destroy: true

  after_create :update_status

  # Update Game status
  def update_status
    participant = self.participants
    status = participant.first.score > participant.second.score
    if status == true
      participant.first.update(status: 'win')
      participant.second.update(status: 'loss')
    else
      participant.second.update(status: 'win')
      participant.first.update(status: 'loss')
    end
  end
end
