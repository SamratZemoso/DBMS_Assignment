select category.name, count( * ) as rental
from rental
join inventory on rental.inventory_id = inventory.inventory_id
join film_category on inventory.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
join customer on rental.customer_id = customer.customer_id
where customer.first_name = "PATRICIA"
and customer.last_name = "JOHNSON"
group by category.name
order by count( * ) desc
limit 3;