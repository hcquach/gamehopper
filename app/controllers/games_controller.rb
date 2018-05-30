class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def show
    @markers =
      [ {
        lat: @game.user.latitude,
        lng: @game.user.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      } ]
  end

  def edit
  end

  def update
    @game = Game.update(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:title, :photo, :description, :platform, :available, :user_id)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
