CREATE TABLE Categories
(
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);

INSERT INTO Categories
  (category_id, category_name)
VALUES
  (1, 'Salad'),
  (2, 'Cake'),
  (3, 'Japanese Food');

CREATE TABLE Ingredients
(
  ingredient_id INT PRIMARY KEY,
  ingredient_name VARCHAR(100)
);

INSERT INTO Ingredients
  (ingredient_id, ingredient_name)
VALUES
  (1, 'Lettuce'),
  (2, 'Tomatoes'),
  (3, 'Cake Flour'),
  (4, 'Sugar'),
  (5, 'Eggs'),
  (6, 'Soy Sauce'),
  (7, 'Rice Vinegar'),
  (8, 'Noodles'),
  (9, 'Chicken'),
  (10, 'Sesame Oil'),
  (11, 'Garlic');

CREATE TABLE Steps
(
  step_id INT PRIMARY KEY,
  step_description TEXT
);

INSERT INTO Steps
  (step_id, step_description)
VALUES
  (1, 'Wash and chop the lettuce.'),
  (2, 'Slice the tomatoes.'),
  (3, 'Preheat the oven.'),
  (4, 'Mix cake flour and sugar.'),
  (5, 'Add eggs and mix well.'),
  (6, 'Pour the batter into a cake pan.'),
  (7, 'Bake for 30 minutes.'),
  (8, 'Cook the noodles.'),
  (9, 'Heat sesame oil in a pan.'),
  (10, 'Add minced garlic.'),
  (11, 'Add sliced chicken.'),
  (12, 'Cook until chicken is done.');

CREATE TABLE Recipes
(
  recipe_id INT PRIMARY KEY,
  recipe_name VARCHAR(200),
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Recipes
  (recipe_id, recipe_name, category_id)
VALUES
  (1, 'Fresh Garden Salad', 1),
  (2, 'Classic Vanilla Cake', 2),
  (3, 'Teriyaki Chicken', 3);

CREATE TABLE RecipeIngredients
(
  recipe_id INT,
  ingredient_id INT,
  quantity VARCHAR(50),
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id),
  PRIMARY KEY (recipe_id, ingredient_id)
);

INSERT INTO RecipeIngredients
  (recipe_id, ingredient_id, quantity)
VALUES
  (1, 1, '1 cup'),
  (1, 2, '2 large'),
  (2, 3, '2 cups'),
  (2, 4, '1 cup'),
  (2, 5, '3'),
  (3, 6, '1/4 cup'),
  (3, 7, '2 tablespoons'),
  (3, 8, '8 ounces'),
  (3, 9, '1 pound'),
  (3, 10, '2 tablespoons'),
  (3, 11, '3 cloves');

CREATE TABLE RecipeSteps
(
  recipe_id INT,
  step_id INT,
  step_order INT,
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  FOREIGN KEY (step_id) REFERENCES Steps(step_id),
  PRIMARY KEY (recipe_id, step_order)
);

INSERT INTO RecipeSteps
  (recipe_id, step_id, step_order)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (2, 3, 1),
  (2, 4, 2),
  (2, 5, 3),
  (2, 6, 4),
  (2, 7, 5),
  (3, 8, 1),
  (3, 9, 2),
  (3, 10, 3),
  (3, 11, 4),
  (3, 12, 5);