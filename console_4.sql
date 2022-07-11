create table products(
    id serial primary key,
    product_name varchar(50) not null,
    manufacturer varchar(20) not null,
    product_count integer default 0,
    price numeric not null,
    isDiscounted Bool
);

insert into products(product_name, manufacturer, product_count,  price, isDiscounted)
values ('Iphone X', 'Apple', 2, 71000, false),
       ('Iphone 8', 'Apple', 3, 56000, true),
       ('Galaxy S9', 'Samsung', 6, 56000, true),
       ('Galaxy S8 plus', 'Samsung', 2, 46000, false),
       ('Desire 12', 'HTC', 3, 26000, true);

--1. HTC компаниясынан башка компаниянын продуктуларын алыныз
select * from products where manufacturer  not in ('HTC');
select product_name from products where manufacturer  not in ('HTC');

--2. Apple компаниясынын 75000минден томонку баадагы продуктуларын алыныз.
select * from products where manufacturer = 'Apple' and price < 75000;

--3. Баасы 46000 жана андан ойдоку продуктулардын баарын алыныз
select product_name, price from products where price >= 46000;
select * from products where price >= 46000;

--4. Эн кымбат эки продукту алыныз
select * from products order by price desc limit 2;

--5. Баасы минимальный болгон продуктун атын алыныз
SELECT MIN(product_name) FROM products;

--6. Дискоунт болгон продуктуларды чыгарыныз.
select * from products where isDiscounted = true;

--7. Дискоунт болбогон продуктуларды чыгарыныз.
select * from products where isDiscounted = false;

--8. Баардык продуктулардын баасын кымбаттан арзанга карап чыгарыныз
select price from products order by price desc;

--9. Баардык продуктулардын суммасын(баасын) чыгарыныз.
select sum(price) from products;
select sum(product_count) from products;

--10. Эки жана андан аз продуктусу бар компанияларды алыныз
select manufacturer from products where product_count <=2 ;
