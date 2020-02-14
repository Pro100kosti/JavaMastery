package by.bolotko.services;

import by.bolotko.DB.Film;
import by.bolotko.repositorys.FilmRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

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
}
