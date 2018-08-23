package pl.sitechecker.reservationsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.sitechecker.reservationsystem.entity.Service;
import pl.sitechecker.reservationsystem.entity.ServiceProvider;
import pl.sitechecker.reservationsystem.repository.ServiceProviderRepository;
import pl.sitechecker.reservationsystem.repository.ServiceRepository;

import javax.validation.Path;
import javax.validation.Valid;

@Controller
@RequestMapping("/adm")
public class AdminController {

    @Autowired
    private ServiceRepository serviceRepository;

    @Autowired
    private ServiceProviderRepository serviceProviderRepository;

    @GetMapping("/addservice")
    public String addServ(Model model) {
        model.addAttribute("service", new Service());
        return "addservice";
    }

    @PostMapping("/addservice")
    @ResponseBody
    public String makeNewService(@Valid Service service, BindingResult result) {
        if (result.hasErrors()) {
            return "false";
        }
        this.serviceRepository.save(service);
        return "Success" + "<meta http-equiv=\"refresh\" content=\"3; url=http://localhost:8080/adm\" />";
    }

    @GetMapping("/editservice/{id}")
    public String editServ(@PathVariable long id, Model model) {
        model.addAttribute("service", serviceRepository.findById(id));
        return "editservice";
    }

    @PostMapping("/editservice/{id}")
    @ResponseBody
    public String editSaveService(@Valid Service service, BindingResult result) {
        if (result.hasErrors()) {
            return "false";
        }
        this.serviceRepository.save(service);
        return "Success" + "<meta http-equiv=\"refresh\" content=\"3; url=http://localhost:8080/adm\" />";
    }

    @GetMapping("/addserviceprovider")
    public String addServProv(Model model) {
        model.addAttribute("serviceprovider", new ServiceProvider());
        model.addAttribute("services",serviceRepository.findAll());
        return "addserviceprovider";
    }

    @PostMapping("/addserviceprovider")
    @ResponseBody
    public String makeNewServProv(@Valid ServiceProvider serviceProvider, BindingResult result) {
        if (result.hasErrors()) {
            System.out.println(result);
            return "false";
        }
        if (serviceProvider.getWorkingHoursMon().equals("00:00-00:00")) {
            serviceProvider.setWorkingHoursMon(null);
        }
        if (serviceProvider.getWorkingHoursTue().equals("00:00-00:00")) {
            serviceProvider.setWorkingHoursTue(null);
        }
        if (serviceProvider.getWorkingHoursWed().equals("00:00-00:00")) {
            serviceProvider.setWorkingHoursWed(null);
        }
        if (serviceProvider.getWorkingHoursThu().equals("00:00-00:00")) {
            serviceProvider.setWorkingHoursThu(null);
        }
        if (serviceProvider.getWorkingHoursFri().equals("00:00-00:00")) {
            serviceProvider.setWorkingHoursFri(null);
        }
        if (serviceProvider.getWorkingHoursSat().equals("00:00-00:00")) {
            serviceProvider.setWorkingHoursSat(null);
        }
        if (serviceProvider.getWorkingHoursSun().equals("00:00-00:00")) {
            serviceProvider.setWorkingHoursSun(null);
        }
        this.serviceProviderRepository.save(serviceProvider);
        return "Success" + "<meta http-equiv=\"refresh\" content=\"3; url=http://localhost:8080/adm\" />";
    }

}
