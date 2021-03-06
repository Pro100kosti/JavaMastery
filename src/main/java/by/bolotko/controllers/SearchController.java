package by.bolotko.controllers;

import by.bolotko.DB.Director;
import by.bolotko.services.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    DirectorService directorService;

    @GetMapping
    public String search(@RequestParam("search-id") Integer id, Model model) {
        Optional<Director> director = directorService.findDirector(id);
        model.addAttribute("director", director.get());
        return "searchResult";
    }

}
