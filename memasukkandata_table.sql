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