package by.bolotko;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(){
        return "index";
    }

    @RequestMapping(value = "/greeting", method = RequestMethod.GET)
    public String greeting() {
        return "greeting";
    }
}
