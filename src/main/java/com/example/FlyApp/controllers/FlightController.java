package com.example.FlyApp.controllers;

import com.example.FlyApp.models.Flight;
import com.example.FlyApp.service.FlightService;
import com.example.FlyApp.service.RunwayService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class FlightController {
    private final FlightService flightService;
    private final RunwayService runwayService;

    @GetMapping("/")
    public String flights(@RequestParam(name="plane", required = false) String plane, Model model){
        model.addAttribute("flights", flightService.listFlights(plane));
        return "flights";
    }

    @GetMapping("/flight/{id}")
    public String infoFlight(@PathVariable Long id, Model model){
        model.addAttribute("flight", flightService.getFlightById(id));

        return "flight-info";
    }

    @PostMapping("/flight/create")
    public String createFlight(Flight flight){
        flightService.saveFlight(flight);
        runwayService.addToLine(flight);
        return "redirect:/";
    }

    @PostMapping("/flight/delete/{id}")
    public String deleteFlight(@PathVariable Long id){
        flightService.deleteFlight(id);
        return "redirect:/";
    }

}
