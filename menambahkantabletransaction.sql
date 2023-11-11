CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    total DECIMAL(10, 2),
    transaction_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Transactions (order_id, total, transaction_date)
SELECT o.order_id, SUM(p.harga * o.jumlah) AS total, o.tanggal
FROM Orders o
JOIN Product p ON o.product_id = p.product_id
GROUP BY o.order_id;

SELECT t.order_id, o.user_id
FROM Transactions t
LEFT JOIN Orders o ON t.order_id = o.order_id;