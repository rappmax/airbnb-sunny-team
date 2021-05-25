class TablesController < ApplicationController
  def new
    @table = Table.new
  end

  def create
    @table = table.new(table_params)
    if @table.save
      redirect_to table_path(@table)
    else
      render 'new'
    end
  end

  private

  def table_params
    params.require(:table).permit(:address, :rating, :description, :picture)
  end
end
