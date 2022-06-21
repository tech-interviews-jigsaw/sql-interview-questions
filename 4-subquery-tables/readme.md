sql

customers


bartenders


drinks
1. rum and coke

ingredients
 1. coke
 2. rum

orders


drinks have many ingredients


ingredients have many drinks

ingredients_drinks
id | ingredient_id | drink_id
  1    1               1
  2    2               1


1. if profile page belongs to person the data must live on that model
2. has many, the data cannot live on that model
3. If it's many to many, there must be a third table
