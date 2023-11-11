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
