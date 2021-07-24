# frozen_string_literal: true

# Member Helper
module MembersHelper
  # Find Number of wins
  def no_of_wins
    @participants&.where(status: 'win').count
  end

  # Find Number of losses
  def no_of_losses
    @participants&.where(status: 'loss').count
  end

  # Find Average score
  def average_score(member)
    member&.average(:score).present? ? sprintf("%.2f", member&.average(:score)) : 0
  end

  # Member's Win date
  def member_win_date
    @highest_score_value&.created_at&.strftime("%b %d %Y")
  end

  # Member's Winning location
  def member_winning_location
    @highest_score_value&.game&.location
  end
end
