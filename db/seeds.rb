# # import random ingredients
# JSON.parse(open(url).read).values.flatten.map { |myhash| myhash.values.first }

# RESET
Cocktail.delete_all
Ingredient.delete_all
Dose.delete_all

# CREATE INGREDIENTS
# fruits
Ingredient.create(name: 'lemon juice', category: 'fruit')
Ingredient.create(name: 'lime juice', category: 'fruit')
Ingredient.create(name: 'orange', category: 'fruit')
# vegetable
Ingredient.create(name: 'paprika', category: 'vegetable')
Ingredient.create(name: 'chili', category: 'vegetable')
# herbes
Ingredient.create(name: 'mint leafs', category: 'herbes')
Ingredient.create(name: 'basil leafs', category: 'herbes')
# alcohol
Ingredient.create(name: 'rum', category: 'alcohol')
Ingredient.create(name: 'gin', category: 'alcohol')
Ingredient.create(name: 'vodka', category: 'alcohol')
Ingredient.create(name: 'tequila gold', category: 'alcohol')
# ice
Ingredient.create(name: 'crushed ice', category: 'ice')
Ingredient.create(name: 'cracked ice', category: 'ice')
Ingredient.create(name: 'cubed ice', category: 'ice')
# else
Ingredient.create(name: 'sugar sirup', category: 'other')
Ingredient.create(name: 'agave sirup', category: 'other')

# COCKTAILS
# BASIL SMASH
# basil_smash = Cocktail.create(name: "Basil Smash", image_url: "", instructions: "dont ask me, just do it man!", category: "Sours")
# d1 = Dose.create(description: '6cl')
# d1.ingredient = Ingredient.where(name: "gin").limit(1).first
# d1.cocktail = basil_smash
# d2 = Dose.create(description: '3cl')
# d2.ingredient = Ingredient.where(name: "lemon").limit(1).first
# d2.cocktail = basil_smash
# d3 = Dose.create(description: '3cl')
# d3.ingredient = Ingredient.where(name: "sugar sirup").limit(1).first
# d3.cocktail = basil_smash
# d4 = Dose.create(description: '3-4')
# d4.ingredient = Ingredient.where(name: "basil leafs").limit(1).first
# d4.cocktail = basil_smash

# # VODKA SOUR
# vodka_sour = Cocktail.create(name: "Vodka Sour", image_url: "", instructions: "dont ask me, just do it man!", category: "Sours")
# d1 = Dose.create(description: '5cl')
# d1.ingredient = Ingredient.where(name: "vodka")
# d1.cocktail = vodka_sour
# d2 = Dose.create(description: '3cl')
# d2.ingredient = Ingredient.where(name: "lemon juice")
# d2.cocktail = vodka_sour
# d3 = Dose.create(description: '2cl')
# d3.ingredient = Ingredient.where(name: "sugar sirup")
# d3.cocktail = vodka_sour

# # SPICY MARGARITA
# spicy_margarita = Cocktail.create(name: "Spicy Margarita", image_url: "", instructions: "dont ask me, just do it man!", category: "Sours")
# d1 = Dose.create(description: '6cl')
# d1.ingredient = Ingredient.where(name: "tequila gold")
# d1.cocktail = spicy_margarita
# d2 = Dose.create(description: '3cl')
# d2.ingredient = Ingredient.where(name: "lime juice")
# d2.cocktail = spicy_margarita
# d3 = Dose.create(description: '2cl')
# d3.ingredient = Ingredient.where(name: "agave sirup")
# d3.cocktail = spicy_margarita
# d4 = Dose.create(description: '1/2')
# d4.ingredient = Ingredient.where(name: "chili")
# d4.cocktail = spicy_margarita

