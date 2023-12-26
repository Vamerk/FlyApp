package com.example.FlyApp.service;

import com.example.FlyApp.models.Flight;
import com.example.FlyApp.repositories.FlightRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class FlightService {
    private final FlightRepository flightRepository;

    public List<Flight> listFlights(String plane) {
        if (plane != null) {
            return flightRepository.findByPlane(plane);
        }
        return flightRepository.findAll();
    }

    public void saveFlight(Flight flight) {
        log.info("Saving new {}", flight);
        flightRepository.save(flight);
    }

    public void deleteFlight(Long id) {
        flightRepository.deleteById(id);
    }

    public Flight getFlightById(Long id) {
        return flightRepository.findById(id).orElse(null);
    }

    public void searchRunway(List<Flight> flights) {
        // Реализуйте логику поиска ВПП для перелетающих самолетов
    }

}
