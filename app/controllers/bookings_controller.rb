class BookingsController < ApplicationController
  def show
    @bookings = Booking.all
  end

  def new
    @table = Table.find(params[:table_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @table = Table.find(params[:table_id])
    @booking.table = @table
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end



  def update

    @booking = Booking.find(params[:id])
    if params[:status] == "Accepted"
      @booking.status = "Accepted"
    elsif params[:status] == "Declined"
      @booking.status = "Declined"
    end
    if @booking.save
      redirect_to dashboard_path
    else
      render :show
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

end
