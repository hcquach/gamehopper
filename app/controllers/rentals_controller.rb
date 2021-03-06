class RentalsController < ApplicationController
   before_action :set_rental, only: [:destroy]

  def index
    @rentals = Rental.where(user: current_user)
  end

  # def new
  #   @rental = Rental.new
  #   @user = current_user
  # end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.game = Game.find(params[:game_id])
    if set_game_rental.user == @rental.user
      flash[:alert] = "You cannot rent your own game"
      redirect_to game_path(@game)
    elsif @rental.save && @game.available
      @game.available = false
      @game.price = ((@rental.end_date - @rental.start_date) * @game.price) / 86400
      @game.save
      redirect_to rentals_path
    else
      flash[:alert] = "Rental can not be made"
      redirect_to game_path(@game)
    end
  end

  # def show
  # end

  # def edit
  # end

  # def update
  #   @rental = Rental.update(rental_params)
  #   if @rental.save
  #     redirect_to rentals_path
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    set_rental
    @game = Game.find(@rental.game_id)
    @game.available = true
    @game.save
    @rental.destroy
    redirect_to rentals_path
  end

  private
  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :user_id, :game_id)
  end

  def set_game_rental
    @game = Game.find(params[:game_id])
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def current_signed_in_user
    @rental.user = current_user
  end

end
