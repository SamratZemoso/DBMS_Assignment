select actor.first_name, actor.last_name, COUNT(*) AS TotalFilms
from actor
join film_actor on actor.actor_id=film_actor.actor_id
join film on film_actor.film_id=film.film_id
where actor.first_name="SEAN"
and actor.last_name="WILLIAMS";
