-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2026 at 07:25 AM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zylu`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `employee_designation` varchar(100) DEFAULT NULL,
  `employee_joiningdate` date DEFAULT NULL,
  `employee_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`employee_id`, `employee_name`, `employee_designation`, `employee_joiningdate`, `employee_status`) VALUES
(1, 'John Smith', 'Software Developer', '2023-01-15', 1),
(2, 'Sarah Johnson', 'HR Manager', '2022-07-10', 1),
(3, 'Michael Brown', 'Accountant', '2021-03-22', 1),
(4, 'Emily Davis', 'UI/UX Designer', '2024-02-01', 1),
(5, 'David Wilson', 'Team Lead', '2020-11-18', 1),
(6, 'Priya Sharma', 'Backend Developer', '2023-09-05', 1),
(7, 'James Anderson', 'Marketing Executive', '2022-12-12', 1),
(8, 'Sophia Martinez', 'Project Manager', '2019-06-30', 1),
(9, 'Daniel Thomas', 'Support Engineer', '2024-01-20', 1),
(10, 'Olivia Taylor', 'QA Tester', '2023-04-08', 1),
(11, 'John', 'Software Developer', '2023-01-15', 1),
(12, 'Sarah', 'HR Manager', '2022-07-10', 1),
(13, 'Michael', 'Accountant', '2021-03-22', 1),
(14, 'Emily', 'UI/UX Designer', '2024-02-01', 1),
(15, 'David', 'Team Lead', '2020-11-18', 1),
(16, 'Priya', 'Backend Developer', '2023-09-05', 1),
(17, 'James', 'Marketing Executive', '2022-12-12', 1),
(18, 'Sophia', 'Project Manager', '2019-06-30', 1),
(19, 'Daniel', 'Support Engineer', '2024-01-20', 1),
(20, 'Olivia', 'QA Tester', '2023-04-08', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_table`
--
ALTER TABLE `employee_table`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
