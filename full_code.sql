-- Active: 1679472236853@@127.0.0.1@3306@retail_online
CREATE Table User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE Table Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    harga DECIMAL(10, 2),
    tanggal DATE
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    user_id INT,
    jumlah INT,
    tanggal DATE,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50)
);

ALTER TABLE Product
ADD COLUMN category_id INT,
ADD FOREIGN KEY (category_id) REFERENCES Category(category_id);

CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    total DECIMAL(10, 2),
    transaction_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

DROP Table Transactions;


INSERT INTO User (nama, email, address) VALUES
('Yanto Agos','yanto@gmail.com','Buduran'),
('Agos susanto','agos@gmail.com','Jakarta'),
('Masa Sama','masa@gmail.com','Surabaya'),
('Michale Supri','supri@gmail.com','Surabaya'),
('Yanti Tupaq','yanti@gmail.com','Lamongan'),
('Yehezkiel Novan','novan22@gmail.com','NewYork'),
('Komandan Nero','nero66@gmail.com','Bandung'),
('Kumaha Sisti','sisti823@gmail.com','Bandung'),
('Pitou Popu','pitou2@gmail.com','Sidoarjo'),
('Isti Qomah','isti234@gmail.com','Banten');

INSERT INTO Product(product_name, harga, tanggal) VALUES
('Pepsodent', 10.99 ,'2023-10-17'),
('Nuvo', 20.29,'2023-11-05'),
('Fanta', 5.99 ,'2023-05-06'),
('Coca-Cola', 6.00 ,'2023-05-10'),
('Sprite', 5.99 ,'2023-05-06'),
('Cleo', 3.20 ,'2023-06-18'),
('Aqua', 3.22 ,'2023-06-19'),
('LeMineral', 3.20 ,'2023-06-18'),
('Garnier', 6.20 ,'2023-07-20'),
('Kafh', 7.20 ,'2023-06-22');

INSERT into Category (category_name) VALUES
('Sikat Gigi'),
('Sabun Mandi'),
('Minuman'),
('Minuman'),
('Minuman'),
('Minuman'),
('Minuman'),
('Minuman'),
('Sabun Muka'),
('Sabun Muka');

INSERT INTO Transactions (order_id, total, transaction_date)
SELECT o.order_id, SUM(p.harga * o.jumlah) AS total, o.tanggal
FROM Orders o
JOIN Product p ON o.product_id = p.product_id
GROUP BY o.order_id;


INSERT INTO Orders (user_id, product_id, jumlah, tanggal) VALUES
(1, 1, 1, '2023-07-01'),
(2, 2, 2, '2023-06-05'),
(3, 3, 3, '2023-07-10'),
(4, 4, 1, '2023-04-15'),
(5, 5, 2, '2023-09-20'),
(6, 6, 1, '2023-07-25'),
(8, 7, 4, '2023-08-05'),
(9, 2, 6, '2023-08-05'),
(10, 10, 1, '2023-08-05'),
(7, 10, 2, '2023-08-05');

SELECT * FROM User;
SELECT * FROM Product;
SELECT * FROM Orders;

UPDATE User SET nama = 'Masa Sudah Di Update' where user_id = 3;
UPDATE Product SET product_name = "Coca-Terupdate" WHERE product_id = 4;
UPDATE Orders SET jumlah = 8 WHERE order_id = 1;

SELECT u.user_id, u.nama, COUNT(DISTINCT o.product_id) AS jumlah_barang_dibeli
FROM User u
JOIN Orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.nama
HAVING COUNT(DISTINCT o.product_id) = 3;

SELECT product_id, COUNT(*) AS jumlah_pembelian
FROM Orders
GROUP BY product_id
ORDER BY jumlah_pembelian DESC
LIMIT 3;

UPDATE Product
SET category_id = 3
WHERE product_id IN (3, 4, 5, 6, 7, 8, 9, 10);

SELECT p.category_id, COUNT(*) AS jumlah_barang
FROM Product p
GROUP BY p.category_id
ORDER BY jumlah_barang DESC
LIMIT 1;

SELECT o.user_id, AVG(t.total) AS rata_rata_transaksi
FROM Orders o
JOIN Transactions t ON o.order_id = t.order_id
WHERE t.transaction_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY o.user_id;

SELECT * FROM Transactions WHERE transaction_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

SELECT t.order_id, o.user_id
FROM Transactions t
LEFT JOIN Orders o ON t.order_id = o.order_id;






