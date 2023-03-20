-- TASK: Create a prepared statement called GetOrderDetail
-- This prepared statement helpS to reduce the parsing time of queries. 
-- It also helps to secure the database from SQL injections.


DROP PROCEDURE IF EXISTS GetOrderDetail;

CREATE PROCEDURE GetOrderDetail(IN CustomerID INT)
	SELECT order_id, quantity, total_cost
    FROM orders
    WHERE customer_id = CustomerID;


SET @id = 1;
CALL GetOrderDetail(@id);
