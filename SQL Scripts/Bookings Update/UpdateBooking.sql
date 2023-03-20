DROP DATABASE IF EXISTS UpdateBooking;

DELIMITER //

CREATE PROCEDURE UpdateBooking(IN BookingID INT, IN BookingDate Date)
BEGIN
	UPDATE bookings
    SET date = BookingDate
    WHERE Booking_id = BookingID;
    
    SELECT CONCAT("Booking Number", BookingID, " has been updated") AS "Confirmation";
END//

DELIMITER ;


-- CALL UpdateBooking(10, "2023-03-12");
