-- TASK: -> Create a stored procedure called CancelOrder
-- Creating this procedure will allow Little Lemon to cancel any order 
-- by specifying the order id value in the procedure parameter 
-- without typing the entire SQL delete statement. 




DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER //

CREATE PROCEDURE CancelOrder(IN OrderID INT)
	BEGIN
		DELETE FROM orders
        WHERE order_id = OrderID;
        
        SELECT CONCAT("Order ", OrderID, " is cancelled") AS Confirmation;
    END//

DELIMITER ;

CALL CancelOrder(10);