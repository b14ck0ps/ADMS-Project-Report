---------------- Single Row Functions ----------------

-- Retrieve the email domain for the admin with Admin_ID = 1:
SELECT Admin_Email, SUBSTR(Admin_Email, INSTR(Admin_Email, '@') + 1) AS Email_Domain
FROM Admin
WHERE Admin_ID = 1;
-- Get the hire date of the manager named 'John Doe' formatted in a specific way
SELECT Manager_Name, TO_CHAR(Manager_Hiredate, 'DD-Mon-YYYY') AS Hire_Date
FROM Manager
WHERE Manager_Name = 'John Doe';

-- Concatenate the first and last name of the content creator with ContentCreator_ID = 1:
SELECT ContentCreator_Name, CONCAT(CONCAT(SUBSTR(ContentCreator_Name, 1, INSTR(ContentCreator_Name, ' ') - 1), ' '), SUBSTR(ContentCreator_Name, INSTR(ContentCreator_Name, ' ') + 1)) AS Full_Name
FROM ContentCreator
WHERE ContentCreator_ID = 1;

-------------- Group Functions --------------
--Calculate the average balance for all finance records
SELECT AVG(Finance_Balance) AS Average_Balance
FROM Finance;

--Count the number of teams established in each country
SELECT Team_Country, COUNT(*) AS Team_Count
FROM Team
GROUP BY Team_Country;

--Calculate the total salary expense for content creators
SELECT SUM(ContentCreator_Salary) AS Total_Salary_Expense
FROM ContentCreator;

-------------- Sub Query --------------
-- Retrieve the managers associated with teams established before a specific date
SELECT Manager_Name
FROM Manager
WHERE Manager_ID IN (
    SELECT Manager_ID
    FROM Team
    WHERE Team_Established_Date < TO_DATE('2022-03-01', 'YYYY-MM-DD')
);

-- Get the content creators who have a higher salary than the average salary of all content creators
SELECT ContentCreator_Name
FROM ContentCreator
WHERE ContentCreator_Salary > (
    SELECT AVG(ContentCreator_Salary)
    FROM ContentCreator
);

-- Retrieve the teams managed by managers who have won a championship
SELECT Team_Name
FROM Team
WHERE Manager_ID IN (
    SELECT Manager_ID
    FROM Manager
    WHERE Manager_ID IN (
        SELECT DISTINCT Manager_ID
        FROM Team_Winning
        WHERE Team_Winning LIKE '%Championship%'
    )
);
