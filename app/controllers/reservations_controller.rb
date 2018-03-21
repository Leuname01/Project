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
    @reservation = Reservation.new(
      date: params[:reservation][:date],
      hour: params[:reservation][:hour],
      prepaid: params[:reservation][:prepaid]
    )

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

end
