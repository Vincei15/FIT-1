package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService {
    @Autowired
    private ReviewRepository reviewRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ServiceRepository serviceRepository;

    public Review saveReview(Review review) {
        return reviewRepository.save(review);
    }

    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }

    public Review getReviewById(Long id) {
        return reviewRepository.findById(id).orElse(null);
    }

    public void deleteReview(Long id) {
        reviewRepository.deleteById(id);
    }

    public Review flagReview(Long reviewId) {
        Review review = getReviewById(reviewId);
        if (review != null) {
            review.setFlagged(true);
            return reviewRepository.save(review);
        }
        return null;
    }

    public Review respondToReview(Long reviewId, String responseText) {
        Review review = getReviewById(reviewId);
        if (review != null) {
            review.setResponse(responseText);
            return reviewRepository.save(review);
        }
        return null;
    }
}
