-- Q1: Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT COUNT(TrackId)
FROM TRACKS
WHERE Milliseconds >= 5000000

-- Answer: 2
------------------------------------------------------------------------------------

-- Q2: Find all the invoices whose total is between $5 and $15 dollars.

SELECT *
FROM Invoices
WHERE Total BETWEEN 5 AND 15

-- Answer: 168
------------------------------------------------------------------------------------

-- Q3: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

SELECT *
FROM Customers
WHERE State IN ('RJ','DF','AB','BC','CA','WA','NY')

-- Question: What company does Jack Smith work for

-- Answer: Microsoft Corp
------------------------------------------------------------------------------------

--Q4: Find all the invoices for customer 56 and 58 where the total was between 
-- $1.00 and $5.00.

SELECT *
FROM Invoices
WHERE CustomerID IN (56,58) AND 
Total BETWEEN 1 AND 5

-- Question: Was was the invoice date for invoice ID 315?


-- Answer: 10-27-2012
------------------------------------------------------------------------------------

--Q5: Find all the tracks whose name starts with 'All'.

SELECT *
FROM Tracks
WHERE Name LIKE 'All%'

-- Question: While only 10 records are shown, the query will indicate how many total records
-- there are for this query - enter that number below

-- Answer: 15
------------------------------------------------------------------------------------

--Q6: Find all the customer emails that start with "J" and are from gmail.com.

SELECT CustomerId, Emai
FROM Customers
WHERE Email LIKE "J%@gmail.com"

-- Question: Enter the one email address returned (wou will likely need to scrool 
-- to the right) below.

--Answer: jubarnett@gmail.com
------------------------------------------------------------------------------------

--Q7: Find all the invoices from Brasilia, Edmonton, and Vancouver and sort in 
-- descending order by invoice ID.

SELECT *
FROM Invoices
WHERE BillingCity IN ('Brasilia','Edmonton','Vancouver')
ORDER BY InvoiceId DESC


-- Question: What is the total invoice amount of the first record returned? Enter the
-- number below without a $ sign.

-- Answer: 13.86
------------------------------------------------------------------------------------

--Q8: Show the number of orders placed by each customer and sort the result by
-- the number of orders in descending order.

SELECT  CustomerId,
        COUNT(InvoiceId)
FROM Invoices
GROUP BY CustomerId
ORDER BY COUNT(*) DESC

-- Question: What is the number of items placed for the 8th person on this list?
-- Enter that number below

-- Answer: 7
------------------------------------------------------------------------------------

--Q9: Find the albums with 12 or more tracks.

SELECT  Name,
        AlbumId,
        COUNT(AlbumId)
FROM Tracks
GROUP BY AlbumId
HAVING COUNT(AlbumId) >= 12

--Question: While the number o records returned is limited to 10, the query, if run correctly,
-- will indicate how many total records there are. Enter that number below

-- Answer: 158
