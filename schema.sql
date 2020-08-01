CREATE DATABASE truyum ;
USE truyum
CREATE TABLE menu_item (id int NOT NULL Primary key (id),
                        Names varchar(MAX),
					    Price varchar(MAX),
					    Active varchar(MAX),
					    DateofLaunch varchar(MAX),
					    Category varchar(MAX),
					    FreeDelivery varchar(MAX),
					    Actions varchar(MAX));

ALTER TABLE menu_item ALTER COLUMN id VARCHAR(8000);
ALTER TABLE menu_item ALTER COLUMN DateofLaunch date;
ALTER TABLE menu_item ALTER COLUMN Price DECIMAL(10,2);


/*creating customer table*/

create table customer(cust_name varchar(max),cust_id int primary key (cust_id) , cust_phone varchar(max));


/*creating cart table*/

create table cart(
productId int FOREIGN KEY  references menu_item(id),
customerId int FOREIGN KEY references customer(cust_id));
