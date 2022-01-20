package com.traveltourismmanagementsystem.services;

import com.traveltourismmanagementsystem.model.Tour;
import com.traveltourismmanagementsystem.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional

public class TourServiceImplementation implements TourService {

    @Autowired
    TourRepository tourRepository;

    @Override
    public List<Tour> getAllFlights() {
        return (List<Tour>) tourRepository.findAll();
    }

    @Override
    public Tour getFlightById(int id) {
        return tourRepository.findById(id).get();
    }

    @Override
    public void addFlight(Tour tour) {
        tourRepository.save(tour);
    }

    @Override
    public void deleteFlight(int id) {
        tourRepository.deleteById(id);
    }

    @Override
    public Tour updateFlight(Tour tour1, int id) {
        tourRepository.deleteById(id);
        Tour tour = tourRepository.save(tour1);

        return tour;
    }
}
