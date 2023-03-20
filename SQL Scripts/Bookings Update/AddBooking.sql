DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER //
CREATE PROCEDURE AddBooking(IN BookingID INT, IN BookingDate DATE, IN TableNumber INT, IN CustomerID INT)
	BEGIN
		INSERT INTO bookings (booking_id, date, table_number, customer_id)
        VALUES (BookingID, BookingDate, TableNumber, CustomerID);
        
        SELECT "New Booking Has been Added !" As "Confirmation";
        
END //

DELIMITER ;

-- CALL AddBooking (10, "2023-03-22", 8, 7)