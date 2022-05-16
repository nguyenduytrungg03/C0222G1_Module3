use quan_ly_ban_hang;
 insert into customer values(1,'Minh Quân', 10) ,(2, 'Ngọc Oanh', 20), (3, 'Hồng Hà',50);
 insert into ord_prd values(1,1, '2006-03-21', null) ,(2, 2, '2006-03-22', null), (3, 1, '2006-03-16',null);
 insert into product values(1,'Máy Giặt', 3) ,(2,'Tủ lạnh', 5), (3,'Điều Hòa',7), (4, 'Quạt',2),(5, 'Bếp Điện', 1);
 insert into order_product values(1,1, 3) ,(1,3, 7), (1,4, 2), (2,1,1),(3,1,8),(2,5, 4),(2,3,3);
 ------------------------------------------------------------------
 -- Hiển thị thông tin gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
 select ord_id, ord_date, ord_total_price  from ord_prd;
 
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách--
select customer.cus_name, product.product_name from order_product join ord_prd on ord_prd.ord_id = order_product.ord_id 
join customer on  customer.cus_id = ord_prd.cus_id
join product on product.product_id = order_product.product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào --
 select customer.cus_id, customer.cus_name from customer where customer.cus_id not in (select cus_id from ord_prd);

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select order_product.ord_id, ord_prd.ord_date, sum(ord_qty*procduct_price) giá from  order_product
join ord_prd on ord_prd.ord_id = order_product.ord_id 
join product on product.product_id =order_product.product_id
group by order_product.ord_id;
