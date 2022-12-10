class RController < ApplicationController
  def index
  end


  def new
    @reservation = Reservation.new
  end

  def confirm
    @reservation = Reservation.new(@reservation_params)
    if @reservation.invalid? #入力項目に空のものがあれば入力画面に遷移
      render :new
    end

  end

  def create
    @reservation = Reservation.new(@reservation_params)
    # @event.user_id = current_user.id
    if params[:back] || !@reservation.save #戻るボタンを押したときまたは、@eventが保存されなかったらnewアクションを実行
      render :new and return
    redirect_to root_path
    end
  end

  def reservation_params
    @reservation_params = params.require(:reservation).permit(:start_day)
  end
end
