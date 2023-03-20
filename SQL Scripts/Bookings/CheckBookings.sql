DROP PROCEDURE IF EXISTS CheckBooking;
CREATE PROCEDURE CheckBooking(IN BookingDate DATE, IN TableNumber INT)
	SELECT CASE
		WHEN date = BookingDate AND Table_number = tableNumber
			THEN CONCAT("Table ", TableNumber, " is already booked")
            ELSE CONCAT("Table ", TableNumber, " is free")
				END AS BookingStatus
	FROM bookings
    WHERE date = bookingdate OR table_number = Tablenumber
    LIMIT 1
    
    -- CALL CheckBooking('date', TableNumber); // this checks the booking with date and table number
    
    