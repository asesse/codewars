def get_missing_ingredients(recipe, added)
  missing_ingredient = {}
  results = []
  recipe.each do |ingredient, amount|
    result = added[ingredient].nil? ? 1 : added[ingredient] / amount.to_f
    results << result.ceil 
  end

  number_of_cake = results.max
  new_recipe = recipe.transform_values { |amount| amount * number_of_cake }
    puts new_recipe
  new_recipe.map do |ingredient, amount|
    added.merge!({ ingredient => 0 }) if added[ingredient].nil? 
    puts added
    missing_ingredient.merge!({ingredient => amount - added[ingredient]}).reject! { |k, v| v == 0 }
  end
  return missing_ingredient
end