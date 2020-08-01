
insert into menu_item values(1, 'Sandwich', 99.00, 'Yes', '2017-03-15', 'Main Course', 'Yes','Edit');
insert into menu_item values(2, 'Burger', 129.00, 'Yes', '2017-12-23', 'Main Course', 'No','Edit');
insert into menu_item values(3, 'Pizza', 149.00, 'Yes', '2017-08-21', 'Main Course', 'No','Edit');
insert into menu_item values(4, 'French Fries', 57.00, 'No', '2017-07-02', 'Starters', 'Yes','Edit');
insert into menu_item values(5, 'Chocolate Brownie', 32.00, 'Yes', '2022-11-02', 'Dessert', 'Yes','Edit');

select *from menu_item


/*customer list*/

insert into customer(cust_name,cust_id,cust_phone) values('rv','1','9876541230'),('ku','2','111112222'),('vm','3','7777788888');

select *from customer

/*active menu items*/

select * from menu_item
		where Active='Yes' AND DateofLaunch >= '2017-03-15';

/*update all the columns values based on Menu Item Id*/

update menu_item
set Names='TikkaSandwich',Price='190.00',Active='Yes',DateofLaunch='2017-10-25',Category='snack',FreeDelivery='No'
where id=1;



/*inserting cart values*/

insert into cart values ('4','2'),('3','1'),('2','1'),('2','3');

/*to view complete cart*/

select names,FreeDelivery,Price from menu_item join cart on productId=id


/* view cart of a particular person*/ 

select names,FreeDelivery,Price from menu_item join cart on productId=id where customerId = '1'


/*to get the totaal prices of each product of a customer*/


select names,FreeDelivery,Price, sum(price) as 'Total Price' from menu_item join cart on productId=id where customerId = '1' GROUP BY names,FreeDelivery,Price


/*To delete an order based*/

DELETE FROM cart WHERE customerId ='2' and productId='4'



