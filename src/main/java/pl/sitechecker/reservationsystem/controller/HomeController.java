package pl.sitechecker.reservationsystem.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.sitechecker.reservationsystem.entity.Service;
import pl.sitechecker.reservationsystem.entity.ServiceProvider;
import pl.sitechecker.reservationsystem.repository.ServiceProviderRepository;
import pl.sitechecker.reservationsystem.repository.ServiceRepository;

import java.util.List;


@Controller
@RequestMapping("")
public class HomeController {

    @Autowired
    private ServiceRepository serviceRepository;
    @Autowired
    private ServiceProviderRepository serviceProviderRepository;

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
    public String reserv(Model model) {
        int start = 24, end = 0;
        List<Service> services = serviceRepository.findAll();
        model.addAttribute("services", services);
        int min = 0, max = 0;
        for (Service s : services) {
            for (ServiceProvider x : serviceProviderRepository.findAllByServices(s)) {
                if (x.getWorkingHoursMon() != null) {
                    min = Integer.parseInt(x.getWorkingHoursMon().substring(0,2));
                    max = Integer.parseInt(x.getWorkingHoursMon().substring(6,8));
                    if (min < start) {
                        start = min;
                    }
                    if (max > end) {
                        end = max;
                    }
                }
            }
        }
        int[] elo = {start,end};
        model.addAttribute("nice", elo);

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
