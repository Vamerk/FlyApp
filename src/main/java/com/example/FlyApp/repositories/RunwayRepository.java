package com.example.FlyApp.repositories;

import com.example.FlyApp.models.Flight;
import com.example.FlyApp.models.Runway;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RunwayRepository extends JpaRepository<Runway, Long> {
    List<Runway> findById(int id);
}
