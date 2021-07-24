# frozen_string_literal: true

# Gamess Controller
class GamesController < ApplicationController
  before_action :find_game, only: %i[destroy]

  # List of games
  def index
    @games = Game.all
  end

  # Initialize game
  def new
    @game = Game.new
    2.times { @game.participants.build }
  end

  # Create game
  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_path
      flash[:notice] = 'Game was successfully created.'
    else
      flash[:alert] = 'Game failed to create!'
      render :new
    end
  end

  # Destroy Game
  def destroy
    if @game.destroy
      redirect_to games_path
      flash[:notice] = 'Game was successfully destroyed.'
    else
      redirect_to games_path
      flash[:notice] = 'Game failed to delete.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:title, :location, :game_date, participants_attributes: [:id, :score, :status, :member_id])
    end
end
