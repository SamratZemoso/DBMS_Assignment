select count(*) as Documentary_Deleted
from film
join film_category on film.film_id=film_category.film_id
join category on film_category.category_id = category.category_id
where category.name = "Documentary"
and film.special_features like "%Deleted Scenes%";