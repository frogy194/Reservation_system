package pl.sitechecker.reservationsystem.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.sitechecker.reservationsystem.entity.Order;
import pl.sitechecker.reservationsystem.entity.Service;
import pl.sitechecker.reservationsystem.entity.ServiceProvider;
import pl.sitechecker.reservationsystem.helpers.WorkingHours;
import pl.sitechecker.reservationsystem.repository.OrderRepository;
import pl.sitechecker.reservationsystem.repository.ServiceProviderRepository;
import pl.sitechecker.reservationsystem.repository.ServiceRepository;

import javax.validation.Valid;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("")
public class HomeController {

    @Autowired
    private ServiceRepository serviceRepository;
    @Autowired
    private ServiceProviderRepository serviceProviderRepository;
    @Autowired
    private OrderRepository orderRepository;

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

        List<Service> services = serviceRepository.findAll();
        model.addAttribute("services", services);
        int monMin = 0, monMax = 0, tueMin = 0, tueMax = 0, wedMin = 0, wedMax = 0, thuMax = 0, thuMin = 0, friMax = 0, friMin = 0, satMin = 0, satMax = 0, sunMax = 0, sunMin = 0;
        List<Integer[]> list = new ArrayList<>();

        for (Service s : services) {

            List<Integer> monArray = new ArrayList<>(), tueArray = null, wedArray = null, thuArray = null, friArray = null, satArray = null, sunArray = null;
            int monStart = 24, monEnd = 0, tueStart = 24, tueEnd = 0,wedStart = 24, wedEnd = 0,thuStart = 24, thuEnd = 0,friStart = 24, friEnd = 0,satStart = 24, satEnd = 0,sunStart = 24, sunEnd = 0;
            for (ServiceProvider x : serviceProviderRepository.findAllByServices(s)) {
                //@TODO make method in WorkingHours for this bullshit
                if (x.getWorkingHoursMon() != null) {
                    monMin = Integer.parseInt(x.getWorkingHoursMon().substring(0, 2));
                    monMax = Integer.parseInt(x.getWorkingHoursMon().substring(6, 8));

                    if (monMin < monStart) {
                        monStart = monMin;
                    }
                    if (monMax > monEnd) {
                        monEnd = monMax;
                    }
                }
                if (monStart == 24 && monEnd == 0){
                    monStart = 0;
                    monEnd = 0;
                }

                if (x.getWorkingHoursTue() != null) {
                    tueMin = Integer.parseInt(x.getWorkingHoursTue().substring(0, 2));
                    tueMax = Integer.parseInt(x.getWorkingHoursTue().substring(6, 8));

                    if (tueMin < tueStart) {
                        tueStart = tueMin;
                    }
                    if (tueMax > tueEnd) {
                        tueEnd = tueMax;
                    }
                }
                if (tueStart == 24 && tueEnd == 0){
                    tueStart = 0;
                    tueEnd = 0;
                }
                if (x.getWorkingHoursWed() != null) {
                    wedMin = Integer.parseInt(x.getWorkingHoursWed().substring(0, 2));
                    wedMax = Integer.parseInt(x.getWorkingHoursWed().substring(6, 8));

                    if (wedMin < wedStart) {
                        wedStart = wedMin;
                    }
                    if (wedMax > wedEnd) {
                        wedEnd = wedMax;
                    }
                }
                if (wedStart == 24 && wedEnd == 0){
                    wedStart = 0;
                    wedEnd = 0;
                }
                if (x.getWorkingHoursThu() != null) {
                    thuMin = Integer.parseInt(x.getWorkingHoursThu().substring(0, 2));
                    thuMax = Integer.parseInt(x.getWorkingHoursThu().substring(6, 8));

                    if (thuMin < thuStart) {
                        thuStart = thuMin;
                    }
                    if (thuMax > thuEnd) {
                        thuEnd = thuMax;
                    }
                }
                if (thuStart == 24 && thuEnd == 0) {
                    thuStart = 0;
                    thuEnd = 0;
                }
                if (x.getWorkingHoursFri() != null) {
                    friMin = Integer.parseInt(x.getWorkingHoursFri().substring(0, 2));
                    friMax = Integer.parseInt(x.getWorkingHoursFri().substring(6, 8));

                    if (friMin < friStart) {
                        friStart = friMin;
                    }
                    if (friMax > friEnd) {
                        friEnd = friMax;
                    }
                }
                if (friStart == 24 && friEnd == 0){
                    friStart = 0;
                    friEnd = 0;
                }
                if (x.getWorkingHoursSat() != null) {
                    satMin = Integer.parseInt(x.getWorkingHoursSat().substring(0, 2));
                    satMax = Integer.parseInt(x.getWorkingHoursSat().substring(6, 8));

                    if (satMin < satStart) {
                        satStart = satMin;
                    }
                    if (satMax > satEnd) {
                        satEnd = satMax;
                    }
                }
                if (satStart == 24 && satEnd == 0) {
                    satStart = 0;
                    satEnd = 0;
                }
                if (x.getWorkingHoursSun() != null) {
                    sunMin = Integer.parseInt(x.getWorkingHoursSun().substring(0, 2));
                    sunMax = Integer.parseInt(x.getWorkingHoursSun().substring(6, 8));

                    if (sunMin < sunStart) {
                        sunStart = sunMin;
                    }
                    if (sunMax > sunEnd) {
                        sunEnd = sunMax;
                    }
                }
                if (sunStart == 24 && sunEnd == 0) {
                    sunStart = 0;
                    sunEnd = 0;
                }


            }
            monArray = WorkingHours.getSeparetedHours(monStart, monEnd);
            model.addAttribute("hoursMondayOnService"+s.getId(), monArray);
            tueArray = WorkingHours.getSeparetedHours(tueStart, tueEnd);
            model.addAttribute("hoursTuesdayOnService"+s.getId(), tueArray);
            wedArray = WorkingHours.getSeparetedHours(wedStart, wedEnd);
            model.addAttribute("hoursWednesdayOnService"+s.getId(), wedArray);
            thuArray = WorkingHours.getSeparetedHours(thuStart, thuEnd);
            model.addAttribute("hoursThursdayOnService"+s.getId(), thuArray);
            friArray = WorkingHours.getSeparetedHours(friStart, friEnd);
            model.addAttribute("hoursFridayOnService"+s.getId(), friArray);
            satArray = WorkingHours.getSeparetedHours(satStart, satEnd);
            model.addAttribute("hoursSaturdayOnService"+s.getId(), satArray);
            sunArray = WorkingHours.getSeparetedHours(sunStart, sunEnd);
            model.addAttribute("hoursSundayOnService"+s.getId(), sunArray);

        }

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

    @GetMapping("/reservation/add/{month}/{day}/{year}/{time}/{serviceid}")
    public String addOrder(@PathVariable int month,
                           @PathVariable int day,
                           @PathVariable int year,
                           @PathVariable String time,
                           @PathVariable long serviceid,
                           Model model) {
        Order order = new Order();
        order.setDate(month + "/" + day + "/" + year);
        order.setTime(time);
        order.setService(this.serviceRepository.findById(serviceid));
        model.addAttribute("order",order);
        model.addAttribute("services", this.serviceRepository.findAll());
        return "addorder";
    }

    @PostMapping("/reservation/add/*/*/*/*/*")
    @ResponseBody
    public String acceptOrder(@Valid Order order, BindingResult result) {
        if (result.hasErrors()) {
            System.out.println(result);
            return "false";
        }
        this.orderRepository.save(order);
        return "succes" + "<meta http-equiv=\"refresh\" content=\"3; url=http://localhost:8080/reservation\" />";
    }

    @GetMapping("/sudoku")
    public String sudo(){
        return "sudoku";
    }

    @GetMapping("/main")
    public String fast(){
        return "main";
    }
}
