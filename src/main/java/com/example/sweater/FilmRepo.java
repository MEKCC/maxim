package com.example.sweater;

import com.example.sweater.Film;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FilmRepo extends JpaRepository<Film, Long> {


}
