class InventoriesController < ApplicationController
  def index
    @user = current_user
    @inventories = @user.inventories unless @user.nil?
  end

  def new
    @inventory = Inventory.new
  end

  def show
    @inventory = Inventory.find_by_id(params[:id])
    @inventory_foods = InventoryFood.where(inventory_id: params[:inventory_id]).includes(:food)
  end

  def create
    @inventory = Inventory.new
    @inventory.name = params[:inventory][:name]
    @inventory.description = params[:inventory][:description]
    @inventory.user_id = current_user.id

    if @inventory.save
      flash[:success] = 'Inventory successfully created.'
      redirect_to inventories_path
    else
      p @inventory.errors.full_messages
      flash[:error_title] = @inventory.errors.messages[:name][0]
      flash[:error_comment] = @inventory.errors.messages[:description][0]
      redirect_to new_inventory_path
    end
  end

  def destroy
    @inventory = Inventory.find(params[:inventory_id])
    @inventory.destroy
    flash[:success] = 'Inventory successfully deleted'
    redirect_to inventories_path
  end
end
