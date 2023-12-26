package com.example.FlyApp.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@Table(name = "runway")
@AllArgsConstructor
@NoArgsConstructor
public class Runway {

    @Id
    @Column(name = "id")
    private long id;

    @Column(name = "maxPlane")
    private int maxPlane;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "runway")
    private List<Flight> planes = new ArrayList<>();

    public Runway(int id, int maxPlane) {
        this.id = id;
        this.maxPlane = maxPlane;
    }

    public void addPlaneToRunway(Flight plane) {
        plane.setRunway(this);
        planes.add(plane);
    }

    public int freeLine() {
        if (planes != null) {
            return maxPlane - planes.size();
        } else {
            return maxPlane;
        }
    }
}
