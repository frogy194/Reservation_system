package pl.sitechecker.reservationsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.awt.print.Book;


@Controller
@RequestMapping("/home")
public class HomeController {

    @GetMapping("/")
    public String homek() {
        return "index";
    }


}
