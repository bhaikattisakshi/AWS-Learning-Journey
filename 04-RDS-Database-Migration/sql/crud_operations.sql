-- Select database
USE AWS_PROJECT;

-- Create table
CREATE TABLE IF NOT EXISTS Learners (
    Learners_id INT,
    Learners_Name VARCHAR(20)
);

-- CREATE
INSERT INTO Learners (Learners_id, Learners_Name)
VALUES
(1, 'Sakshi'),
(2, 'Shruti'),
(3, 'Om');

-- READ
SELECT * FROM Learners;

-- UPDATE
UPDATE Learners
SET Learners_Name = 'Sakshi Updated'
WHERE Learners_id = 1;

-- Verify UPDATE
SELECT * FROM Learners;

-- DELETE
DELETE FROM Learners
WHERE Learners_id = 3;

-- Verify DELETE
SELECT * FROM Learners;
