package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api/reviews")
public class ReviewController {
    @Autowired
    private ReviewService reviewService;


    @GetMapping
    public List<Review> getAllReviews() {
        return reviewService.getAllReviews();
    }

    @GetMapping("/{id}")
    public Review getReviewById(@PathVariable Long id) {
        return reviewService.getReviewById(id);
    }

    @PostMapping
    public Review createReview(@RequestBody Review review) {
        return reviewService.saveReview(review);
    }

    @DeleteMapping("/{id}")
    public void deleteReview(@PathVariable Long id) {
        reviewService.deleteReview(id);
    }

    @PutMapping("/{id}/flag")
    public Review flagReview(@PathVariable Long id) {
        return reviewService.flagReview(id);
    }

    @PutMapping("/{id}/respond")
    public Review respondToReview(@PathVariable Long id, @RequestBody ResponseWrapper wrapper) {
        return reviewService.respondToReview(id, wrapper.getResponse());
    }

    public static class ResponseWrapper {
        private String response;
        public String getResponse() { return response; }
        public void setResponse(String response) { this.response = response; }
    }





}
