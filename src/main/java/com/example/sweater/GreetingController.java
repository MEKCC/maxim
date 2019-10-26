package com.example.sweater;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/")
public class GreetingController {

    @Autowired
    private FilmRepo filmRepo;

    @GetMapping("/")
    public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Map<String, Object> model) {
        model.put("name", name);
        return "greeting";
    }

    @GetMapping("/films")
    public String hello(Model model) {
        model.addAttribute("films", filmRepo.findAll());
        return "films";
    }

    @PostMapping("/films")
    public String add(@ModelAttribute Film film) {
        filmRepo.save(film);
        return "redirect:/films";
    }

    @GetMapping("/films/{id}")
    public String getById(@PathVariable("id") long id, Model model) {
        Film film = filmRepo.findById(id).get();
        model.addAttribute("film", film);
        return "showFilm";
    }

    @GetMapping("/addFilm")
    public String createFilmPage() {
        return "createFilm";
    }

    @PostMapping("/addFilm")
    public String addFilm(@ModelAttribute("film") Film film) {
        filmRepo.save(film);
        return "redirect:/films";
    }

    @GetMapping("/delete/{id}")
    public String deleteFilm(@PathVariable("id") long id) {
        filmRepo.deleteById(id);
        return "redirect:/films";
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable("id") long id, Model model) {
        Film film = filmRepo.findById(id).get();
        model.addAttribute("film", film);
        return "editFilm";
    }

    @PostMapping("/updateFilm")
    public String updateFilm(@ModelAttribute("film") Film film) {
        filmRepo.save(film);
        return "redirect:/films/" + film.getId();
    }
}

