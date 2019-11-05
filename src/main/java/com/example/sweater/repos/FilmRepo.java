package com.example.sweater.repos;

import com.example.sweater.domain.Film;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FilmRepo extends JpaRepository<Film, Long> {

    List<Film> findByName(String name);
}
