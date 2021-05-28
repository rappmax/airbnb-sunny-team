class DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings

    @host = current_user.tables.any?
    if @host
      @my_tables = current_user.tables
      @booking_requests = Booking.where(table_id: @my_tables.pluck(:id))
    end
  end
end
