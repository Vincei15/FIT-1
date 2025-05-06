package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.Optional;

public interface ReviewRepository extends JpaRepository<Review, Long> {

    // Cast rating to double for accurate average
    @Query("SELECT AVG(CAST(r.rating AS double)) FROM Review r")
    Optional<Double> getAverageRating();
}