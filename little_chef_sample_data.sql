USE little_chef;

INSERT IGNORE INTO Books (ISBN, Title, Author, Genre, Age_group) VALUES
('978-045152493', 'The Very Hungry Caterpillar', 'Eric Carle', 'Picture Book', '4-8'),
('978-006440055', 'Charlotte''s Web', 'E.B. White', 'Fantasy', '9-12'),
('978-043970818', 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', '9-12'),
('978-014050173', 'The Snowy Day', 'Ezra Jack Keats', 'Picture Book', '4-8'),
('978-039480001', 'Green Eggs and Ham', 'Dr. Seuss', 'Picture Book', '4-8'),
('978-006025492', 'Where the Wild Things Are', 'Maurice Sendak', 'Picture Book', '9-12'),
('978-059035342', 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'Fantasy', '9-12'),
('978-014054753', 'Stone Soup', 'Marcia Brown', 'Folktale', '4-8'),
('978-068983568', 'If You Give a Mouse a Cookie', 'Laura Numeroff', 'Picture Book', '4-8'),
('978-031601584', 'The Giving Tree', 'Shel Silverstein', 'Picture Book', '4-8');

INSERT IGNORE INTO Themes (Theme_Name, Description) VALUES
('Adventure', 'Stories about exciting journeys and discoveries'),
('Friendship', 'Books focusing on relationships and camaraderie'),
('Food', 'Stories centered around cooking and eating'),
('Animals', 'Books featuring animal characters'),
('Fantasy', 'Magical and imaginative stories'),
('Family', 'Stories about family relationships');

INSERT IGNORE INTO Recipes (Recipe_name, Instructions, Difficulty_level, Prep_time, Associated_book_ISBN) VALUES
('Caterpillar Fruit Salad', 'Wash and slice fruits. Arrange in caterpillar shape.', 'Easy', 15, '978-045152493'),
('Charlotte''s Web Pancakes', 'Mix batter. Cook pancakes and draw web patterns with syrup.', 'Medium', 25, '978-006440055'),
('Magic Wand Cookies', 'Make sugar cookie dough. Shape into wands and decorate.', 'Easy', 30, '978-043970818'),
('Snowy Day Hot Cocoa', 'Heat milk, add cocoa and sugar. Top with marshmallows.', 'Easy', 10, '978-014050173'),
('Green Eggs Scramble', 'Scramble eggs with spinach. Serve with ham.', 'Medium', 20, '978-039480001');

INSERT IGNORE INTO User (Child_name, Age, Reading_level, Dietary_restrictions) VALUES
('Emma Johnson', 7, 'Beginner', 'None'),
('Liam Chen', 6, 'Beginner', 'Dairy-free'),
('Sophia Martinez', 8, 'Intermediate', 'Nut allergy'),
('Noah Williams', 5, 'Pre-reader', 'Gluten-free'),
('Olivia Brown', 7, 'Beginner', 'None');

INSERT IGNORE INTO Ingredients (Ingredient_Name, Category, Common_Allergens) VALUES
('Apple', 'Fruit', 'None'),
('Banana', 'Fruit', 'None'),
('Strawberry', 'Fruit', 'None'),
('Eggs', 'Dairy', 'Eggs'),
('Milk', 'Dairy', 'Dairy'),
('Flour', 'Grains', 'Gluten'),
('Sugar', 'Baking', 'None'),
('Spinach', 'Vegetable', 'None'),
('Ham', 'Meat', 'None'),
('Cocoa Powder', 'Baking', 'None');

INSERT IGNORE INTO Recipe_Ingredients (Recipe_ID, Ingredient_ID, Quantity, Measurement) VALUES
(1, 1, 2, 'whole'),
(1, 2, 1, 'whole'),
(1, 3, 5, 'whole'),
(2, 4, 2, 'eggs'),
(2, 5, 1, 'cup'),
(2, 6, 1.5, 'cups'),
(3, 6, 2, 'cups'),
(3, 7, 1, 'cup'),
(4, 5, 2, 'cups'),
(4, 7, 0.25, 'cup'),
(4, 10, 0.25, 'cup'),
(5, 4, 3, 'eggs'),
(5, 8, 1, 'cup'),
(5, 9, 2, 'slices');

INSERT IGNORE INTO Cooking_Sessions (Session_date, Recipe_made, Adult_in_charge, Rating) VALUES
('2024-01-15', 1, 'Ms. Rodriguez', 5),
('2024-01-22', 2, 'Mr. Thompson', 4),
('2024-02-05', 3, 'Ms. Rodriguez', 5),
('2024-02-12', 4, 'Mr. Thompson', 4);

INSERT IGNORE INTO Session_Participants (Session_ID, ChildID) VALUES
(1, 1), (1, 2), (1, 3),
(2, 2), (2, 4), (2, 5),
(3, 1), (3, 3), (3, 5),
(4, 2), (4, 4);

INSERT IGNORE INTO Book_Themes (ISBN, Theme_ID) VALUES
('978-045152493', 4), ('978-045152493', 3),
('978-006440055', 4), ('978-006440055', 2),
('978-043970818', 5), ('978-043970818', 1),
('978-014050173', 6),
('978-039480001', 3), ('978-039480001', 4);

DELETE FROM Book_Themes;
DELETE FROM Books;

INSERT INTO Books (ISBN, Title, Author, Genre, Age_group) VALUES
('978-045152493', 'The Very Hungry Caterpillar', 'Eric Carle', 'Picture Book', 'Child'),
('978-006440055', 'Charlotte''s Web', 'E.B. White', 'Fantasy', 'Preteen'),
('978-043970818', 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 'Preteen'),
('978-014050173', 'The Snowy Day', 'Ezra Jack Keats', 'Picture Book', 'Child'),
('978-039480001', 'Green Eggs and Ham', 'Dr. Seuss', 'Picture Book', 'Child'),
('978-006025492', 'Where the Wild Things Are', 'Maurice Sendak', 'Picture Book', 'Preteen'),
('978-059035342', 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'Fantasy', 'Preteen'),
('978-014054753', 'Stone Soup', 'Marcia Brown', 'Folktale', 'Child'),
('978-068983568', 'If You Give a Mouse a Cookie', 'Laura Numeroff', 'Picture Book', 'Child'),
('978-031601584', 'The Giving Tree', 'Shel Silverstein', 'Picture Book', 'Child');

-- Add more themes
INSERT IGNORE INTO Themes (Theme_Name, Description) VALUES
('Magic', 'Stories involving magical elements and wizardry'),
('Sharing', 'Books that teach about sharing and generosity'),
('Perseverance', 'Stories about not giving up and trying new things'),
('Seasons', 'Books focused on seasonal changes and weather'),
('Imagination', 'Stories that encourage creative thinking');

-- Add more recipes
INSERT IGNORE INTO Recipes (Recipe_name, Instructions, Difficulty_level, Prep_time, Associated_book_ISBN) VALUES
('Wild Things Crown Cookies', 'Make crown-shaped cookies with colorful icing. Decorate with edible glitter.', 'Medium', 35, '978-006025492'),
('Stone Soup Vegetable Stew', 'Chop vegetables. Simmer in broth with a clean stone for flavor.', 'Easy', 40, '978-014054753'),
('Mouse Cookie Snacks', 'Bake small cookies and serve with a tiny cup of milk.', 'Easy', 25, '978-068983568'),
('Giving Tree Apple Pastries', 'Slice apples, wrap in pastry dough, bake until golden brown.', 'Medium', 45, '978-031601584'),
('Chamber of Secrets Pumpkin Juice', 'Blend pumpkin puree with apple juice and spices. Chill and serve.', 'Easy', 15, '978-059035342'),
('Web Weaving Pasta', 'Cook spaghetti and arrange in web patterns with tomato sauce.', 'Easy', 20, '978-006440055'),
('Magic Potion Smoothies', 'Blend yogurt with mixed berries and honey for a colorful drink.', 'Easy', 10, '978-043970818');

-- Add more users
INSERT IGNORE INTO User (Child_name, Age, Reading_level, Dietary_restrictions) VALUES
('Ava Garcia', 6, 'Beginner', 'Egg allergy'),
('Mason Lee', 9, 'Intermediate', 'None'),
('Isabella Taylor', 7, 'Beginner', 'Vegetarian'),
('Ethan Wilson', 8, 'Intermediate', 'Nut allergy, Dairy-free'),
('Mia Anderson', 6, 'Beginner', 'Gluten-free'),
('James Thompson', 10, 'Advanced', 'None'),
('Charlotte Davis', 7, 'Beginner', 'Shellfish allergy'),
('Benjamin Clark', 8, 'Intermediate', 'None'),
('Amelia White', 9, 'Intermediate', 'Vegetarian'),
('Lucas Harris', 7, 'Beginner', 'None');

-- Add more ingredients
INSERT IGNORE INTO Ingredients (Ingredient_Name, Category, Common_Allergens) VALUES
('Pumpkin Puree', 'Vegetable', 'None'),
('Apple Juice', 'Beverage', 'None'),
('Cinnamon', 'Spice', 'None'),
('Butter', 'Dairy', 'Dairy'),
('Pasta', 'Grains', 'Gluten'),
('Tomato Sauce', 'Sauce', 'None'),
('Yogurt', 'Dairy', 'Dairy'),
('Mixed Berries', 'Fruit', 'None'),
('Honey', 'Sweetener', 'None'),
('Pastry Dough', 'Baking', 'Gluten, Dairy'),
('Carrots', 'Vegetable', 'None'),
('Celery', 'Vegetable', 'None'),
('Onion', 'Vegetable', 'None'),
('Vegetable Broth', 'Liquid', 'None'),
('Cookie Dough', 'Baking', 'Gluten, Eggs, Dairy'),
('Food Coloring', 'Decoration', 'None'),
('Edible Glitter', 'Decoration', 'None');

-- Add more recipe ingredients
INSERT IGNORE INTO Recipe_Ingredients (Recipe_ID, Ingredient_ID, Quantity, Measurement) VALUES
(6, 15, 1, 'batch'),
(6, 16, 2, 'tsp'),
(6, 17, 1, 'tsp'),
(7, 11, 2, 'cups'),
(7, 12, 1, 'cup'),
(7, 13, 1, 'whole'),
(7, 14, 4, 'cups'),
(8, 6, 1, 'cup'),
(8, 4, 1, 'egg'),
(8, 5, 0.5, 'cup'),
(9, 1, 3, 'whole'),
(9, 10, 1, 'sheet'),
(9, 7, 0.25, 'cup'),
(10, 18, 2, 'cups'),
(10, 19, 0.5, 'cup'),
(10, 3, 1, 'tsp'),
(11, 20, 8, 'oz'),
(11, 21, 1, 'cup'),
(12, 22, 1, 'cup'),
(12, 23, 1, 'cup'),
(12, 24, 2, 'tbsp');

-- Add more cooking sessions
INSERT IGNORE INTO Cooking_Sessions (Session_date, Recipe_made, Adult_in_charge, Rating) VALUES
('2024-03-01', 5, 'Ms. Rodriguez', 5),
('2024-03-08', 6, 'Mr. Thompson', 4),
('2024-03-15', 7, 'Ms. Rodriguez', 5),
('2024-03-22', 8, 'Mr. Thompson', 3),
('2024-04-05', 9, 'Ms. Rodriguez', 4),
('2024-04-12', 10, 'Mr. Thompson', 5),
('2024-04-19', 11, 'Ms. Rodriguez', 4),
('2024-04-26', 12, 'Mr. Thompson', 5),
('2024-05-03', 1, 'Ms. Rodriguez', 4),
('2024-05-10', 2, 'Mr. Thompson', 5);

-- Add more session participants (more diverse participation)
INSERT IGNORE INTO Session_Participants (Session_ID, ChildID) VALUES
(5, 3), (5, 6), (5, 8),
(6, 1), (6, 4), (6, 7), (6, 10),
(7, 2), (7, 5), (7, 9),
(8, 3), (8, 6), (8, 8), (8, 11),
(9, 1), (9, 4), (9, 7), (9, 10),
(10, 2), (10, 5), (10, 9), (10, 12),
(11, 3), (11, 6), (11, 8), (11, 11),
(12, 1), (12, 4), (12, 7), (12, 10),
(13, 2), (13, 5), (13, 9), (13, 12),
(14, 3), (14, 6), (14, 8), (14, 11);

-- Add more book themes
INSERT IGNORE INTO Book_Themes (ISBN, Theme_ID) VALUES
('978-006025492', 7), ('978-006025492', 8),  -- Where the Wild Things Are: Imagination, Adventure
('978-014054753', 9), ('978-014054753', 10), -- Stone Soup: Sharing, Community
('978-068983568', 3), ('978-068983568', 11), -- If You Give a Mouse a Cookie: Food, Cause & Effect
('978-031601584', 9), ('978-031601584', 12), -- The Giving Tree: Sharing, Love
('978-059035342', 5), ('978-059035342', 1),  -- Harry Potter Chamber: Fantasy, Adventure
('978-014050173', 13),  -- The Snowy Day: Seasons
('978-039480001', 12);  -- Green Eggs and Ham: Perseverance

-- Check total counts
SELECT 'Books' as table_name, COUNT(*) as count FROM Books
UNION ALL SELECT 'Recipes', COUNT(*) FROM Recipes
UNION ALL SELECT 'Users', COUNT(*) FROM User
UNION ALL SELECT 'Sessions', COUNT(*) FROM Cooking_Sessions
UNION ALL SELECT 'Participants', COUNT(*) FROM Session_Participants;

-- Add more users with diverse ages and dietary needs
INSERT IGNORE INTO User (Child_name, Age, Reading_level, Dietary_restrictions) VALUES
('Sophie Johnson', 6, 'Beginner', 'Egg allergy'),
('Jacob Miller', 9, 'Intermediate', 'None'),
('Lily Davis', 7, 'Beginner', 'Vegetarian'),
('Michael Wilson', 8, 'Intermediate', 'Nut allergy'),
('Chloe Anderson', 6, 'Beginner', 'Gluten-free'),
('Daniel Thompson', 10, 'Advanced', 'None'),
('Grace Martinez', 7, 'Beginner', 'Shellfish allergy'),
('Ryan Clark', 8, 'Intermediate', 'None'),
('Zoe White', 9, 'Intermediate', 'Vegetarian'),
('Adam Harris', 7, 'Beginner', 'None'),
('Ella Garcia', 6, 'Beginner', 'Dairy-free'),
('Nathan Lee', 9, 'Intermediate', 'None'),
('Maya Taylor', 7, 'Beginner', 'Vegetarian'),
('Caleb Wilson', 8, 'Intermediate', 'Nut allergy, Dairy-free'),
('Aria Anderson', 6, 'Beginner', 'Gluten-free');

-- Add participants to existing sessions (fill out sessions with 0 participants)
INSERT IGNORE INTO Session_Participants (Session_ID, ChildID) VALUES
-- Session 5 (Green Eggs Scramble) - was empty
(5, 1), (5, 3), (5, 6), (5, 8), (5, 11),

-- Session 6 (Charlotte's Web Pancakes) - was empty  
(6, 2), (6, 4), (6, 7), (6, 9), (6, 12), (6, 14),

-- Session 7 (Green Eggs Scramble) - was empty
(7, 1), (7, 5), (7, 10), (7, 13), (7, 15),

-- Session 8 (Charlotte's Web Pancakes) - was empty
(8, 3), (8, 6), (8, 8), (8, 11), (8, 14),

-- Session 9 (Caterpillar Fruit Salad) - was empty
(9, 2), (9, 4), (9, 7), (9, 9), (9, 12), (9, 15),

-- Session 10 (Snowy Day Hot Cocoa) - was empty
(10, 1), (10, 5), (10, 10), (10, 13),

-- Session 11 (Caterpillar Fruit Salad) - was empty
(11, 3), (11, 6), (11, 8), (11, 11), (11, 14),

-- Session 12 (Magic Wand Cookies) - was empty
(12, 2), (12, 4), (12, 7), (12, 9), (12, 12), (12, 15);

-- Add more cooking sessions with participants for better analytics
INSERT IGNORE INTO Cooking_Sessions (Session_date, Recipe_made, Adult_in_charge, Rating) VALUES
('2024-05-17', 6, 'Ms. Rodriguez', 4),  -- Wild Things Crown Cookies
('2024-05-24', 7, 'Mr. Thompson', 5),   -- Stone Soup Vegetable Stew
('2024-05-31', 8, 'Ms. Rodriguez', 4),  -- Mouse Cookie Snacks
('2024-06-07', 9, 'Mr. Thompson', 5),   -- Giving Tree Apple Pastries
('2024-06-14', 10, 'Ms. Rodriguez', 4); -- Chamber of Secrets Pumpkin Juice

-- Add participants to these new sessions
INSERT IGNORE INTO Session_Participants (Session_ID, ChildID) VALUES
-- Session 15 (Wild Things Crown Cookies)
(15, 1), (15, 4), (15, 7), (15, 10), (15, 13),

-- Session 16 (Stone Soup Vegetable Stew)  
(16, 2), (16, 5), (16, 8), (16, 11), (16, 14),

-- Session 17 (Mouse Cookie Snacks)
(17, 3), (17, 6), (17, 9), (17, 12), (17, 15),

-- Session 18 (Giving Tree Apple Pastries)
(18, 1), (18, 4), (18, 7), (18, 10), (18, 13), (18, 2),

-- Session 19 (Chamber of Secrets Pumpkin Juice)
(19, 3), (19, 6), (19, 9), (19, 12), (19, 15), (19, 5);

-- Update some ratings to make the data more realistic
UPDATE Cooking_Sessions SET Rating = 4 WHERE Session_ID = 5;
UPDATE Cooking_Sessions SET Rating = 5 WHERE Session_ID = 6; 
UPDATE Cooking_Sessions SET Rating = 4 WHERE Session_ID = 7;
UPDATE Cooking_Sessions SET Rating = 3 WHERE Session_ID = 8;
UPDATE Cooking_Sessions SET Rating = 5 WHERE Session_ID = 9;
UPDATE Cooking_Sessions SET Rating = 4 WHERE Session_ID = 10;
UPDATE Cooking_Sessions SET Rating = 4 WHERE Session_ID = 11;
UPDATE Cooking_Sessions SET Rating = 5 WHERE Session_ID = 12;

-- Check recipe popularity
SELECT r.Recipe_name, COUNT(DISTINCT cs.Session_ID) as session_count, COUNT(sp.ChildID) as total_participants
FROM Recipes r
LEFT JOIN Cooking_Sessions cs ON r.Recipe_ID = cs.Recipe_made
LEFT JOIN Session_Participants sp ON cs.Session_ID = sp.Session_ID
GROUP BY r.Recipe_ID, r.Recipe_name
ORDER BY session_count DESC, total_participants DESC;

-- First, let's identify and clean up duplicate recipes
SELECT Recipe_ID, Recipe_name, COUNT(*) 
FROM Recipes 
GROUP BY Recipe_name 
HAVING COUNT(*) > 1;

-- Delete duplicate recipes (keep only the first occurrence of each)
DELETE r1 FROM Recipes r1
INNER JOIN Recipes r2 
WHERE r1.Recipe_ID > r2.Recipe_ID 
AND r1.Recipe_name = r2.Recipe_name;

-- Now clean up cooking sessions that point to non-existent recipes
DELETE FROM Cooking_Sessions 
WHERE Recipe_made NOT IN (SELECT Recipe_ID FROM Recipes);

-- Reset the session participants to remove orphaned records
TRUNCATE TABLE Session_Participants;

-- Now let's add participants to ALL cooking sessions properly
INSERT IGNORE INTO Session_Participants (Session_ID, ChildID)
VALUES
-- Sessions for Recipe 1 (Caterpillar Fruit Salad)
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(9, 6), (9, 7), (9, 8), (9, 9), (9, 10),
(11, 11), (11, 12), (11, 13), (11, 14), (11, 15),

-- Sessions for Recipe 2 (Charlotte's Web Pancakes)  
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6),
(6, 7), (6, 8), (6, 9), (6, 10), (6, 11),
(8, 12), (8, 13), (8, 14), (8, 15), (8, 1),

-- Sessions for Recipe 3 (Magic Wand Cookies)
(3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7),
(12, 8), (12, 9), (12, 10), (12, 11), (12, 12),

-- Sessions for Recipe 4 (Snowy Day Hot Cocoa)
(4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8),
(10, 9), (10, 10), (10, 11), (10, 12), (10, 13),

-- Sessions for Recipe 5 (Green Eggs Scramble)
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5),
(7, 6), (7, 7), (7, 8), (7, 9), (7, 10),

-- Sessions for Recipe 6 (Wild Things Crown Cookies)
(15, 11), (15, 12), (15, 13), (15, 14), (15, 15),

-- Sessions for Recipe 7 (Stone Soup Vegetable Stew)
(16, 1), (16, 2), (16, 3), (16, 4), (16, 5),

-- Sessions for Recipe 8 (Mouse Cookie Snacks)
(17, 6), (17, 7), (17, 8), (17, 9), (17, 10),

-- Sessions for Recipe 9 (Giving Tree Apple Pastries)
(18, 11), (18, 12), (18, 13), (18, 14), (18, 15),

-- Sessions for Recipe 10 (Chamber of Secrets Pumpkin Juice)
(19, 1), (19, 2), (19, 3), (19, 4), (19, 5),

-- Sessions for Recipe 11 (Web Weaving Pasta)
(20, 6), (20, 7), (20, 8), (20, 9), (20, 10),

-- Sessions for Recipe 12 (Magic Potion Smoothies)
(21, 11), (21, 12), (21, 13), (21, 14), (21, 15);

-- Update ratings to be more realistic across all sessions
UPDATE Cooking_Sessions SET Rating = 5 WHERE Session_ID IN (1, 3, 18, 19);
UPDATE Cooking_Sessions SET Rating = 4 WHERE Session_ID IN (2, 4, 6, 9, 10, 15, 16, 17, 20, 21);
UPDATE Cooking_Sessions SET Rating = 3 WHERE Session_ID IN (5, 7, 8, 11, 12);

-- Add more cooking sessions for the newer recipes to balance the data
INSERT IGNORE INTO Cooking_Sessions (Session_date, Recipe_made, Adult_in_charge, Rating) VALUES
('2024-06-21', 6, 'Ms. Rodriguez', 4),  -- Additional Wild Things session
('2024-06-28', 7, 'Mr. Thompson', 5),   -- Additional Stone Soup session
('2024-07-05', 8, 'Ms. Rodriguez', 4),  -- Additional Mouse Cookie session
('2024-07-12', 9, 'Mr. Thompson', 5),   -- Additional Giving Tree session
('2024-07-19', 10, 'Ms. Rodriguez', 4), -- Additional Pumpkin Juice session
('2024-07-26', 11, 'Mr. Thompson', 4),  -- Additional Web Pasta session
('2024-08-02', 12, 'Ms. Rodriguez', 5); -- Additional Smoothies session

-- Add participants to these new sessions
INSERT IGNORE INTO Session_Participants (Session_ID, ChildID)
VALUES
(22, 1), (22, 3), (22, 5), (22, 7), (22, 9),
(23, 2), (23, 4), (23, 6), (23, 8), (23, 10),
(24, 11), (24, 13), (24, 15), (24, 2), (24, 4),
(25, 5), (25, 7), (25, 9), (25, 11), (25, 13),
(26, 6), (26, 8), (26, 10), (26, 12), (26, 14),
(27, 1), (27, 3), (27, 5), (27, 7), (27, 9),
(28, 2), (28, 4), (28, 6), (28, 8), (28, 10);

-- Check final participant distribution
SELECT 
    r.Recipe_name,
    COUNT(DISTINCT cs.Session_ID) as session_count,
    COUNT(DISTINCT sp.ChildID) as total_participants,
    ROUND(AVG(cs.Rating), 2) as avg_rating
FROM Recipes r
LEFT JOIN Cooking_Sessions cs ON r.Recipe_ID = cs.Recipe_made
LEFT JOIN Session_Participants sp ON cs.Session_ID = sp.Session_ID
GROUP BY r.Recipe_ID, r.Recipe_name
HAVING session_count > 0
ORDER BY total_participants DESC;