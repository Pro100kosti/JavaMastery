package by.bolotko.services;

import by.bolotko.DB.Film;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class FilmServiceTest {

    @Autowired
    private FilmService filmService;

    @Test
    public void saveAndDeleteFilm() {
        Film film = new Film();
        film.setName("Test_name");
        film.setRelease_date("Test_release_date");
        film.setGenre("Test_genre");

        boolean result = filmService.saveFilm(film);
        Assert.assertTrue(result);

        result = filmService.deleteFilmById(film.getId());
        Assert.assertTrue(result);
    }
}