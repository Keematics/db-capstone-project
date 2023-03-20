DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //

CREATE PROCEDURE CancelBooking(IN BookingID INT)
	BEGIN
		DELETE FROM bookings
        WHERE booking_id = BookingID;
        
	SELECT CONCAT("Booking ", BookingID, "  has been cancelled") As "Confirmation";
    
    END//
    
DELIMITER ;

-- Call CancelBooking(10);