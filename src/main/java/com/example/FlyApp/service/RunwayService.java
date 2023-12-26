package com.example.FlyApp.service;

import com.example.FlyApp.models.Flight;
import com.example.FlyApp.models.Runway;
import com.example.FlyApp.repositories.FlightRepository;
import com.example.FlyApp.repositories.RunwayRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class RunwayService {
    private final FlightRepository flightRepository;
    private final RunwayRepository runwayRepository;
    private List<Runway> runways = new ArrayList<>();
    {
        runways.add(new Runway(1, 2));
        runways.add(new Runway(2, 4));
        runways.add(new Runway(3, 6));
        runways.add(new Runway(4, 3));
    }

    public List<Runway> listRunways(int id){
        if (id == 0) runwayRepository.findById(id);
        return runwayRepository.findAll();
    }


    public void saveFlight(Runway runway, Flight flight){
        if (runway.freeLine() > 0){
            runway.addPlaneToRunway(flight);
        }
        else {
            log.info("not Saving new {}", flight);
        }

    }
    public void addToLine(Flight flight){
        for (Runway runway : runways){
            System.out.println(runway.getId() + " " + flight.getId() + "\tfreeline: " + runway.freeLine());
            if (runway.freeLine() > 0){
                runway.addPlaneToRunway(flight);
                System.out.println("addfly line - " + flight.getRunway());
                break;
            }
            else {
                System.out.println("Самолет в ожидании");
                continue;
            }

        }
    }


}
