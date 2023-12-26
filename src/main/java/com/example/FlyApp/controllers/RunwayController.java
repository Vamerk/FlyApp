package com.example.FlyApp.controllers;

import com.example.FlyApp.service.FlightService;
import com.example.FlyApp.service.RunwayService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class RunwayController {
    private final FlightService flightService;
    private final RunwayService runwayService;

    @GetMapping("/runway")
    public String runways(Model model){
        model.addAttribute("runways", runwayService);
        return "runways";
    }

}


