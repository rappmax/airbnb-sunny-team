class BookingsController < ApplicationController

  def show
    @bookings = Booking.all
  end

   def new
    @table = Table.find(params[:table_id])
   @booking = Booking.new

  end

def create
   @booking = Booking.new(booking_params)
    @table = Table.find(params[:table_id])
    @booking.table = @table
    @booking.user = current_user
    if @booking.save
      redirect_to table_path(@table)
    else
      render :new
    end
  end
end
