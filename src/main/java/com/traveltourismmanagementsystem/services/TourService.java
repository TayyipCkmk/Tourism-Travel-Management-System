package com.traveltourismmanagementsystem.services;

import com.traveltourismmanagementsystem.model.Tour;

import java.util.List;

public interface TourService {
    public List<Tour> getAllFlights();
    public Tour getFlightById(int id);
    public void addFlight(Tour tour);
    public void deleteFlight(int id);
    public Tour updateFlight(Tour tour, int id);
}
