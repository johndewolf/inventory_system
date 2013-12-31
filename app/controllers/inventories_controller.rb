class InventoriesController < ApplicationController
  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      redirect_to @inventory, notice: 'Item Successfully Added'
    else
      render action: 'new'
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def index
    @inventories = Inventory.all
  end

  private

  def inventory_params
    params.require(:inventory).permit(:name, :description, :quantity)
  end

end
