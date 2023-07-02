-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 08:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(3, 11, 1, 'This is a great post!', '2023-07-02 02:10:53', '2023-07-02 02:10:53'),
(4, 12, 2, 'I agree, this post is really informative.', '2023-07-02 02:11:00', '2023-07-02 02:11:00'),
(5, 13, 3, 'I have a question about this part.', '2023-07-02 02:11:05', '2023-07-02 02:11:05'),
(6, 14, 4, 'I think youre right.', '2023-07-02 02:11:10', '2023-07-02 02:11:10'),
(7, 15, 5, 'I glad you found this post helpful.', '2023-07-02 02:11:15', '2023-07-02 02:11:15'),
(8, 16, 6, 'I still learning, but glad I could help.', '2023-07-02 02:11:20', '2023-07-02 02:11:20'),
(9, 17, 7, 'I glad you enjoyed the post.', '2023-07-02 02:11:25', '2023-07-02 02:11:25'),
(10, 18, 8, 'I glad you found this post interesting.', '2023-07-02 02:11:30', '2023-07-02 02:11:30'),
(11, 19, 9, 'I hope you continue to enjoy our blog.', '2023-07-02 02:11:35', '2023-07-02 02:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 11, 'My First Post', 'This is my first post! I am so excited to start blogging.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(2, 12, 'My Favorite Things', 'I love to code, solve problems, and learn new things. I also enjoy spending time with my family and friends.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(3, 13, 'My Thoughts on the Future', 'I think the future is bright. I am excited to see what the world will be like in 10, 20, or even 50 years.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(4, 14, 'My New Job', 'I just started a new job as a software engineer. I am really excited about the opportunity and I am looking forward to learning new things.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(5, 15, 'My Travel Plans', 'I am planning a trip to Europe next summer. I am really excited to see all the different cultures and experience new things.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(6, 16, 'My New Hobby', 'I recently started learning how to code. I am really enjoying it and I am excited to see what I can create.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(7, 17, 'My Favorite Quote', '\"The only way to do great work is to love what you do.\" - Steve Jobs', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(8, 18, 'My New Pet', 'I just got a new puppy! Her name is Luna and she is the cutest thing ever.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(9, 19, 'My Thoughts on the Current State of the World', 'I think the world is in a state of flux right now. There are a lot of challenges, but I also see a lot of opportunity.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(10, 13, 'My Goals for the Future', 'I have a lot of goals for the future. I want to continue to learn and grow, and I want to make a positive impact on the world.', '2023-07-02 01:55:04', '2023-07-02 01:55:04'),
(11, 11, 'My First 2 Post', 'This is my first post! I am so excited to start blogging.', '2023-07-02 01:55:04', '2023-07-02 01:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(2, 2, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(3, 3, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(4, 4, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(5, 5, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(6, 6, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(7, 7, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(8, 8, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(9, 9, '2023-07-02 15:31:46', '2023-07-02 15:31:46'),
(10, 1, '2023-07-02 15:31:46', '2023-07-02 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bio` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`, `created_at`, `updated_at`) VALUES
(21, 11, 'I am a software engineer. I love to code and solve problems.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(22, 12, 'I am a doctor. I love to help people and make a difference in their lives.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(23, 13, 'I am a teacher. I love to teach and help students learn.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(24, 14, 'I am a lawyer. I love to help people and fight for justice.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(25, 15, 'I am a business owner. I love to build businesses and create jobs.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(26, 16, 'I am a stay-at-home mom. I love to spend time with my family and raise my children.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(27, 17, 'I am a retiree. I love to travel and spend time with my grandchildren.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(28, 18, 'I am a student. I love to learn and explore new things.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(29, 19, 'I am unemployed. I am looking for a job and I am excited about the possibilities.', '2023-07-01 19:49:22', '2023-07-01 19:49:22'),
(30, 20, 'I am a volunteer. I love to give back to my community and help others.', '2023-07-01 19:49:22', '2023-07-01 19:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(2, 'Business', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(3, 'Entertainment', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(4, 'Sports', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(5, 'Lifestyle', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(6, 'Fashion', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(7, 'Food', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(8, 'Travel', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(9, 'Music', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(10, 'Art', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(11, 'Design', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(12, 'Photography', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(13, 'Writing', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(14, 'Coding', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(15, 'Gaming', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(16, 'Education', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(17, 'Health', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(18, 'Science', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(19, 'History', '2023-07-02 15:16:14', '2023-07-02 15:16:14'),
(20, 'Politics', '2023-07-02 15:16:14', '2023-07-02 15:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(11, 'John Doe', 'john.doe@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(12, 'Jane Doe', 'jane.doe@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(13, 'Peter Smith', 'peter.smith@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(14, 'Sarah Jones', 'sarah.jones@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(15, 'David Brown', 'david.brown@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(16, 'Emily White', 'emily.white@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(17, 'Michael Green', 'michael.green@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(18, 'Maria Garcia', 'maria.garcia@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(19, 'Juan Perez', 'juan.perez@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15'),
(20, 'Luis Hernandez', 'luis.hernandez@example.com', '2023-07-02 01:46:15', '2023-07-02 01:46:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `post_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
