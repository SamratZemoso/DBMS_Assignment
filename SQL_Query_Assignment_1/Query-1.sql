select film.film_id, title, rating
from film
join film_category on film.film_id=film_category.film_id
join category on film_category.category_id=category.category_id
where rating = "PG-13"
and category.name="Comedy";