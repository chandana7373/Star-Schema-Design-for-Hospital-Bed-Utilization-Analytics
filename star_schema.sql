USE recipes;
SELECT * FROM recipe_main;
SELECT * FROM categories;
SELECT * FROM ingredients;
SELECT * FROM rec_ingredients;
INSERT INTO recipe_main (rec_title, category_id, recipe_desc, prep_time, cook_time, servings, difficulty, directions)
VALUES 
    ('Grilled Chicken with Roasted Vegetables', 1, 'Juicy grilled chicken served with roasted vegetables.', 15, 30, 4, 2, 'Grill the chicken and roast the vegetables with olive oil, salt, and pepper.'),
    ('Lemon Meringue Pie', 2, 'A tart and sweet lemon filling topped with fluffy meringue.', 20, 45, 8, 2, 'Prepare the lemon filling, bake the crust, and top with meringue. Bake until the meringue is golden brown.');
INSERT INTO categories (category_name)
VALUES ('Main Course'), ('Dessert');
INSERT INTO ingredients (ingred_name)
VALUES 
    ('Chicken Breast'), ('Olive Oil'), ('Salt'), ('Pepper'), ('Carrots'), ('Potatoes'), 
    ('Bell Pepper'), ('Zucchini'), ('Lemon Juice'), ('Sugar'), ('Cornstarch'), ('Egg Yolks'), 
    ('Egg Whites'), ('Butter'), ('Vanilla Extract'), ('Pie Crust');
    INSERT INTO rec_ingredients (recipe_id, ingredient_id, amount)
VALUES 
    (8, 1, 400),     -- Chicken Breast (400 grams)
    (8, 2, 30),      -- Olive Oil (30 grams)
    (8, 3, 5),       -- Salt (5 grams)
    (8, 4, 5),       -- Pepper (5 grams)
    (8, 5, 2),       -- Carrots (2 units)
    (8, 6, 2),       -- Potatoes (2 units)
    (8, 7, 1),       -- Bell Pepper (1 unit)
    (8, 8, 1);       -- Zucchini (1 unit)
INSERT INTO rec_ingredients (recipe_id, ingredient_id, amount)
VALUES 
    (10, 9, 100),     -- Lemon Juice (100 ml)
    (10, 10, 200),    -- Sugar (200 grams)
    (10, 11, 30),     -- Cornstarch (30 grams)
    (10, 12, 3),      -- Egg Yolks (3 units)
    (10, 13, 4),      -- Egg Whites (4 units)
    (10, 14, 50),     -- Butter (50 grams)
    (10, 15, 1),      -- Vanilla Extract (1 tsp)
    (10, 16, 1);      -- Pie Crust (1 unit)


USE recipes;

SELECT 
    rm.rec_title,
    rm.recipe_desc,
    rm.prep_time,
    rm.cook_time,
    rm.servings,
    rm.difficulty,
    rm.directions,
    c.category_name,
    i.ingred_name,
    ri.amount
FROM 
    recipe_main rm
LEFT JOIN 
    categories c ON rm.category_id = c.category_id
LEFT JOIN 
    rec_ingredients ri ON rm.recipe_id = ri.recipe_id
LEFT JOIN 
    ingredients i ON ri.ingredient_id = i.ingredient_id
WHERE 
    rm.recipe_id IN (9, 10);  -- Specify the recipe_id values for the two recipes
SELECT 
    rm.rec_title AS recipe_name, 
    c.category_name, 
    i.ingred_name, 
    ri.amount AS ingredient_amount
FROM 
    recipe_main rm
JOIN 
    categories c ON rm.category_id = c.category_id
JOIN 
    rec_ingredients ri ON rm.recipe_id = ri.recipe_id
JOIN 
    ingredients i ON ri.ingredient_id = i.ingredient_id
ORDER BY 
    c.category_name DESC, 
    rm.rec_title ASC, 
    i.ingred_name DESC;



  





