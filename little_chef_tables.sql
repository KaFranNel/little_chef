CREATE database IF NOT EXISTS little_chef;

USE little_chef;

CREATE TABLE IF NOT EXISTS Books(
ISBN VARCHAR(13) PRIMARY KEY, -- Changed from VARCHAR(15) for standard ISBN-13
Title VARCHAR(255) NOT NULL, -- Add NOT NULL because every book must have a title
Author VARCHAR(255),
Genre VARCHAR(100),
Age_group ENUM('Toddler' , 'Child', 'Preteen', 'Teen') -- Changed to ENUM for consistent age categories
);

-- Index for fast search by Title
CREATE INDEX idx_books_title ON Books(Title); -- Added index for search optimization

CREATE table IF NOT EXISTS Recipes(
Recipe_ID INT primary key auto_increment, -- Added auto_increment for efficiency
Recipe_name VARCHAR(255) NOT NULL, -- Added NOT NULL because recipe name is required
Instructions TEXT,
Difficulty_level ENUM('Easy','Medium','Hard'), -- Changed to enum to standardize difficulty
Prep_time INT,
Associated_book_ISBN VARCHAR(13), 
foreign key (Associated_book_ISBN) REFERENCES Books(ISBN) ON DELETE SET NULL -- Added ON DELETE SET NULL for data inegrity
);

-- Indexes
CREATE INDEX idx_recipes_book ON Recipes(Associated_book_ISBN); -- Added index for faster joins with Books
CREATE INDEX idx_recipes_name ON Recipes(Recipe_name); -- Added index to speed up recipe name search


CREATE TABLE IF NOT EXISTS User (
    ChildID INT PRIMARY KEY auto_increment, -- Added auto_increment for efficiency
    Child_name VARCHAR(255) NOT NULL, -- Added NOT NULL because Child name is required
    Age INT,
    Reading_level ENUM('Pre-Reader','Beginner','Intermediate','Advanced'), -- Changed to ENUM for standardization
    Dietary_restrictions VARCHAR(255)
);

-- Indexes
CREATE INDEX idx_user_age ON User(Age); -- Added index for age-based filtering
CREATE INDEX idx_user_diet ON User(Dietary_restrictions); -- Added index for allergen-safe filtering
CREATE INDEX idx_user_reading ON User(Reading_level); -- Added index for filtering by reading level

CREATE TABLE IF NOT EXISTS Themes (
    Theme_ID INT PRIMARY KEY auto_increment, -- Added auto_increment for efficiency
    Theme_Name VARCHAR(255) NOT NULL, -- Added NOT NULL because Theme name is required
    Description TEXT
);

-- Index
CREATE INDEX idx_theme_name ON Themes(Theme_Name); -- Added index to speed up theme searches

CREATE TABLE IF NOT EXISTS Ingredients (
    Ingredient_ID INT PRIMARY KEY auto_increment, -- Added auto_increment for efficiency
    Ingredient_Name VARCHAR(255) NOT NULL, -- Added NOT NULL because Ingredient name is required
    Category VARCHAR(255),
    Common_Allergens VARCHAR(255)
);

-- Indexes
CREATE INDEX idx_ingredients_allergens ON Ingredients(Common_Allergens); -- Added index for allergen filtering
CREATE INDEX idx_ingredients_category ON Ingredients(Category); -- Added index for ingredient category filtering

CREATE TABLE IF NOT EXISTS Cooking_Sessions (
    Session_ID INT PRIMARY KEY auto_increment, -- Added auto_increment for efficiency
    Session_date DATE NOT NULL, -- Added NOT NULL because Session Date is required
    Recipe_made INT,
    Adult_in_charge VARCHAR(255),
    Rating INT CHECK (Rating BETWEEN 1 AND 5), -- Added CHECK constraint for valid rating values
    FOREIGN KEY (Recipe_made) REFERENCES Recipes(Recipe_ID) ON DELETE CASCADE -- Added ON DELETE CASCADE for data integrity
);

-- Indexes
CREATE INDEX idx_sessions_recipe ON Cooking_Sessions(Recipe_made); -- Added index to speed up recipe analytics
CREATE INDEX idx_sessions_date ON Cooking_Sessions(Session_date); -- Added index for chronological queries

CREATE TABLE IF NOT EXISTS Session_Participants (
    Session_ID INT,
    ChildID INT,
    PRIMARY KEY (Session_ID, ChildID),
    FOREIGN KEY (Session_ID) REFERENCES Cooking_Sessions(Session_ID),
    FOREIGN KEY (ChildID) REFERENCES User(ChildID)
);

-- Index
CREATE INDEX idx_participants_child ON Session_Participants(ChildID); -- Added index to speed up participant history queries

CREATE TABLE IF NOT EXISTS Book_Themes (
    ISBN VARCHAR(13),
    Theme_ID INT,
    PRIMARY KEY (ISBN, Theme_ID),
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN) ON DELETE CASCADE, -- Added ON DELETE CASCADE for data integrity
    FOREIGN KEY (Theme_ID) REFERENCES Themes(Theme_ID) ON DELETE CASCADE -- Added ON DELETE CASCADE for data integrity
);

-- Index
CREATE INDEX idx_bookthemes_theme ON Book_Themes(Theme_ID); -- Added index for theme-based book grouping

CREATE TABLE IF NOT EXISTS Recipe_Ingredients (
    Recipe_ID INT,
    Ingredient_ID INT,
    Quantity DECIMAL(8,2),
    Measurement VARCHAR(50),
    PRIMARY KEY (Recipe_ID, Ingredient_ID),
    FOREIGN KEY (Recipe_ID) REFERENCES Recipes(Recipe_ID)ON DELETE CASCADE, -- Added ON DELETE CASCADE for data integrity
    FOREIGN KEY (Ingredient_ID) REFERENCES Ingredients(Ingredient_ID) ON DELETE CASCADE -- Added ON DELETE CASCADE for data integrity
);

-- Index 
CREATE INDEX idx_recipeingredients_ingredient ON Recipe_Ingredients(Ingredient_ID); -- Added index for ingredient usage and allergen filtering
