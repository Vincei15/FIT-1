package com.example.demo;

import com.example.demo.UserRepository;
import com.example.demo.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Optional;

@RestController
@RequestMapping("/api/stats")
@CrossOrigin(origins = "*") // allow frontend to fetch data
public class StatsController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ReviewRepository reviewRepository;

    @GetMapping("/signups-today")
    public long getSignupsToday() {
        LocalDate today = LocalDate.now();
        LocalDateTime startOfDay = today.atStartOfDay();
        LocalDateTime endOfDay = today.plusDays(1).atStartOfDay();
        return userRepository.countByCreatedAtBetween(startOfDay, endOfDay);
    }

    @GetMapping("/average-rating")
    public double getAverageRating() {
        return reviewRepository.getAverageRating().orElse(0.0);
    }

    @GetMapping("/total-users")
    public long getTotalUsers() {
        return userRepository.count();
    }
}