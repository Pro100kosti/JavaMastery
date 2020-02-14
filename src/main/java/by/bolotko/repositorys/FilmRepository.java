package by.bolotko.repositorys;

import by.bolotko.DB.Film;
import org.springframework.data.repository.CrudRepository;

public interface FilmRepository extends CrudRepository<Film, Integer> {
}
