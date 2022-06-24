class ShoppingListController < ApplicationController
  def show
    @selected_inventory = params[:inventory_food][:inventory_id]
    @selected_recipe = params[:recipe_id]

    @i_foods = InventoryFood.where(inventory_id: @selected_inventory).includes([:food])
    @r_foods = RecipeFood.where(recipe_id: @selected_recipe).includes([:food])

    @foods = []
    @r_foods.each do |r_food|
      @foods << Food.where(id: r_food.food_id)
    end
  end
end