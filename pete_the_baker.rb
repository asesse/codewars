def cakes(recipe, available)
  return 0 if recipe.length > available.length
  recipe.each_key do |ingredient|
   return 0 if !available.include?(ingredient)
  end
  results = []
  recipe.each do |ingredient, amount|
    results << available[ingredient] / amount
  end
  return results.min
end