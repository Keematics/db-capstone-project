USE little_lemon_db;
DROP VIEW IF EXISTS MoreThan2Orders;
CREATE VIEW MoreThan2Orders AS
SELECT name AS 'Menu Name'
FROM menus
WHERE menu_id = ANY
	(
    SELECT menu_id
    FROM orders
    WHERE quantity > 2
    )