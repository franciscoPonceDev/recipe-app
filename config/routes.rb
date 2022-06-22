Rails.application.routes.draw do
  resources :foods
  devise_for :users

  resources :recipes, only: [:index, :show, :new, :create, :destroy, :put ] do
    resources :recipe_foods, path: 'food', only: [:destroy, :new, :create]
  end

  match 'recipes/:recipe_id' => 'recipes#toogle_public', as: :toogle_public, via: :patch
  match 'public_recipes' => 'recipes#public_recipes', as: :public_recipes, via: :get

  root 'recipes#public_recipes'
end
