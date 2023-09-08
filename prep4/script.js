const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());

mongoose.connect('mongodb://localhost:27017/recipesDB', {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

const Category = mongoose.model('Category', {
  CategoryID: Number,
  CategoryName: String,
});

const Ingredient = mongoose.model('Ingredient', {
  IngredientID: Number,
  IngredientName: String,
});

const Step = mongoose.model('Step', {
  StepID: Number,
  StepDescription: String,
});

const Recipe = mongoose.model('Recipe', {
  RecipeID: Number,
  RecipeName: String,
  CategoryID: Number,
});

const RecipeIngredient = mongoose.model('RecipeIngredient', {
  RecipeID: Number,
  IngredientID: Number,
  Quantity: String,
});

const RecipeStep = mongoose.model('RecipeStep', {
  RecipeID: Number,
  StepID: Number,
  StepOrder: Number,
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
