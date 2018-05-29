class RentalsController < ApplicationController
   before_action :set_rental, only: [:destroy]
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
    set_game_rental
    @user = User.find(params[:user_id])
  end

  def create
    @rental = Rental.new(rental_params)
    set_game_rental
    if @rental.save
      @game.available = false
      @game.save
      redirect_to rentals_path
    else
      render :new
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

end
