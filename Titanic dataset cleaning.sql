--Making the Survived table more readable By changing it from 1 and 0 to yes or no 
--Changing the data type to varchar from int
ALTER TABLE tested
ALTER COLUMN Survived VARCHAR(32);

UPDATE tested
SET Survived = CASE 
                    WHEN Survived = 1 THEN 'Yes'
                    WHEN Survived = 0 THEN 'No'
                    ELSE Survived
                 END;


--Making the pclass(Passenger class) more comprehensive by changing the 1,2,3 to first, second, third classes respectively
UPDATE tested
SET pclass = CASE 
                WHEN pclass = 1 THEN 'First class'
                WHEN pclass = 2 THEN 'Second class'
                WHEN pclass = 3 THEN 'Third class'
                ELSE pclass
            END;
--Formatting the Name column to be more readable
UPDATE tested
SET Name = 'Mr. ' + SUBSTRING(Name, CHARINDEX(',', Name) + 2, LEN(Name)) + ', ' + LEFT(Name, CHARINDEX(',', Name) - 1)
WHERE Name LIKE '%, Mr. %';

UPDATE tested
SET Name = 'Mrs. ' + SUBSTRING(Name, CHARINDEX(',', Name) + 2, LEN(Name)) + ', ' + LEFT(Name, CHARINDEX(',', Name) - 1)
WHERE Name LIKE '%, Mrs. %';

UPDATE tested
SET Name = 'Miss. ' + SUBSTRING(Name, CHARINDEX(',', Name) + 2, LEN(Name)) + ', ' + LEFT(Name, CHARINDEX(',', Name) - 1)
WHERE Name LIKE '%, Miss. %';

--Making the amount column more cleaner
--Changing the datatype 
ALTER TABLE tested
ALTER COLUMN Fare VARCHAR(20);

--Assuming the Amount was paid in Dollar
UPDATE tested
SET Fare = CONCAT('$', Fare);

--Changed age column from float to int to get rid of the decimal places
ALTER TABLE tested
ALTER COLUMN Age INT;

--Handling the Null values in Columns
--Null values in Age column
ALTER TABLE tested
ALTER COLUMN Age VARCHAR(20); 

UPDATE tested
SET Age = 'N/A'
WHERE Age IS NULL;

--Cabin Column
ALTER TABLE tested
ALTER COLUMN Cabin VARCHAR(20);

UPDATE tested
SET Cabin = 'N/A'
WHERE Cabin IS NULL;












