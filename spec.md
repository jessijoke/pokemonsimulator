# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
        Item has_many user_items
        Pokemon has_many pokemon_teams
        Store has_many items
        Team has_many Pokemon_teams, dependent: :delete_all
        User has_many pokemons, pokemon_teams, user_items
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)  
        Item belongs_to store
        Pokemon belongs_to user
        Pokemon_Team belongs_to team, pokemon
        Team belongs to User
        User_item belongs to User, item
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
        Item has_many users through user_items
        Pokemon has_many teams through pokemon_teams
        Team has_many pokemons through pokemon_teams
        User has_many items through user_items
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
        Item has_many users through user_items
        Pokemon has_many teams through pokemon_teams
        Team has_many pokemons through pokemon_teams
        User has_many items through user_items
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
        Item has a quantity attribute that users can enter when they purchase items from a shop
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
        User validates password confirmation, name presence, and email presence
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    pokemon sort by type (dynamic scope)
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
        Facebook and Google
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
        Signup and Login display form validation errors, along with the shop

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [x] Views use helper methods if appropriate
        ItemsHelper has a capitalize method to capitalize names with more than one word.
- [x] Views use partials if appropriate
        Pokemon section views utilize a partial as a sub-layout, Item section views utilize a different partial as a sub-layout. 
