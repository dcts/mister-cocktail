# # import random ingredients
# JSON.parse(open(url).read).values.flatten.map { |myhash| myhash.values.first }

# RESET
puts "resetting data (deleting existent entries)"
Cocktail.delete_all
Ingredient.delete_all
Dose.delete_all

# CREATE INGREDIENTS
# fruits
puts "---creating ingredients"
lemon = Ingredient.create(name: 'lemon juice', category: 'fruit')
lime = Ingredient.create(name: 'lime juice', category: 'fruit')
orange = Ingredient.create(name: 'orange', category: 'fruit')
# vegetable
paprika = Ingredient.create(name: 'paprika', category: 'vegetable')
chili = Ingredient.create(name: 'chili', category: 'vegetable')
# herbes
mint = Ingredient.create(name: 'mint leafs', category: 'herbes')
basil = Ingredient.create(name: 'basil leafs', category: 'herbes')
# alcohol
rum = Ingredient.create(name: 'rum', category: 'alcohol')
gin = Ingredient.create(name: 'gin', category: 'alcohol')
vodka = Ingredient.create(name: 'vodka', category: 'alcohol')
tequila = Ingredient.create(name: 'tequila gold', category: 'alcohol')
# else
sugar = Ingredient.create(name: 'sugar sirup', category: 'other')
agave = Ingredient.create(name: 'agave sirup', category: 'other')

# COCKTAILS
# BASIL SMASH
puts "---creating basil smash"
basil_smash = Cocktail.create(name: "Basil Smash", image_url: "", instructions: "dont ask me, just do it man!", category: "Sours")
Dose.create(description: '6 cl', cocktail: basil_smash, ingredient: gin)
Dose.create(description: '3 cl', cocktail: basil_smash, ingredient: lemon)
Dose.create(description: '3 cl', cocktail: basil_smash, ingredient: sugar)
Dose.create(description: '3-6', cocktail: basil_smash, ingredient: basil)

# VODKA SOUR
puts "---creating vodka sour"
vodka_sour = Cocktail.create(name: "Vodka Sour", image_url: "", instructions: "dont ask me, just do it man!", category: "Sours")
Dose.create(description: '5 cl', cocktail: vodka_sour, ingredient: vodka)
Dose.create(description: '3 cl', cocktail: vodka_sour, ingredient: lemon)
Dose.create(description: '2 cl', cocktail: vodka_sour, ingredient: sugar)

# SPICY MARGARITA
puts "---creating spicy margarita"
spicy_margarita = Cocktail.create(name: "Spicy Margarita", image_url: "", instructions: "dont ask me, just do it man!", category: "Sours")
Dose.create(description: '6 cl', cocktail: spicy_margarita, ingredient: tequila)
Dose.create(description: '3 cl', cocktail: spicy_margarita, ingredient: lime)
Dose.create(description: '2 cl', cocktail: spicy_margarita, ingredient: agave)
Dose.create(description: '1/2', cocktail: spicy_margarita, ingredient: chili)
