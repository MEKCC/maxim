package com.example.sweater.controller;

import com.example.sweater.domain.Film;
import com.example.sweater.repos.FilmRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/filmsEdit")
@PreAuthorize("hasAuthority('ADMIN')")
@Transactional(readOnly = true)
public class FilmController {

    @Autowired
    private FilmRepo filmRepo;

    @GetMapping
    public String allFilms(Model model) {
        model.addAttribute("films", filmRepo.findAll());
        return "allFilms";
    }

    @GetMapping("{id}")
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
    @Transactional
    public String addFilm(@ModelAttribute("film") Film film) {
        filmRepo.save(film);
        return "redirect:/filmsEdit";
    }

    @GetMapping("/delete/{id}")
    @Transactional
    public String deleteFilm(@PathVariable("id") long id) {
        filmRepo.deleteById(id);
        return "redirect:/filmsEdit";
    }

    @GetMapping("/update/{id}")
    @Transactional
    public String update(@PathVariable("id") long id, Model model) {
        Film film = filmRepo.findById(id).get();
        model.addAttribute("film", film);
        return "editFilm";
    }

    @PostMapping("/updateFilm")
    @Transactional
    public String updateFilm(@ModelAttribute("film") Film film) {
        filmRepo.save(film);
        return "redirect:/filmsEdit/";
    }
}
