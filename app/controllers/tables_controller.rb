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
    if params[:query].present?

      sql_query = "address ILIKE :query"
      @tables = Table.where(sql_query, query: "%#{params[:query]}%")
      sql_query_date = "DATE(date) = :date"
      @tables = @tables.where(sql_query_date, date: "%#{params[:date].to_date}%")
    else
      @tables = Table.all

    end
     @markers = @tables.geocoded.map do |table|
      {
        lat: table.latitude,
        lng: table.longitude,
        info_window: render_to_string(partial: "info_window", locals: { table: table })
      }
    end
  end


  def show
    @table = Table.find(params[:id])
  end

  private

  def table_params
    params.require(:table).permit(:name, :address, :description, :picture, :date)
  end
end
