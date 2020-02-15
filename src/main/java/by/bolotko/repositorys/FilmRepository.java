package by.bolotko.repositorys;

import by.bolotko.DB.Film;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface FilmRepository extends CrudRepository<Film, Integer> {
    Optional<Film> findById(Long id);
}
