class Reservation < ApplicationRecord

  def total_price
    # if @reservation.charge && @reservation.people
    # @reservation.charge * @reservation.people
    # end
  end

  def total_days
    # (end_day - start_day) / 24 / 3600
  end

end
