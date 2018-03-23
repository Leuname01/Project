class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(article_params)

    if @reservation.save
      redirect_to @reservation
    else
      render :new
    end
  end

  def update

  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def article_params
    params.require(:reservation).permit(:date, :prepaid, :hour)
  end

end
