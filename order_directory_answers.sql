select cust.cus_gender , count(cust.cus_gender) as count from customer cust inner join
`order` on cust.cus_id = `order`.cus_id where `order`.ord_amount >= 3000 group by cust.cus_gender;


select `order`.*, product.pro_name from `order`, product_details, product where `order` .cus_id = 2 and `order` .prod_id = product_details.prod_id and product_details.prod_id = product.pro_id;


select supplier.* from supplier, product_details where supplier.supp_id in
(select product_details.supp_id from product_details group by product_details.supp_id having count(product_details.supp_id) > 1) group by supplier.supp_id;


select category.* from `order` inner join product_details on
`order`.prod_id = product_details.prod_id
inner join product on product.pro_id = product_details.pro_id
inner join category on category.cat_id = product.cat_id
order by `order`.ORD_AMOUNT limit 1;


select product.pro_id, product.pro_name from `order` inner join product_details on
`order` .prod_id = product_details.prod_id inner join product on product.pro_id = product_details.pro_id
where `order`.ord_date > '2021-10-5';


select cust.cus_name, cust.cus_gender from customer cust where cust.cus_name like 'A%' or cust.CUS_NAME like '&A';


select supplier.supp_id, supplier.supp_name, rating.rat_ratstars,
case
when rating.rat_ratstars > 4 then 'Genuine Supplier'
when rating.rat_ratstars > 4 then 'Average Supplier'
else 'Supplier should not be considered'
end as verdict from rating inner join supplier on supplier.supp_id = rating.supp_id;



