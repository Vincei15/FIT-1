-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2025 at 05:12 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FIT`
--

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewid` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` int NOT NULL,
  `serviceid` bigint DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `userid` bigint DEFAULT NULL,
  `flagged` bit(1) NOT NULL,
  `response` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewid`, `created_at`, `details`, `rating`, `serviceid`, `updated_at`, `userid`, `flagged`, `response`) VALUES
(14, '2025-05-02 16:07:16.786000', 'Amazing yoga plan', 5, 3, '2025-05-02 16:07:16.786000', 31, b'0', 'Thanks for the feedback!'),
(15, '2025-05-02 16:13:51.778000', 'The Yoga plan was okay. Nothing too special', 2, 3, '2025-05-02 16:13:51.778000', 29, b'1', NULL),
(16, '2025-05-02 17:35:37.280000', 'Great Diet Plan!', 5, 11, '2025-05-02 17:35:37.280000', 31, b'0', 'Thanks for the feedback!'),
(17, '2025-05-02 18:22:30.678000', 'Excellent Diet Plan! I\'ve already lost 10 pounds. ', 5, 13, '2025-05-02 18:22:30.678000', 31, b'0', 'Thanks for the feedback! Congrats on the weight loss!!'),
(18, '2025-05-02 18:27:18.672000', 'Great Strength Training Plan! I\'ve put on so much muscle!', 5, 17, '2025-05-02 18:27:18.672000', 31, b'0', 'We love to hear that!!'),
(19, '2025-05-02 19:01:03.562000', 'That food is Nasty!!', 1, 12, '2025-05-02 19:01:03.562000', 29, b'1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_entity`
--

CREATE TABLE `service_entity` (
  `serviceid` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `details` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_entity`
--

INSERT INTO `service_entity` (`serviceid`, `created_at`, `details`, `updated_at`, `name`) VALUES
(3, '2025-03-31 18:22:41.795000', 'Mountain Pose (Tadasana) – Stand tall, feet together, arms by your side, and focus on posture and breath.\n\n2. Downward-Facing Dog (Adho Mukha Svanasana) – Hands and feet on the mat, hips lifted, forming an inverted \'V\' shape.\n\n3. Child’s Pose (Balasana) – Knees wide, big toes touching, stretch arms forward and rest forehead on the mat.\n\n4. Cat-Cow Stretch (Marjaryasana-Bitilasana) – Alternate between rounding and arching your back while on hands and knees.\n\n5. Warrior I (Virabhadrasana I) – Step one foot forward into a lunge, arms raised overhead.\n\n6. Tree Pose (Vrikshasana) – Stand on one leg with the other foot resting on the inner thigh or calf.\n\n7. Seated Forward Bend (Paschimottanasana) – Sit with legs straight and fold forward, reaching for toes.', '2025-05-02 17:21:49.517000', NULL),
(4, '2025-03-31 18:22:57.157000', 'Strength Training', '2025-03-31 18:22:57.157000', NULL),
(5, '2025-03-31 18:23:06.892000', 'Diet Plan', '2025-03-31 18:23:06.892000', NULL),
(8, '2025-04-03 20:16:38.916000', 'Random', '2025-04-03 20:16:38.916000', NULL),
(9, '2025-05-02 17:11:01.042000', 'Warrior II (Virabhadrasana II) – Similar to Warrior I but with arms extended outward.\n\n2. Triangle Pose (Trikonasana) – Extend one leg out, reach one arm toward the ground, and the other toward the sky.\n\n3. Crow Pose (Bakasana) – Balance on hands with knees resting on upper arms.\n\n4. Boat Pose (Navasana) – Sit on the floor, lift legs, and balance on your tailbone.\n\n5. Half Moon Pose (Ardha Chandrasana) – Balance on one leg with the other lifted and one arm reaching to the ground.\n\n6.Camel Pose (Ustrasana) – Kneel and arch backward, reaching for heels. \n\n7. Seated Twist (Ardha Matsyendrasana) – Sit with one leg bent over the other and twist the torso.', '2025-05-02 17:11:01.042000', NULL),
(10, '2025-05-02 17:19:08.220000', 'Handstand (Adho Mukha Vrksasana) – Balance upside down on your hands.\n\n2. Forearm Stand (Pincha Mayurasana) – Like a handstand but on forearms.\n\n3. Scorpion Pose (Vrschikasana) – In a forearm stand, bend your back and bring feet toward your head.\n\n4. Firefly Pose (Tittibhasana) – Lift both legs in front of you while balancing on hands. \n\n5. King Pigeon Pose (Eka Pada Rajakapotasana) – Deep backbend with one leg folded in front and the other reaching overhead. \n\n6. Peacock Pose (Mayurasana) – Balance on hands with the body parallel to the ground.\n\n7. Lotus Headstand (Padmasana Sirsasana) – Perform a headstand with legs in lotus position.', '2025-05-02 17:19:08.220000', NULL),
(11, '2025-05-02 17:27:04.037000', '<strong>Breakfast</strong><ul><li>2 boiled eggs, whole-wheat toast, and avocado (350 cal)</li><li>Greek yogurt, mixed berries, and granola (350 cal)</li><li>Oatmeal with chia seeds, banana, and almonds (350 cal)</li></ul><br><strong>Lunch</strong><ul><li>Grilled chicken salad with olive oil dressing (500 cal)</li><li>Quinoa bowl with roasted veggies and tofu (500 cal)</li><li>Turkey wrap with hummus and veggies (500 cal)</li></ul><br><strong>Dinner</strong><ul><li>Baked salmon with quinoa and steamed broccoli (600 cal)</li><li>Stir-fried shrimp with brown rice and mixed greens (600 cal)</li><li>Lentil soup with whole-grain crackers (600 cal)</li></ul><br><strong>Snacks</strong><ul><li>Almonds (100 cal)</li><li>Apple with peanut butter (150 cal)</li></ul>', '2025-05-02 17:33:42.034000', NULL),
(12, '2025-05-02 17:39:45.234000', '<strong>Breakfast</strong><ul><li>Scrambled eggs with spinach and whole-grain toast (300 cal)</li><li>Protein smoothie (almond milk, banana, protein powder, peanut butter) (300 cal)</li><li>Cottage cheese with nuts and berries (300 cal)</li></ul><br><strong>Lunch</strong><ul><li>Grilled chicken with roasted sweet potatoes and asparagus (450 cal)</li><li>Chickpea and veggie stir-fry with brown rice (450 cal)</li><li>Tuna salad lettuce wraps with avocado (450 cal)</li></ul><br><strong>Dinner</strong><ul><li>Baked cod with quinoa and roasted Brussels sprouts (550 cal)</li><li>Turkey meatballs with zucchini noodles and marinara sauce (550 cal)</li><li>Vegan Buddha bowl with chickpeas, quinoa, and tahini dressing (550 cal)</li></ul><br><strong>Snacks</strong><ul><li>Handful of nuts (100 cal)</li><li>Greek yogurt with honey (150 cal)</li></ul>', '2025-05-02 17:39:45.234000', NULL),
(13, '2025-05-02 17:42:38.102000', '<strong>Breakfast</strong><ul><li>Egg white omelet with spinach and feta (250 cal)</li><li>Chia pudding with almond milk and berries (250 cal)</li><li>Green smoothie (spinach, banana, protein powder, almond milk) (250 cal)</li></ul><br><strong>Lunch</strong><ul><li>Grilled chicken and kale salad with vinaigrette (400 cal)</li><li>Black bean and avocado wrap (400 cal)</li><li>Shrimp and quinoa stir-fry with veggies (400 cal)</li></ul><br><strong>Dinner</strong><ul><li>Grilled salmon with roasted cauliflower and wild rice (500 cal)</li><li>Turkey and vegetable soup with a side salad (500 cal)</li><li>Vegan lentil and vegetable curry (500 cal)</li></ul><br><strong>Snacks</strong><ul><li>Cucumber slices with hummus (100 cal)</li><li>Hard-boiled egg (70 cal)</li></ul>', '2025-05-02 17:42:38.102000', NULL),
(14, '2025-05-02 17:56:50.082000', '<strong>Equipment:</strong> Bodyweight, dumbbells<br><br><strong>Exercises:</strong><ul><li>Squats – 3 sets of 12 reps</li><li>Push-ups (knee or full) – 3 sets of 10 reps<ul><li>Glute Bridges – 3 sets of 12 reps</li></ul></li><li>Dumbbell Shoulder Press – 3 sets of 10 reps</li><li>Bent-Over Dumbbell Rows – 3 sets of 10 reps<ul><li>Plank – 3 rounds of 30-60 seconds</li><li>Lunges – 3 sets of 10 reps per leg</li></ul></li></ul><br><strong>Workout Plan:</strong><ul><li><strong>Day 1:</strong> Full-body (Squats, Rows, Push-ups, Plank)</li><li><strong>Day 2:</strong> Rest or light cardio</li><li><strong>Day 3:</strong> Lower body (Lunges, Glute Bridges) + Core (Plank)</li><li><strong>Day 4:</strong> Rest</li><li><strong>Day 5:</strong> Upper body (Shoulder Press, Rows, Push-ups)</li><li><strong>Day 6:</strong> Light cardio or active recovery</li><li><strong>Day 7:</strong> Rest</li></ul>', '2025-05-02 17:56:50.082000', NULL),
(15, '2025-05-02 18:06:58.790000', '<strong>Equipment:</strong> Dumbbells, barbell, resistance bands<br><br><strong>Exercises:</strong><ul><li>Barbell or Dumbbell Squats – 4 sets of 8-10 reps</li><li>Deadlifts (Dumbbell or Barbell) – 4 sets of 8 reps</li><li>Pull-ups (Assisted if needed) – 3 sets of 8-10 reps</li><li>Overhead Barbell Press – 3 sets of 8 reps</li><li>Bulgarian Split Squats – 3 sets of 8 reps per leg</li><li>Hanging Leg Raises – 3 sets of 12 reps</li><li>Farmer’s Carry – 3 rounds of 30 seconds</li></ul><br><strong>Workout Plan:</strong><ul><li><strong>Day 1:</strong> Upper Body (Pull-ups, Shoulder Press, Rows)</li><li><strong>Day 2:</strong> Lower Body (Squats, Deadlifts, Split Squats)</li><li><strong>Day 3:</strong> Rest or active recovery</li><li><strong>Day 4:</strong> Full-body (Deadlifts, Press, Core Work)</li><li><strong>Day 5:</strong> Mobility + Cardio</li><li><strong>Day 6:</strong> Lower Body Strength (Squats, Bulgarian Split Squats)</li><li><strong>Day 7:</strong> Rest</li></ul>', '2025-05-02 18:06:58.790000', NULL),
(17, '2025-05-02 18:17:05.326000', '<strong>Equipment:</strong> Barbell, dumbbells, kettlebells<br><br><strong>Exercises:</strong><ul><li>Barbell Back Squats – 5 sets of 5 reps</li><li>Deadlifts (Conventional or Sumo) – 5 sets of 5 reps</li><li>Weighted Pull-ups – 4 sets of 6 reps</li><li>Bench Press (Barbell or Dumbbells) – 4 sets of 6 reps</li><li>Kettlebell Swings – 3 sets of 20 reps</li><li>One-Arm Snatch (Dumbbell or Kettlebell) – 3 sets of 6 reps per arm</li><li>Hanging Windshield Wipers – 3 sets of 10 reps per side</li></ul><br><strong>Workout Plan:</strong><ul><li><strong>Day 1:</strong> Heavy Squats + Upper Body (Pull-ups, Bench Press)</li><li><strong>Day 2:</strong> Power Movements (Kettlebell Swings, Snatches)</li><li><strong>Day 3:</strong> Rest or Active Recovery</li><li><strong>Day 4:</strong> Deadlifts + Core (Windshield Wipers)</li><li><strong>Day 5:</strong> Strength + Endurance (Farmer’s Carry, High-Rep Squats)</li><li><strong>Day 6:</strong> Explosive Movements (Box Jumps, Snatches)</li><li><strong>Day 7:</strong> Rest</li></ul>', '2025-05-02 18:17:05.326000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` bigint NOT NULL,
  `serviceid` bigint DEFAULT NULL,
  `userid` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `height` int NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `weight` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `created_at`, `email`, `first_name`, `gender`, `height`, `last_name`, `password`, `updated_at`, `weight`) VALUES
(29, '2025-04-22 18:35:22.881000', 'John@gmail.com', 'John ', 'M', 72, 'Smith', '123', '2025-05-02 18:56:41.315000', 250),
(30, '2025-04-22 20:00:20.653000', 'Mike@gmail.com', 'Mike', 'M', 70, 'Smith ', '1234', '2025-05-04 22:29:01.701000', 200),
(31, '2025-05-02 15:54:49.174000', 'vigboekwe15@gmail.com', 'Vincent', 'M', 73, 'Igboekwe', 'zvef87an', '2025-05-02 21:18:23.842000', 230);

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `user_id` bigint NOT NULL,
  `service_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`user_id`, `service_id`) VALUES
(29, 3),
(30, 3),
(31, 11),
(29, 12),
(31, 13),
(31, 15),
(31, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewid`);

--
-- Indexes for table `service_entity`
--
ALTER TABLE `service_entity`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`user_id`,`service_id`),
  ADD KEY `FKsb4diagw4ek1vdnmkr80bvfa8` (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `service_entity`
--
ALTER TABLE `service_entity`
  MODIFY `serviceid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD CONSTRAINT `FKj9lcudpdt2qgdjorv2jqchgd` FOREIGN KEY (`user_id`) REFERENCES `user` (`userid`),
  ADD CONSTRAINT `FKsb4diagw4ek1vdnmkr80bvfa8` FOREIGN KEY (`service_id`) REFERENCES `service_entity` (`serviceid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
