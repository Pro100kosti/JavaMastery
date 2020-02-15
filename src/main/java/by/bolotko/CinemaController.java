package by.bolotko;

import by.bolotko.DB.Director;
import by.bolotko.DB.Film;
import by.bolotko.services.DirectorService;
import by.bolotko.services.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
public class CinemaController {

    @Autowired
    private DirectorService directorService;

    @Autowired
    private FilmService filmService;

    @GetMapping("/save-director2")
    public String saveDirector(@RequestParam String first_name, @RequestParam String last_name,
                               @RequestParam String birth_date){
        Director director = new Director(first_name, last_name, birth_date);
        directorService.saveDirector(director);
        return "addOk";
    }

    @GetMapping("/save-film2")
    public String saveFilm(@RequestParam String name, @RequestParam String release_date,
                               @RequestParam String genre, @RequestParam Director director_id){
        Film film = new Film(name, release_date, genre, director_id);
        filmService.saveFilm(film);
        return "Film is saved";
    }

}
