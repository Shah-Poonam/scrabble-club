# frozen_string_literal: true

# Members Controller
class MembersController < ApplicationController
  before_action :find_member, only: %i[ show edit update destroy ]

  # List of members
  def index
    @members = Member.all
  end

  # Show member's details
  def show
    @participants = @member.participants
    @highest_score_value = @participants.order('score DESC').first
    @opponent = Participant.includes(:member).where(game_id: @highest_score_value&.game_id).where.not(member_id: @highest_score_value&.member_id)&.first&.member&.full_name
  end

  # Initialize Member
  def new
    @member = Member.new
  end

  # Edit Member Data
  def edit; end

  # Create Member
  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to members_path
      flash[:notice] = 'Member was successfully created.'
    else
      flash[:alert] = 'Member failed to create!'
      render :new
    end
  end

  # Update Member
  def update
    if @member.update(member_params)
      redirect_to members_path
      flash[:notice] = 'Member was successfully updated.'
    else
      flash[:alert] = 'Member failed to update!'
      render :edit
    end
  end

  # Destroy Member
  def destroy
    if @member.destroy
      redirect_to members_path
      flash[:notice] = 'Member was successfully destroyed.'
    else
      redirect_to members_path
      flash[:notice] = 'Member failed to delete.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_member
      @member = Member.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_params
      params.require(:member).permit(:first_name, :last_name, :email, :phone_number)
    end
end
