class ShoppingListController < ApplicationController
  def show
    @selected_inventory = Inventory.find_by_id(params[:inventory_food][:inventory_id])
    @selected_recipe = Recipe.find_by_id(params[:recipe_id])

    @i_foods = InventoryFood.where(inventory_id: @selected_inventory.id).includes([:food])
    @r_foods = RecipeFood.where(recipe_id: @selected_recipe.id).includes([:food])

    @foods = []
    @r_foods.each do |r_food|
      @foods << Food.where(id: r_food.food_id)
    end
  end
end