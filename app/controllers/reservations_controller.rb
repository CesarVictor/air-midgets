class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[update show edit destroy]

  def index
    @reservations = policy_scope(Reservation).order(created_at: :desc)
  end


  def new
    @midget = Midget.find(params[:midget_id])
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @midget = Midget.find(params[:reservation][:midget_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.price = @midget.price
    @reservation.total = @midget.price * ((@reservation.end_date - @reservation.start_date).to_i + 1)
    @reservation.midget = @midget
    @reservation.user = current_user
    authorize @reservation
    if @reservation.save!

      redirect_to reservations_path
    else
      render 'new'
    end
  end

  def show
    authorize @reservation
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to reservation_path(@reservation)
    else
      render 'edit'
    end
  end

  def destroy
    authorize @reservation
    if @reservation.destroy
      redirect_to reservations_path
    else
      redirect_to reservation_path(@reservation)
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :price, :total)
  end
end
