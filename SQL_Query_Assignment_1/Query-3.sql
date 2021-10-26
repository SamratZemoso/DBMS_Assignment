select customer.customer_id, customer.first_name, customer.last_name, count(customer.customer_id) as Rent
from customer
join rental on customer.customer_id = rental.customer_id
join inventory on rental.inventory_id = inventory.inventory_id
join film_category on inventory.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
join address on customer.address_id = address.address_id
join city on address.city_id = city.city_id
join country on city.country_id = country.country_id
where category.name = "Sports"
and country.country = "India"
group by customer.customer_id;