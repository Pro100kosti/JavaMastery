package by.bolotko.controllers;

import by.bolotko.DB.Film;
import by.bolotko.services.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/films")
public class FilmController {

    @Autowired
    private FilmService filmService;

    @GetMapping()
    public String showFilm(Model model) {
        model.addAttribute("film", filmService.getFirstTopTenFilms());
        return "films";
    }

    @GetMapping("/film/{id}")
    public String showFilmsFilm(@PathVariable Long id, Model model) {
        Optional<Film> film = filmService.findFilm(id);
        model.addAttribute("film", film.get());
        return "filmsItem";
    }
}
