class TablesController < ApplicationController
create-new-table-controller
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
  
  def index
    @tables = Table.all
  end

  def show
    @table = Table.find(params[:id])
  end
  private
   def table_params
    params.require(:table).permit(:address, :rating, :description, :picture)
  end
end
