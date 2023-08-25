CREATE TABLE Categories
(
  CategoryID INT PRIMARY KEY,
  CategoryName VARCHAR(50)
);

INSERT INTO Categories
  (CategoryID, CategoryName)
VALUES
  (1, 'Cake'),
  (2, 'No-Bake'),
  (3, 'Vegetarian'),
  (4, 'Vegan'),
  (5, 'Gluten-Free'),
  (6, 'Japanese');

CREATE TABLE Ingredients
(
  IngredientID INT PRIMARY KEY,
  IngredientName VARCHAR(100)
);

INSERT INTO Ingredients
  (IngredientID, IngredientName)
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
  (11, 'Garlic'),
  (12, 'Condensed milk'),
  (13, 'Cream Cheese'),
  (14, 'Lemon Juice'),
  (15, 'Pie Crust'),
  (16, 'Cherry Jam'),
  (17, 'Brussels Sprouts'),
  (18, 'Lemon Juice'),
  (19, 'Sesame Seeds'),
  (20, 'Pepper'),
  (21, 'Salt'),
  (22, 'Olive Oil');

CREATE TABLE Steps
(
  StepID INT PRIMARY KEY,
  StepDescription TEXT
);

INSERT INTO Steps
  (StepID, StepDescription)
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
  (12, 'Cook until chicken is done.'),
  (13, 'Beat Cream Cheese'),
  (14, 'Add condensed Milk and blend'),
  (15, 'Add Lemon Juice and blend'),
  (16, 'Add the mix to the pie crust'),
  (17, 'Spread the Cherry Jam'),
  (18, 'Place in refrigerator for 3h.'),
  (19, 'Preheat the oven'),
  (20, 'Mix the ingredients in a bowl'),
  (21, 'Spread the mix on baking sheet'),
  (22, 'Bake for 30'),
  (23, 'Cook Macaroni for 8'),
  (24, 'Melt butter in a saucepan'),
  (25, 'Add flour, salt, pepper and mix'),
  (26, 'Add Milk and mix'),
  (27, 'Cook until mix is smooth'),
  (28, 'Add cheddar cheese'),
  (29, 'Add the macaroni'),
  (30, 'Beat the eggs'),
  (31, 'Add soya sauce, sugar and salt'),
  (32, 'Add oil to a saucepan'),
  (33, 'Bring to medium heat'),
  (34, 'Add some mix to the saucepan'),
  (35, 'Let it cook for 1'),
  (36, 'Add oil to a saucepan'),
  (37, 'Add some mix to the saucepan'),
  (38, 'Let it cook for 1'),
  (39, 'Remove pan from fire.');

CREATE TABLE Recipes
(
  RecipeID INT PRIMARY KEY,
  RecipeName VARCHAR(200),
  CategoryID INT,
  FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Recipes
  (RecipeID, RecipeName, CategoryID)
VALUES
  (1, 'Fresh Garden Salad', 1),
  (2, 'Classic Vanilla Cake', 2),
  (3, 'Teriyaki Chicken', 3),
  (4, 'No-Bake Cheesecake', 1),
  (5, 'Roasted Brussels Sprouts', 4),
  (6, 'Mac & Cheese', 3),
  (7, 'Tamagoyaki Japanese Omelette', 6);

CREATE TABLE RecipeIngredients
(
  RecipeID INT,
  IngredientID INT,
  Quantity VARCHAR(50),
  FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID),
  FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID),
  PRIMARY KEY (RecipeID, IngredientID)
);

INSERT INTO RecipeIngredients
  (RecipeID, IngredientID, Quantity)
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
  (3, 11, '3 cloves'),
  (4, 12, '1 can'),
  (4, 13, '2 cups'),
  (4, 14, '1/4 cup'),
  (4, 15, '1 pie crust'),
  (4, 16, '1/2 cup'),
  (5, 17, '1 pound'),
  (5, 18, '2 tablespoons'),
  (5, 19, '1 tablespoon'),
  (5, 20, '1/2 teaspoon'),
  (5, 21, '1/4 teaspoon'),
  (5, 22, '2 tablespoons'),
  (6, 8, '8 ounces'),
  (6, 9, '8 ounces'),
  (6, 10, '2 tablespoons'),
  (6, 11, '3 cloves'),
  (6, 12, '1 can'),
  (6, 13, '2 cups'),
  (6, 14, '1/4 cup'),
  (6, 15, '1 pie crust'),
  (6, 16, '1/2 cup'),
  (6, 17, '1 pound'),
  (6, 18, '2 tablespoons'),
  (6, 19, '1 tablespoon'),
  (6, 20, '1/2 teaspoon'),
  (6, 21, '1/4 teaspoon'),
  (6, 22, '2 tablespoons'),
  (7, 8, '8 ounces'),
  (7, 9, '8 ounces'),
  (7, 10, '2 tablespoons'),
  (7, 11, '3 cloves'),
  (7, 12, '1 can'),
  (7, 13, '2 cups'),
  (7, 14, '1/4 cup'),
  (7, 15, '1 pie crust'),
  (7, 16, '1/2 cup'),
  (7, 17, '1 pound'),
  (7, 18, '2 tablespoons'),
  (7, 19, '1 tablespoon'),
  (7, 20, '1/2 teaspoon'),
  (7, 21, '1/4 teaspoon'),
  (7, 22, '2 tablespoons');
CREATE TABLE RecipeSteps
(
  RecipeID INT,
  StepID INT,
  StepOrder INT,
  FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID),
  FOREIGN KEY (StepID) REFERENCES Steps(StepID),
  PRIMARY KEY (RecipeID, StepOrder)
);

INSERT INTO RecipeSteps
  (RecipeID, StepID, StepOrder)
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
  (3, 12, 5),
  (4, 13, 1),
  (4, 14, 2),
  (4, 15, 3),
  (4, 16, 4),
  (4, 17, 5),
  (4, 18, 6),
  (5, 19, 1),
  (5, 20, 2),
  (5, 21, 3),
  (5, 22, 4),
  (5, 23, 5),
  (5, 24, 6),
  (5, 25, 7),
  (5, 26, 8),
  (5, 27, 9),
  (5, 28, 10),
  (5, 29, 11),
  (6, 23, 1),
  (6, 24, 2),
  (6, 25, 3),
  (6, 26, 4),
  (6, 27, 5),
  (6, 28, 6),
  (6, 29, 7),
  (7, 30, 1),
  (7, 31, 2),
  (7, 32, 3),
  (7, 33, 4),
  (7, 34, 5),
  (7, 35, 6),
  (7, 36, 7),
  (7, 37, 8),
  (7, 38, 9),
  (7, 39, 10);
  
