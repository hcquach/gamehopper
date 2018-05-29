class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @game = Game.update(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :update
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:title, :photo, :description, :platform, :vailable, :uder_id)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
