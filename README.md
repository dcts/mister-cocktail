# README

Test project made at [LeWagon Bootcamp](https://www.lewagon.com/berlin) using Ruby on [Rails](https://rubyonrails.org/)!


### DB Schema

Paste in [this File](db/db_schema.xml) [here](db.lewagon.com).

### Notes

```bash
# create this project
rails new mister-cocktail -T --webpack --database=postgresql --skip-active-storage

# create db
rails db:create
# create model for cocktail
rails generate model cocktail name image_url instructions category
rails db:migrate
# create model for ingredient
rails generate model ingredient name category
rails db:migrate
# create model for dose
rails generate model dose description ingredient:references cocktail:references
rails db:migrate

# run seeds
rails db:seed

# generate controllers
rails generate controller cocktails

rails generate controller doses
#


```
