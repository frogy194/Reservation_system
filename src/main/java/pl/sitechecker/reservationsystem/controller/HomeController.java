package pl.sitechecker.reservationsystem.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.sitechecker.reservationsystem.repository.ServiceRepository;


@Controller
@RequestMapping("")
public class HomeController {

    @Autowired
    private ServiceRepository serviceRepository;

    @GetMapping("/home")
    public String home() {
        return "index";
    }

    @GetMapping("/services")
    public String serv(Model model) {
        model.addAttribute("allservices",serviceRepository.findAll());
        return "services";
    }

    @GetMapping("/reservation")
    public String reserv() {

        return "reservation";
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }


    @GetMapping("/adm")
    public String adm() {

        return "adm";
    }

}
