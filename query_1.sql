use little_chef;

/*Query 1: Find safe recipes for children with nut or dairy allergies. Return books with
their chosen books, themes, and ingredients */
SELECT 
    r.Recipe_ID, -- unique identifier for each recipe
    r.Recipe_name, -- name of the recipe
    r.Difficulty_level, -- easy/medium/hard diffculty rating
    r.Prep_time, -- preparation time in minutes
    b.Title AS Book_Title, -- title of the associated book
    b.Age_group, -- recommended age group for the book
    GROUP_CONCAT(DISTINCT t.Theme_Name SEPARATOR ', ') AS Themes, -- all book themes combined into one string
    GROUP_CONCAT(DISTINCT i.Ingredient_Name SEPARATOR ', ') AS Ingredients -- all ingredients combined into one string
FROM Recipes r
-- join with Books to get book information for each Recipe
JOIN Books b ON r.Associated_book_ISBN = b.ISBN
-- left join with themes to get all book themes
LEFT JOIN Book_Themes bt ON b.ISBN = bt.ISBN
LEFT JOIN Themes t ON bt.Theme_ID = t.Theme_ID
-- join with ingredients to get all recipe ingredients
JOIN Recipe_Ingredients ri ON r.Recipe_ID = ri.Recipe_ID
JOIN Ingredients i ON ri.Ingredient_ID = i.Ingredient_ID
-- filter out recipes that contain nuts or dairy allergens
WHERE r.Recipe_ID NOT IN (
    SELECT DISTINCT ri2.Recipe_ID 
    FROM Recipe_Ingredients ri2
    JOIN Ingredients i2 ON ri2.Ingredient_ID = i2.Ingredient_ID
    WHERE i2.Common_Allergens LIKE '%nuts%' 
       OR i2.Common_Allergens LIKE '%dairy%'
)
-- group by recipe
GROUP BY r.Recipe_ID
-- sort by diffculty then prep time
ORDER BY r.Difficulty_level, r.Prep_time;