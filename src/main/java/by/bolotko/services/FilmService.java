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

    public boolean saveFilm(Film film) {
        if (film.getName() == null || film.getRelease_date() == null
                || film.getGenre() == null) {
            return false;
        } else {
            filmRepository.save(film);
            return true;
        }
    }

    public boolean deleteFilmById(Long id){
        if (id == null || id == 0) {
            return false;
        } else {
            filmRepository.deleteById(id);
            return true;
        }
    }

    public List<Film> getAllFilms() {
        return (List<Film>) filmRepository.findAll();
    }

    public Optional<Film> findFilm(Long id) {
        return filmRepository.findById(id);
    }

    public Optional<Film> findFilmByDirectorId(Integer id) {
        return filmRepository.findById(id);
    }
}
