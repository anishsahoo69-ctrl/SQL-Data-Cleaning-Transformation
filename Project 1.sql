SHOW DATABASES;

USE classicmodels;

SHOW TABLES;

SHOW TABLES LIKE 'customers';

SHOW TABLES LIKE 'products';

SHOW TABLES LIKE 'payments';

SELECT *
FROM customers;

SELECT *
FROM customers;

SELECT customerName, city, country
FROM customers
ORDER BY country ASC;

SELECT customerNumber, customerName, city, country
FROM customers
WHERE country = 'USA';

SELECT customerNumber, customerName, country, creditLimit
FROM customers
WHERE creditLimit > 100000;

SELECT customerNumber, customerName, country, creditLimit
FROM customers
WHERE creditLimit BETWEEN 50000 AND 100000;

SELECT customerNumber, customerName, city, country
FROM customers
WHERE customerName LIKE 'A%';

SELECT customerNumber, customerName, city, country
FROM customers
WHERE country IN ('USA', 'France', 'Germany');

SELECT customerNumber, customerName, city, country
FROM customers
LIMIT 10;

SELECT customerNumber, customerName, city, country
FROM customers
LIMIT 10 OFFSET 10;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT AVG(creditLimit) AS average_credit_limit
FROM customers;

SELECT MIN(creditLimit) AS minimum_credit_limit
FROM customers;

SELECT MAX(creditLimit) AS maximum_credit_limit
FROM customers;

SELECT SUM(creditLimit) AS total_credit_limit
FROM customers;

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country;

SELECT country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY country;

SELECT country, MAX(creditLimit) AS maximum_credit_limit
FROM customers
GROUP BY country;

SELECT country, SUM(creditLimit) AS total_credit_limit
FROM customers
GROUP BY country;

SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;

SELECT city, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY city;

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country
HAVING COUNT(*) > 5;

SELECT country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY country
HAVING AVG(creditLimit) > 50000;

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC;

SELECT country, MAX(creditLimit) AS maximum_credit_limit
FROM customers
GROUP BY country
ORDER BY maximum_credit_limit DESC;

SELECT customerNumber, customerName, country, creditLimit
FROM customers
WHERE creditLimit = 0;

SELECT customerNumber, customerName, city, state
FROM customers
WHERE state IS NULL;

SELECT customerNumber, customerName, city, state
FROM customers
WHERE state IS NOT NULL;

SELECT COUNT(*) AS usa_customers
FROM customers
WHERE country = 'USA';

SELECT AVG(creditLimit) AS usa_average_credit_limit
FROM customers
WHERE country = 'USA';