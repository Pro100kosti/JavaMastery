package by.bolotko.controllers;

import by.bolotko.DB.Director;
import by.bolotko.services.DirectorService;
import by.bolotko.services.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("/directors")
public class DirectorController {

    @Autowired
    private DirectorService directorService;

    @Autowired
    private FilmService filmService;

    @GetMapping()
    public String showDirectors(Model model) {
        model.addAttribute("director", directorService.getFirstTopTenDirectors());
        return "directors";
    }

    @GetMapping("/director/{id}")
    public String showDirectorsDirector(@PathVariable Integer id, Model model) {
        Optional<Director> director = directorService.findDirector(id);
        model.addAttribute("director", director.get());
        return "directorsItem";
    }
}
