CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50)
);

ALTER TABLE Product
ADD COLUMN category_id INT,
ADD FOREIGN KEY (category_id) REFERENCES Category(category_id);

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