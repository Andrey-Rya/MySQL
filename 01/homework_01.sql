-- 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
use lesson_1;
CREATE TABLE `lesson_1`.`mobile_phones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `product_count` INT NOT NULL,
  `price` DECIMAL NULL,
  PRIMARY KEY (`id`));
  
  -- Заполним БД данными
INSERT INTO `lesson_1`.`mobile_phones` 
  (`product_name`, `manufacturer`, `product_count`, `price`) 
VALUES 
('iPhone X', 'Apple', 3, 76000),
('IPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000),
('Redmi Note 10 Pro', 'Xiaomi', 9, 29000),
('Redmi 10', 'Xiaomi', 8, 23000),
('Redmi A1+', 'Xiaomi', 6, 18000);

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT product_name, manufacturer, price 
FROM mobile_phones
WHERE product_count > 2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM mobile_phones
WHERE manufacturer = 'Samsung';

-- *4.1. Товары, в которых есть упоминание "Iphone"
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones
WHERE product_name LIKE '%iPhone%';

-- *4.2. Товары, в которых есть упоминание "Samsung"
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones
WHERE product_name OR  manufacturer LIKE '%Samsung%';

-- *4.3. Товары, в которых есть ЦИФРЫ
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones
WHERE REGEXP_LIKE(product_name, '[[:digit:]]');

-- *4.4. Товары, в которых есть ЦИФРА "8"
SELECT product_name, manufacturer, product_count, price
FROM mobile_phones
WHERE product_name LIKE '%8%';