package by.bolotko.services;

import by.bolotko.DB.Film;
import by.bolotko.repositorys.FilmRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class FilmService {

    private final FilmRepository filmRepository;

    public FilmService(FilmRepository filmRepository) {
        this.filmRepository = filmRepository;
    }

    public void saveFilm(Film film) {
        filmRepository.save(film);
    }

    public List<Film> getFirstTopTenFilms() {
        return (List<Film>) filmRepository.findAll();
    }

    public Optional<Film> findFilm(Long id) {
        return filmRepository.findById(id);
    }
    public Optional<Film> findFilmByDirectorId(Integer id) {
        return filmRepository.findById(id);
    }
}
