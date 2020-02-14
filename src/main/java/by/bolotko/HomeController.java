package by.bolotko;

import by.bolotko.DB.Director;
import by.bolotko.services.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class HomeController {

    @Autowired
    private DirectorService directorService;

    @GetMapping("/save-director")
    public String saveDirector(@RequestParam String first_name, @RequestParam String last_name,
                               @RequestParam String birth_date){
        Director director = new Director(first_name, last_name, birth_date);
        directorService.saveDirector(director);
        return "Director is saved";
    }
}
