SELECT * FROM User;
SELECT * FROM Product;
SELECT * FROM Orders;

UPDATE User SET nama = 'Masa Sudah Di Update' where user_id = 3;
UPDATE Product SET product_name = "Coca-Terupdate" WHERE product_id = 4;
UPDATE Orders SET jumlah = 8 WHERE order_id = 1;
UPDATE Product
SET category_id = 3
WHERE product_id IN (3, 4, 5, 6, 7, 8, 9, 10);