package com.example.FlyApp.repositories;

import com.example.FlyApp.models.Flight;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FlightRepository extends JpaRepository<Flight, Long>{
    List<Flight> findByPlane(String plane);
}
