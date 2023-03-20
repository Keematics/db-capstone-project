USE little_lemon_db;
SELECT
    c.customer_id AS CustomerID,
    c.name AS FullName,
    o.order_id AS OrderID,
    o.total_cost AS Cost,
    m.name AS MenuName,
    mi.course AS CourseName,
    mi.starter AS StarterName
FROM customers AS c
JOIN orders AS o
	USING (customer_id)
JOIN menus AS m
	USING (menu_id)
JOIN menucontent mc
	USING (menu_id)
JOIN menuitems AS mi
	USING (menu_item_id)
WHERE o.total_cost > 150;

-- USING can be used instead of ON clause in JOIN sql query to specify the column needed
-- the AS keyword can be omitted after the JOIN statement too and still performs as expected. 