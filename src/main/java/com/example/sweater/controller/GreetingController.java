package com.example.sweater.controller;

import com.example.sweater.domain.Film;
import com.example.sweater.repos.FilmRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/")
public class GreetingController {


    @Autowired
    private FilmRepo filmRepo;

    @GetMapping("/")
    public String greeting(@RequestParam(name = "name", required = false, defaultValue = "World") String name, Map<String, Object> model) {
        model.put("name", name);
        return "greeting";
    }

    @GetMapping("/films")
    @Transactional(readOnly = true)
    public String hello(Model model) {
        model.addAttribute("films", filmRepo.findAll());
        return "films";
    }

    @PostMapping("/findFilms")
    @Transactional
    public String findFilm(@RequestParam String name, Model model) {
        model.addAttribute("films", filmRepo.findByName(name));
        return "search";
    }

    @GetMapping("/films/{id}")
    @Transactional(readOnly = true)
    public String getById(@PathVariable("id") long id, Model model) {
        Film film = filmRepo.findById(id).get();
        model.addAttribute("film", film);
        return "showFilm";
    }
}

