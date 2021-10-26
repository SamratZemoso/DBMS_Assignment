select count( * ) as Rented
from rental
join inventory on rental.inventory_id = inventory.inventory_id
join film on inventory.film_id = film.film_id
join customer on rental.customer_id = customer.customer_id
where customer.first_name = "SUSAN"
and customer.last_name = "WILSON"
and film.rating = "R";