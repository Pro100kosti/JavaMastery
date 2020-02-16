package by.bolotko.addCinema;

import by.bolotko.DB.Director;
import by.bolotko.services.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/save-director")
public class AddDirectorController {

    @Autowired
    DirectorService directorService;

    @GetMapping
    public ModelAndView showAddDirectorView() {
        ModelAndView view = new ModelAndView();
        view.setViewName("addDirector");
        return view;
    }

    @PostMapping
    public String submitAddDirectorForm(@ModelAttribute Director director){
        if (!directorService.saveDirector(director)) {
            return "addError";
        }
        return "addOk";
    }
}
