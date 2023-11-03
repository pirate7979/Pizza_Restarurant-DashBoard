create database pizza_DB;
show databases;
use pizza_DB;
create table address(add_id int, delivery_address1 varchar(200), delivery_city varchar(50), delivery_zipcode varchar(20));
select * from address;

create table customers(cust_id int, cust_firstname varchar(50), cust_lastname varchar(50));
select * from customers;

create table ingredients(ing_id varchar(10), ing_name varchar(200), ing_weight int, ing_meas varchar(20), ing_price decimal(5,2));
select * from ingredients; 

create table inventory(inv_id int, item_id varchar(10), quantity int);
select * from inventory;

create table item(itme_id varchar(10), sku varchar(20), item_name varchar(100), item_cat varchar(1000), item_size varchar(10), item_price decimal(10.2));
select * from item;

create table orders(row_id int, order_id varchar(10), created_at datetime, item_id varchar(10), quantity int, cust_id int, delivery boolean, add_id int);
select * from orders;

create table recipe(row_id int, recipe_id varchar(20), ing_id varchar(10), quantity int);
select * from recipe;

create table rota(roe_id int, rota_id varchar(20), date datetime, shift_id varchar(20), staff_id varchar(20));
select * from rota;

create table shift(shift_id varchar(20), day_of_week varchar(10), start_time time, end_time time);
select * from shift;  

create table staff(staff_id varchar(20), first_name varchar(50), last_name varchar(50), position varchar(50), hourlt_rate decimal(5,2));
select * from staff;