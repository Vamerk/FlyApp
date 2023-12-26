package com.example.FlyApp.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Data
@Entity
@Table(name = "Flight")
@AllArgsConstructor
@NoArgsConstructor
public class Flight {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "airline")
    private String airline;

    @Column(name = "plane")
    private String plane;

    @Column(name = "arrivalTime")
    private LocalDateTime arrivalTime;

    @Column(name = "departureTime")
    private LocalDateTime departureTime;

    @Column(name = "type")
    private String type;

    @Column(name = "status")
    private int status = 0;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @JoinColumn(name = "runway_id") // Добавлено указание на столбец внешнего ключа
    private Runway runway;

    public Flight(String airline, String plane, String arrivalTime, String departureTime, String type) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        this.airline = airline;
        this.plane = plane;
        this.arrivalTime = LocalDateTime.parse(arrivalTime, formatter);
        this.departureTime = LocalDateTime.parse(departureTime, formatter);
        this.type = type;
    }
}
