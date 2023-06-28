--Q1: Using a subquery, find the names of all the tracks for the
-- album "Californication".

SELECT  Title,
        Name,
        TrackId 
FROM Tracks AS T
LEFT JOIN T.AlbumId = A.AlbumId
WHERE Title = 'Californication'

-- Question: What is title of the 8th track?
    
-- Answer: Porcelain 
------------------------------------------------------------------------------------

-- Q2: Find the total number of invoices for each customer along 
-- with the customer's full name, city and email.

SELECT  FirstName || LastName,
        City,
        Email,
        COUNT(*)
FROM Customers AS C
LEFT JOIN Invoices AS  I
ON C.CustomerId = I.CustomerId
GROUP BY C.CustomerId

-- Question: After running the query described above, what is the email address of the 5th person,
-- Frantisek Wichterlova? Enter the answer below

-- Answer: frantisekw@jetbrains.com
------------------------------------------------------------------------------------
-- Q3: Retrieve the track name, album, artist, and trackID for 
-- all the albums.

SELECT  Name,
        Title,
        ArtistId,
        TrackId
FROM Tracks AS T
LEFT JOIN Albums AS A
ON A.AlbumId = T.AlbumId
WHERE TrackID = 12

-- Question: What is the song title of trackId  12 from the "For Those About to Rock We Salute You" album?

-- Answer: Breaking The Rules
------------------------------------------------------------------------------------
-- Q4: Retrieve a list with the managers last name, and the last 
-- name of the employees who report to him or her.

SELECT M.LastName AS Manager, 
       E.LastName AS Employee
FROM Employees E INNER JOIN Employees M 
ON E.ReportsTo = M.EmployeeID

-- Question: After running the query describe above, who are the reports for the manager named Mitchell?

-- Answer: King, Callahan
------------------------------------------------------------------------------------
-- Q5: Find the name and ID of the artists who do not have albums.

SELECT Name,
       A.ArtistId
FROM Artists AS A
LEFT JOIN Albums AS Al
ON A.ArtistId = Al.ArtistId
WHERE Album IS NULL

-- Question: After running the query described above, two of the records returned  have the same last name.

-- Answer: Gilberto
------------------------------------------------------------------------------------
-- Q6: Use a UNION to create a list of all the employee's & 
-- customer's first names and last names ordered by the last
-- name in descending order.

SELECT FirstName,
       LastName
FROM Employees
UNION
SELECT FirstName,
       LastName
FROM Customers
ORDER BY LastName DESC

-- Question: After running the query described above, determine what is the last name of the 6th record?

-- Answer: Taylor
------------------------------------------------------------------------------------
-- Q7: See if there are any customers who have a different city
-- listed in their billing city versus their customer city.

SELECT C.FirstName,
       C.LastName,
FROM Customers C
INNER JOIN Invoices I
ON C.CustomerId = I.CustomerId
WHERE CustomerCity <> BillingCity

-- Answer: No customers have a different city listed in their billing city versus customer city 
