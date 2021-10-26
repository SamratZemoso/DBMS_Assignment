select sum( payment.amount ) as Sales
from payment
join rental on payment.rental_id = rental.rental_id
join inventory on rental.inventory_id = inventory.inventory_id
join film on inventory.film_id = film.film_id
join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
where category.name = "Animation";