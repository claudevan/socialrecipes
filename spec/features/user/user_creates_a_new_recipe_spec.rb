require 'rails_helper'

feature 'User creates a new recipes' do
  scenario 'successfully' do
    recipe = build(:recipe)
    visit new_recipe_path

    fill_in 'recipe[name]',             with: recipe.name
    fill_in 'recipe[cookery]',          with: recipe.cookery
    fill_in 'recipe[kind_meal]',        with: recipe.kind_meal
    fill_in 'recipe[preference]',       with: recipe.preference
    fill_in 'recipe[serve]',            with: recipe.serve
    fill_in 'recipe[difficulty]',       with: recipe.difficulty
    fill_in 'recipe[ingredients]',      with: recipe.ingredients
    fill_in 'recipe[step_by_step]',     with: recipe.step_by_step

    click_on 'Salvar'

    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cookery)
    expect(page).to have_content(recipe.kind_meal)
    expect(page).to have_content(recipe.preference)
    expect(page).to have_content(recipe.serve)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_content(recipe.ingredients)
    expect(page).to have_content(recipe.step_by_step)
  end
end
