use little_chef;

ALTER TABLE Recipes MODIFY Recipe_ID INT AUTO_INCREMENT;
ALTER TABLE User MODIFY ChildID INT AUTO_INCREMENT;
ALTER TABLE Themes MODIFY Theme_ID INT AUTO_INCREMENT;
ALTER TABLE Ingredients MODIFY Ingredient_ID INT AUTO_INCREMENT;
ALTER TABLE Cooking_Sessions MODIFY Session_ID INT AUTO_INCREMENT;


UPDATE Books
SET Age_group = CASE
    WHEN Age_group = '1-3' THEN 'Toddler'
    WHEN Age_group = '4-8' THEN 'Child'
    WHEN Age_group = '9-12' THEN 'Preteen'
    WHEN Age_group = '13+' THEN 'Teen'
    ELSE 'Child' -- optional default for any unexpected values
END;
SELECT DISTINCT Age_group FROM Books;
