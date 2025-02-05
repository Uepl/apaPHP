-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 05, 2025 at 06:25 AM
-- Server version: 8.0.41
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `major_id` int NOT NULL,
  `major_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`major_id`, `major_name`) VALUES
(3, 'วิศวกรรมคอม'),
(2, 'วิศวกรรมหุ่นยนต์'),
(4, 'วิศวกรรมเครื่องกล'),
(1, 'วิศวกรรมไฟฟ้า');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` char(8) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `major_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `full_name`, `major_id`) VALUES
('63010001', 'John Doe', 1),
('63010002', 'สมหญิง สวยงาม', 1),
('63010003', 'จันทรา แสงจันทร์', 2),
('63010004', 'ono thisis', 3),
('63010005', 'ohio noway', 4),
('63010006', 'Eva Green', 2),
('63010007', 'Frank White', 3),
('63010008', 'Grace Black', 3),
('63010009', 'Henry Wilson', 3),
('63010010', 'Ivy Lee', 4),
('63010011', 'Jack Taylor', 4),
('63010012', 'Karen Moore', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`major_id`),
  ADD UNIQUE KEY `major_name` (`major_name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `major_id` (`major_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `major_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
