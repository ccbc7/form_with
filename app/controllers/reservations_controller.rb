class ReservationsController < ApplicationController
  def index
    # @reservation =  Reservation.find(params[:id])
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def confirm
    # @reservation = Reservation.find(params[:id])
    @reservation = Reservation.new(reservation_params)
    if @reservation.invalid? #入力項目に空のものがあれば入力画面に遷移
      render :new
    end
    # @reservation.assign_attributes
    # binding.pry
  end

  def create
    # binding.pry
    @reservation = Reservation.new(params.require(:reservation).permit(:start_day, :room_name, :end_day, :people, :charge, :adress))
    if params[:back] || !@reservation.save #戻るボタンを押したときまたは、@eventが保存されなかったらnewアクションを実行
      render :new and return
    else
      @reservation.save
      redirect_to  reservations_path
    end

  end


  private
  def reservation_params
    params.permit(:start_day, :room_name, :end_day, :people, :charge, :adress)
  end
end
