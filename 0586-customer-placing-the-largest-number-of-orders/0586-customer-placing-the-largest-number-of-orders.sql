/* Write your T-SQL query statement below */
select top 1 customer_number
from (select customer_number,count(customer_number) as coun from Orders
group by customer_number) as t
order by coun desc
