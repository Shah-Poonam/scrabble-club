# frozen_string_literal: true

# Game Helper
module GamesHelper
  # Find High score
  def high_score(participants)
    participants.map(&:score).max || 0
  end

  # Participant1 Name
  def participant1(participants)
    participants&.first&.member&.full_name
  end

  # Participant1 Score
  def participant1_score(participants)
    participants&.first&.score
  end

  # Participant2 Name
  def participant2(participants)
    participants&.second&.member&.full_name
  end

  # Participant2 Score
  def participant2_score(participants)
    participants&.second&.score
  end

  # Find Winner Name
  def winner(participants)
    winner = participants.find_by(status: 'win')
    winner.present? ? winner&.member&.full_name : '-'
  end
end
