package by.bolotko.addCinema;

import by.bolotko.DB.Film;
import by.bolotko.services.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/save-film")
public class AddFilmController {

    @Autowired
    FilmService filmService;

    @GetMapping
    public ModelAndView showAddFilmView() {
        ModelAndView view = new ModelAndView();
        view.setViewName("addFilm");
        return view;
    }

    @PostMapping
    public String submitAddFilmForm(@ModelAttribute Film film) {
        if (!filmService.saveFilm(film)) {
            return "addError";
        } else {
            return "addOk";
        }

    }
}
