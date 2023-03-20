DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //
-- Changes the delimiter to //

CREATE PROCEDURE AddValidBooking(IN BookingDate DATE, IN TableNumber INT, IN CustomerID INT)

BEGIN
		
        Declare FoundBooking INT DEFAULT 0;
 -- Declare the variable that will be used for identifying the existing bookings.
		START TRANSACTION;
        SELECT COUNT(*) INTO FoundBooking
        FROM bookings
        WHERE date = BookingDate AND Table_Number = TableNumber;
        
        
        INSERT INTO Bookings (date, table_number, customer_id)
        VALUES (BookingDate, TableNumber, CustomerID);
        
        IF FoundBooking <> 0
        THEN SELECT CONCAT("Table ", TableNumber, " is already booked. The booking is cancelled") AS "Booking status";
        ROLLBACK;
        ELSE
			COMMIT;
		END IF;
-- If a booking with the same date and table number was found then rollup otherwise commit.
        END //
DELIMITER ;
        
