use little_chef;

/*Query 2: Analyze each child's engagement level, session history, and preferences
to help facilitators understand participation patterns and tailor future sessions */

SELECT 
    u.ChildID,                    -- Unique identifier for each child
    u.Child_name,                 -- Full name of the child
    u.Age,                        -- Current age of the child
    u.Dietary_restrictions,       -- Any food allergies or dietary limitations
    COUNT(DISTINCT sp.Session_ID) AS Total_Sessions_Attended,  -- How many unique sessions the child joined
    COUNT(DISTINCT r.Recipe_ID) AS Unique_Recipes_Tried,       -- How many different recipes they've experienced
    AVG(cs.Rating) AS Average_Session_Rating,  -- Average rating of sessions they attended (1-5 scale)
    -- Engagement classification to understand frequency of the childs use
    CASE 
        WHEN COUNT(DISTINCT sp.Session_ID) >= 3 THEN 'High Engagement'
        WHEN COUNT(DISTINCT sp.Session_ID) = 2 THEN 'Medium Engagement' 
        ELSE 'Low Engagement'
    END AS Engagement_Level  -- Categorizes children based on participation frequency

FROM User u
-- using left join with user include all children not just children who have had at least 1 session
-- use filter later to view only children who are active
LEFT JOIN Session_Participants sp ON u.ChildID = sp.ChildID
LEFT JOIN Cooking_Sessions cs ON sp.Session_ID = cs.Session_ID
LEFT JOIN Recipes r ON cs.Recipe_made = r.Recipe_ID

GROUP BY u.ChildID -- use group by childid to view each childs total engagement in a single row
HAVING Total_Sessions_Attended > 0 -- filter out children who are not active
ORDER BY Total_Sessions_Attended DESC, Average_Session_Rating DESC;