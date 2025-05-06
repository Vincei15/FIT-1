package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;
import com.example.demo.util.JwtUtil;



@RestController
@RequestMapping("/api/users")
@CrossOrigin(origins = {"http://localhost:8080"})


public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private JwtUtil jwtUtil;

    @GetMapping
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        return userService.getUserById(id);
    }

    @PostMapping
    public User createUser(@RequestBody User user) {
        return userService.saveUser(user);
    }

    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
    }

    @PutMapping("/{id}")
    public User updateUser(@PathVariable Long id, @RequestBody User user) {
        return userService.updateUser(id, user);
    }

    @PostMapping("/{userId}/subscribe/{serviceId}")
    public User subscribeToService(@PathVariable Long userId, @PathVariable Long serviceId) {
        return userService.subscribeToService(userId, serviceId);
    }

    @PostMapping("/login")
    public ResponseEntity<Object> loginUser(@RequestBody LoginRequest loginRequest) {

        Optional<User> userOptional = userService.findByEmail(loginRequest.getEmail());

        User user = userOptional.get();

        String token = jwtUtil.generateToken(user.getEmail());

        // Return the token and user data in the response
        return ResponseEntity.ok(new LoginResponse("Login successful", token, user));
    }
}
