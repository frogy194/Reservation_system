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

    @PostMapping("/reservation")
    public String sendBookedMinutes (@RequestParam("dayOfMonth") int dayOfMonth,@RequestParam("dayOfWeek") int dayOfWeek,@RequestParam("month") int month,@RequestParam("year") int year,@RequestParam("selectedserv") int selectedserv, Model model) {
//        System.out.println(dayOfWeek);
//        System.out.println(dayOfMonth);
//        System.out.println(month);
//        System.out.println(year);
//        System.out.println(selectedserv);
//     test
        List<Service> services = serviceRepository.findAll();
        model.addAttribute("services", services);
        return "reservation";
    }

    @GetMapping("/main")
    public String fast(){
        return "calendar";
    }
}
