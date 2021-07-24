# frozen_string_literal: true

# Leader Board Controller
class LeaderBoardsController < ApplicationController
  # List of Top 10 participants
  def index
    @members = Member.joins(:participants).select("members.*, AVG(participants.score) as score").group('members.id').having('count(participants.id)>=10').order("score DESC").limit(10)
  end
end
