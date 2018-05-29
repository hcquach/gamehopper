class RentalsController < ApplicationController
   before_action :set_rental, only: [:destroy]

  def index
    # pending update
    @rentals = Rental.where(user: current_user)
  end

  # def new
  #   @rental = Rental.new
  #   @user = current_user
  # end

  def create
    @rental = Rental.new(start_date: Date.today, end_date: Date.today + 7)
    current_signed_in_user
    @rental.game_id = params[:game_id]
    if @rental.save
      set_game_rental
      @game.available = false
      @game.save
      redirect_to rentals_path
    else
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
