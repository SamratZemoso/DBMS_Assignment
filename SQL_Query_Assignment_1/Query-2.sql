select film.title, count(film.title) as Rent
from film
join inventory on film.film_id=inventory.film_id
join rental on inventory.inventory_id=rental.inventory_id
join film_category on film.film_id=film_category.film_id
join category on film_category.category_id=category.category_id
where category.name = "Horror"
group by film.title
order by count(film.title) DESC
limit 3;