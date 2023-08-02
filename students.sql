-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 11:20 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `id` int NOT NULL,
  `Module` varchar(25) NOT NULL DEFAULT 'math',
  `Assessment Name` varchar(25) NOT NULL DEFAULT 'math',
  `name` varchar(20) NOT NULL,
  `id_module` int NOT NULL DEFAULT '1',
  `id_user` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`id`, `Module`, `Assessment Name`, `name`, `id_module`, `id_user`) VALUES
(1, 'math', 'math', 'asd', 9, 1),
(2, 'math', 'math', 'asd', 9, 1),
(3, 'math', 'math', 'asdgjfghj', 10, 1),
(4, 'math', 'math', 'asdgjfghj', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course1` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1',
  `course2` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '2',
  `course3` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '3',
  `course_name` varchar(25) NOT NULL,
  `course_id` int NOT NULL DEFAULT '1',
  `id_user` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course1`, `course2`, `course3`, `course_name`, `course_id`, `id_user`) VALUES
('1', '2', '3', 'Math', 1, 0),
('1', '2', '3', 'Math', 1, 0),
('1', '2', '3', 'Hindi', 1, 0),
('1', '2', '3', 'Hindi', 1, 0),
('1', '2', '3', 'Math', 1, 0),
('1', '2', '3', 'Math', 1, 0),
('1', '2', '3', 'english', 1, 1),
('1', '2', '3', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int NOT NULL,
  `module1` varchar(25) NOT NULL DEFAULT 'math',
  `module2` varchar(25) NOT NULL DEFAULT 'english',
  `module_name` varchar(20) NOT NULL,
  `course_id` int NOT NULL,
  `id_user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module1`, `module2`, `module_name`, `course_id`, `id_user`) VALUES
(9, 'math', 'english', 'test', 1, '1'),
(10, 'math', 'english', 'Mohit', 1, '1'),
(11, 'math', 'english', 'Mohit', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(15) NOT NULL,
  `password` int NOT NULL,
  `email` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `password`, `email`) VALUES
('admin', 123, 123);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int NOT NULL,
  `topic1` varchar(25) NOT NULL DEFAULT 'math',
  `topic2` varchar(25) NOT NULL DEFAULT 'english',
  `topic3` varchar(25) NOT NULL DEFAULT 'hindi',
  `course_id` int NOT NULL DEFAULT '1',
  `module_id` int NOT NULL DEFAULT '1',
  `topic_name` varchar(25) NOT NULL,
  `topic_description` varchar(25) NOT NULL,
  `id_user` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic1`, `topic2`, `topic3`, `course_id`, `module_id`, `topic_name`, `topic_description`, `id_user`) VALUES
(1, 'math', 'english', 'hindi', 1, 1, 'test', 'ghbhbhbh', 1),
(2, 'math', 'english', 'hindi', 1, 1, 'test', 'ghbhbhbh', 1),
(3, 'math', 'english', 'hindi', 1, 1, 'Alpha', 'Maht', 1),
(4, 'math', 'english', 'hindi', 1, 1, 'Alpha', 'Maht', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'student',
  `email` varchar(40) NOT NULL,
  `id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `role`, `email`, `id`) VALUES
('123', '123', 'student', '', 0),
('12378', '827ccb0eea8a706c4c34a16891f84e7b', 'student', '1234@gmail.com', 0),
('Chaitanya', '25d55ad283aa400af464c76d713c07ad', 'instructor', 'cdwaghaye@gmail.com', 0),
('aaa', '202cb962ac59075b964b07152d234b70', 'student', 'a@gmail.com', 0),
('qwe', '202cb962ac59075b964b07152d234b70', 'student', 'qwe@gmail.com', 0),
('1234', '202cb962ac59075b964b07152d234b70', 'student', '142@gmail.com', 0),
('1231', '6c14da109e294d1e8155be8aa4b1ce8e', 'instructor', '1231@gmail.com', 0),
('1', 'c4ca4238a0b923820dcc509a6f75849b', 'student', '1@gmail.com', 0),
('12345', '827ccb0eea8a706c4c34a16891f84e7b', 'student', '12345@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
