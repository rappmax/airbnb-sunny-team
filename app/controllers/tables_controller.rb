class TablesController < ApplicationController

  def new
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)
    @table.user = current_user
    if @table.save
      redirect_to table_path(@table)
    else
      render 'new'
    end
  end

  def index
    @tables = Table.all
     @markers = @tables.geocoded.map do |table|
      {
        lat: table.latitude,
        lng: table.longitude
      }
    end
  end

  def show
    @table = Table.find(params[:id])
  end

  private

  def table_params
    params.require(:table).permit(:address, :description)
  end
end
