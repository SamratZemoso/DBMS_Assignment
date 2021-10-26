select customer.first_name, customer.last_name 
from customer
join rental on customer.customer_id = rental.customer_id
join inventory on rental.inventory_id = inventory.inventory_id
join film_actor on inventory.film_id = film_actor.film_id
join actor on film_actor.actor_id = actor.actor_id
join address on customer.address_id = address.address_id
join city on address.city_id = city.city_id
join country on city.country_id = country.country_id
where country.country = "Canada"
and actor.first_name = "NICK"
and actor.last_name = "WAHLBERG"
group by customer.customer_id;
