use restaurant;


-- 1. How many items are there in each menu type.
select menutype,count(id)
from menu inner join menuitem using(menuid)
group by menuid;

-- 2. find minimal 3 avergare salaries in each job position.
WITH min_3_salaries AS (
    SELECT JobPosition, ROUND(AVG(salary), 2) AS avg_salary
    FROM employee
    GROUP BY JobPosition
    ORDER BY avg_salary ASC
    LIMIT 3
)
SELECT JobPosition, CONCAT('$', avg_salary) avg_salary
from min_3_salaries;

-- 3. Create a view of customers,their budget, spending starting from the highest
CREATE VIEW CustomerSpending AS
SELECT c.customerid, c.budget,p.amount spent 
	FROM customer c  
    LEFT JOIN payment p USING(customerid)
    ORDER BY spent DESC;

SELECT * FROM CustomerSpending;

-- 4. Find employees that are from Russia (we expect them to have 'ov' at the end of their surname)

SELECT FirstName Name, LastName Surname 
FROM employee
HAVING Surname LIKE '%ov';

-- 4.2 What proportion of employees are russians?
SELECT 
    RussianEmployees, TotalEmployees, 
    CONCAT(ROUND((RussianEmployees / TotalEmployees) * 100,2),'%') AS Proportion
FROM 
(SELECT 
        COUNT(CASE WHEN LastName LIKE '%ov' THEN 1 END) AS RussianEmployees,
        COUNT(*) AS TotalEmployees
FROM employee)  AS counts;

-- 5 Function to calculate the the total price of a specific product


DELIMITER //
CREATE FUNCTION CalculateTotalPrice(price DECIMAL(10, 2), quantity INT)
RETURNS DECIMAL(10, 2)
READS SQL DATA
BEGIN
    DECLARE total DECIMAL(10, 2);
    SET total = price * quantity;
    RETURN total;
END//
DELIMITER ;

-- 5.2 How much can the restaurant earn,if sells all the products available
SELECT
    CONCAT('$',SUM(CalculateTotalPrice(Price, Quantity)))
FROM MenuItem;



-- 6 Create a view of Breakfast Menu
CREATE VIEW Breakfast_Menu AS
SELECT ItemName, Price, Descriptions
FROM MenuItem
LEFT JOIN Menu USING (MenuID)
WHERE MenuID = 1;



-- 7 a View of high-priced desserts and cocktails

CREATE VIEW High_Priced_Items AS
SELECT ItemName, Price,MenuType, Descriptions
FROM MenuItem INNER JOIN Menu USING(MenuId)
WHERE (MenuID = 2 AND Price > 10) OR (MenuID = 3 AND Price > 8);

select * from High_Priced_Items;

-- 8 Find place where the most wealthy people go

SELECT t.location,ROUND(AVG(budget),1) avg_budget
FROM customer c
LEFT JOIN reservation r USING(customerid) 
LEFT JOIN TheTable t USING(TableNumber)
GROUP BY t.location
ORDER BY avg_budget desc
LIMIT 1;

-- 9 Find which locations are popular and which are not
SELECT
    t.location,
    AVG(c.budget) AS avg_budget,
    CASE
        WHEN COUNT(*) < 0.1 * (SELECT COUNT(*) FROM reservation WHERE tablenumber IS NOT NULL) THEN 'Not Popular'
        WHEN COUNT(*) >= 0.5 * (SELECT COUNT(*) FROM reservation WHERE tablenumber IS NOT NULL) THEN 'Popular'
        ELSE 'Ordinary'
    END AS popularity_status
    -- COUNT(*) * 100.0 / (SELECT COUNT(*) FROM reservation WHERE tablenumber IS NOT NULL) AS percent
FROM
    customer c
LEFT JOIN reservation r ON c.customerid = r.customerid
LEFT JOIN TheTable t ON r.tablenumber = t.tablenumber
WHERE
    r.tablenumber IS NOT NULL
GROUP BY
    t.location;
    
    
    
-- 10 calculate total price of each order 

SELECT c.FirstName, c.LastName, o.OrderNumber, oi.ID AS ItemID, oi.Quantity, mi.Price,
       SUM(oi.Quantity * mi.Price) AS Payment
FROM Customer c
LEFT JOIN Orders o USING (CustomerID)
LEFT JOIN OrderItem oi USING (OrderNumber)
LEFT JOIN MenuItem mi USING (ID)
GROUP BY c.CustomerID, c.Budget, o.OrderNumber, oi.ID, oi.Quantity, mi.Price;

-- 11 calculate payment for each customer (top 4)
SELECT c.CustomerID, SUM(oi.Quantity * mi.Price) AS TotalPayment
FROM Customer c
LEFT JOIN Orders o USING (CustomerID)
LEFT JOIN OrderItem oi USING (OrderNumber)
LEFT JOIN MenuItem mi USING (ID)
GROUP BY c.CustomerID, c.Budget
ORDER BY TotalPayment desc
LIMIT 4;



-- 12 Assume we are interested in increasing the amount of products that are expensive
-- Find items that are more expensive than $10 and there are less than 15 left

SELECT m.itemname,m.price,m.quantity 
FROM menuitem m 
WHERE m.itemname IN 
		(SELECT mm.itemname FROM menuitem mm 
        WHERE mm.price > 10.00 
		AND mm.quantity < 15);


-- 13 Find employeees who have completed an order
    
SELECT FirstName, LastName
FROM Employee
WHERE EXISTS (
    SELECT *
    FROM Orders
    WHERE Orders.EmployeeID = Employee.EmployeeID
    AND OrderStatus = 'Completed'
);


-- 14 Create Function for increasing the price of product by 1,5x and see it's description 

DELIMITER //
CREATE FUNCTION UpdateAndDescribeItem(ItemID INT) RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE ItemDescription VARCHAR(255);
    DECLARE NewPrice DECIMAL(10, 2);
    DECLARE Name VARCHAR(50);
    
    SELECT Descriptions INTO ItemDescription FROM MenuItem WHERE ID = ItemID;
    SELECT Price * 1.5 INTO NewPrice FROM MenuItem WHERE ID = ItemID;
    SELECT ItemName INTO Name FROM MenuItem WHERE ID = ItemID;
    
    UPDATE MenuItem SET Price = NewPrice WHERE ID = ItemID;
    
    RETURN CONCAT(Name,': ', ItemDescription, ', New Price: ', NewPrice);
END //
DELIMITER ;

SELECT UpdateAndDescribeItem(201);














