-- Q1: Pull a list of customer ids with the customer’s full name, and address,
-- along with combining their city and country together. Be sure to make a
-- space in between these two and make it UPPER CASE.

SELECT CustomerId,
       FirstName || ' ' || LastName AS FullName,
       Address,
       UPPER(City || ' ' || Country) AS CityCountry
FROM Customers

-- Question: What is the city and country result for CustomerId 16 ?

-- Answer: MOUNTAIN VIEW USA
------------------------------------------------------------------------------------
-- Q2: Create a new employee user id by combining the first 4 letter of the
-- employee’s first name with the first 2 letters of the employee’s last name. 
-- Make the new field lower case and pull each individual step to show your work.

SELECT FirstName,
       LastName,
       LOWER(SUBSTR(FirstName,1,4)) AS A,
       LOWER(SUBSTR(LastName,1,2)) AS B,
       LOWER(SUBSTR(FirstName,1,4)) || LOWER(SUBSTR(LastName,1,2)) AS userId
FROM Employees

-- Question: What is the final result for Robert King?

-- Answer: robeki
------------------------------------------------------------------------------------
-- Q3: Show a list of employees who have worked for the company for 15 or more 
-- years using the current date function. Sort by lastname ascending.

SELECT  FirstName,
        LastName,
        HireDate,
        DATE('now') - DATE(HireDate) AS years
FROM Employees
WHERE years >= 15
ORDER BY LastName ASC

-- Question: What is the lastname of the last person on the list returned?
  
-- Answer: Peacock
------------------------------------------------------------------------------------
-- Q4: Profiling the Customers table, answer the following question.

SELECT  COUNT(Address),
        COUNT(Fax),
        COUNT(Phone),
        COUNT(Company),
        COUNT(PostalCode),
        COUNT(FirstName),
        COUNT(*)
FROM Customers

-- Question: Are there any columns with null values? Indicate any below. Select all that apply

-- Answers: Postal Code, Company, Fax, Phone
------------------------------------------------------------------------------------
-- Q5: Find the cities with the most customers and rank in descending order.

SELECT City,
       COUNT(*)
FROM Customers
GROUP BY City
ORDER BY COUNT(*) DESC

-- Question: Which of the following ciites indicate having 2 customers?

-- Answers: Mountain View, Sao Paulo, London
------------------------------------------------------------------------------------
-- Q6: Create a new customer invoice id by combining a customer’s invoice id with
-- their first and last name while ordering your query in the following order:
-- firstname, lastname, and invoiceID.

SELECT FirstName || LastName || InvoiceId AS cus_inv
FROM Customers C
LEFT JOIN Invoices I
ON C.CustomerId = I.CustomerID
WHERE cus_inv LIKE 'AstridGruber%'

-- Question: Select all of the correct "AstridGruber" entries that are returned in your result below.
-- Select all that apply.

-- Answer: AstridGruber273, AstridGruber296, AstridGruber370 
