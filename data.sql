-- DROP TABLE categories;
-- DROP TABLE products;
-- DROP TABLE comments;

CREATE TABLE IF NOT EXISTS categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	description TEXT,
	price NUMERIC(7, 2),
	quantity INTEGER,
	added DATE,
	category_id INTEGER REFERENCES categories(id)
);

CREATE TABLE IF NOT EXISTS comments (
	id SERIAL PRIMARY KEY,
	text TEXT,
	users VARCHAR(50),
	product_id INTEGER REFERENCES products(id),
	created DATE
);

INSERT INTO categories (name) VALUES 
('Elektronika'),
('Poyabzallar'),
('Kiyim'),
('Maishiy texnika');

INSERT INTO products (name, description, price, quantity, added, category_id) VALUES
('Qo''l soat', 'Yangi', '12000', 30, '2024-02-11', 1),
('Krasofka', 'Orginal', '35000', 12, '2023-10-04', 2),
('Telovizor', 'Yangi',  '12000', 15, '2021-05-11', 4),
('Kurtka', 'Turetskiy', '10000', 3, '2024-02-15', 3);

INSERT INTO comments (text, users, product_id, created) VALUES
('zor gap yo ', 'geroy_712', 1, '2024-10-09'),
('umumn yoqmad','geroy_712', 2, '2024-11-12'),
('yaxw zor gap yo', 'geroy_712', 3, '2024-09-11'),
('yoqmadi ', 'geroy_712', 4, '2023-11-21');

SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM comments;
