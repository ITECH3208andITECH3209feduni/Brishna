-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2024 at 11:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brishna_accountancy`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant_schedule_table`
--

CREATE TABLE `accountant_schedule_table` (
  `accountant_schedule_id` int(11) NOT NULL,
  `accountant_id` int(11) NOT NULL,
  `accountant_schedule_date` date NOT NULL,
  `accountant_schedule_day` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') NOT NULL,
  `accountant_schedule_start_time` varchar(20) NOT NULL,
  `accountant_schedule_end_time` varchar(20) NOT NULL,
  `average_consulting_time` int(5) NOT NULL,
  `accountant_schedule_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accountant_schedule_table`
--

INSERT INTO `accountant_schedule_table` (`accountant_schedule_id`, `accountant_id`, `accountant_schedule_date`, `accountant_schedule_day`, `accountant_schedule_start_time`, `accountant_schedule_end_time`, `average_consulting_time`, `accountant_schedule_status`) VALUES
(2, 1, '2025-02-19', 'Friday', '09:00', '14:00', 15, 'Active'),
(3, 2, '2025-02-19', 'Friday', '09:00', '12:00', 15, 'Active'),
(4, 5, '2025-02-19', 'Friday', '10:00', '14:00', 10, 'Active'),
(5, 3, '2025-02-19', 'Friday', '13:00', '17:00', 20, 'Active'),
(6, 4, '2025-02-19', 'Friday', '15:00', '18:00', 5, 'Active'),
(7, 5, '2025-02-22', 'Monday', '18:00', '20:00', 10, 'Active'),
(8, 2, '2025-02-24', 'Wednesday', '09:30', '12:30', 10, 'Active'),
(9, 5, '2025-02-24', 'Wednesday', '11:00', '15:00', 10, 'Active'),
(10, 1, '2025-02-24', 'Wednesday', '12:00', '15:00', 10, 'Active'),
(11, 3, '2025-02-24', 'Wednesday', '14:00', '17:00', 15, 'Active'),
(12, 4, '2025-02-24', 'Wednesday', '16:00', '20:00', 10, 'Active'),
(13, 6, '2025-02-24', 'Wednesday', '15:30', '18:30', 10, 'Active'),
(14, 6, '2025-02-25', 'Thursday', '10:00', '13:30', 10, 'Active'),
(16, 1, '2025-02-25', 'Tuesday', '10:00', '16:30', 20, 'Active'),
(17, 12, '2025-02-21', 'Friday', '09:00', '15:00', 15, 'Active'),
(18, 7, '2025-02-24', 'Monday', '14:15', '15:20', 25, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `accountant_table`
--

CREATE TABLE `accountant_table` (
  `accountant_id` int(11) NOT NULL,
  `accountant_email_address` varchar(200) NOT NULL,
  `accountant_password` varchar(100) NOT NULL,
  `accountant_name` varchar(100) NOT NULL,
  `accountant_profile_image` varchar(100) NOT NULL,
  `accountant_phone_no` varchar(30) NOT NULL,
  `accountant_address` mediumtext NOT NULL,
  `accountant_date_of_birth` date NOT NULL,
  `accountant_degree` varchar(200) NOT NULL,
  `accountant_expert_in` varchar(100) NOT NULL,
  `accountant_status` enum('Active','Inactive') NOT NULL,
  `accountant_added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accountant_table`
--

INSERT INTO `accountant_table` (`accountant_id`, `accountant_email_address`, `accountant_password`, `accountant_name`, `accountant_profile_image`, `accountant_phone_no`, `accountant_address`, `accountant_date_of_birth`, `accountant_degree`, `accountant_expert_in`, `accountant_status`, `accountant_added_on`) VALUES
(1, 'johnsmith@gmail.com', 'password', 'John Smith', '../images/1235718634.jpg', '0439518520', '137, Barkly Drive, NSW 2756', '1985-10-29', 'MBA', 'Business Advisory', 'Active', '2024-02-15 17:04:59'),
(2, 'janedoe@gmail.com', 'password', 'Jane Doe', '../images/Personnel/p2.jpg', '0438529631', '2, McDonald Street, NSW 2011', '1982-08-10', 'MBA', 'Business Advisory', 'Active', '2024-02-18 15:00:32'),
(3, 'michaelbrown@gmail.com', 'password', 'Michael Brown', '../images/Personnel/p3.jpg', '0417417410', '22, Fremont Avenue, NSW 2115', '1989-04-03', 'MBA', 'Audit', 'Active', '2024-02-18 15:05:02'),
(4, 'emilywhite@gmail.com', 'password', 'Emily White', '../images/Personnel/p4.jpg', '0423698520', '23, Narabang Way, NSW 2085', '1984-06-11', 'MAcc', 'Financial Analyst', 'Active', '2024-02-18 15:08:24'),
(5, 'robertgreen@gmail.com', 'password', 'Robert Green', '../images/Personnel/p5.jpg', '0435852025', '31, Bruce Avenue, NSW 2071', '1988-03-03', 'MAcc', 'Business Advisory', 'Active', '2024-02-18 15:15:23'),
(6, 'sophiamartinez@gmail.com', 'password', 'Sophia Martinez', '../images/Personnel/p6.jpg', '0423697410', 'Marion Catholic Primary School, 1788 The Horsley Drive, NSW 2175', '1989-03-01', 'MAcc', 'Accounting', 'Active', '2024-02-23 17:26:16'),
(7, 'davidlee@gmail.com', 'password', 'David Lee', '../images/Personnel/p7.jpg', '0459128751', '9A, Allawah Road, NSW 2073', '1993-01-27', 'MAcc', 'Accounting', 'Active', '2024-02-18 17:30:30'),
(8, 'oliviaharris@gmail.com', 'password', 'Olivia Harris', '../images/Personnel/p8.jpg', '0490809812', '52, Dorset Street, NSW 2121', '1994-06-03', 'BAcc', 'Accounting', 'Active', '2024-02-18 17:45:23'),
(9, 'lucaswalker@gmail.com', 'password', 'Lucas Walker', '../images/Personnel/p9.jpg', '0412590861', '76, Wilford Street, NSW 2042', '1995-12-13', 'BAcc', 'IT Systems', 'Active', '2024-02-18 17:59:59'),
(10, 'rachelking@gmail.com', 'password', 'Rachel King', '../images/Personnel/p10.jpg', '0414358762', '33, Larra Crescent, NSW 2153', '1996-11-08', 'BAcc', 'Marketing', 'Active', '2024-02-18 18:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_email_address` varchar(200) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `firm_name` varchar(200) NOT NULL,
  `firm_address` mediumtext NOT NULL,
  `firm_contact_no` varchar(30) NOT NULL,
  `firm_logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_email_address`, `admin_password`, `admin_name`, `firm_name`, `firm_address`, `firm_contact_no`, `firm_logo`) VALUES
(1, 'krist.adhikari@gmail.com', 'culers', 'Krist Adhikari', 'Brishna Accountancy', '7/181 Church St, Paramatta, 2150, NSW', '+61 412 370 460', '../images/232947297.png');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_table`
--

CREATE TABLE `appointment_table` (
  `appointment_id` int(11) NOT NULL,
  `accountant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `accountant_schedule_id` int(11) NOT NULL,
  `appointment_number` int(11) NOT NULL,
  `reason_for_appointment` mediumtext NOT NULL,
  `appointment_time` time NOT NULL,
  `status` varchar(30) NOT NULL,
  `customer_come_into_firm` enum('No','Yes') NOT NULL,
  `accountant_comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointment_table`
--

INSERT INTO `appointment_table` (`appointment_id`, `accountant_id`, `customer_id`, `accountant_schedule_id`, `appointment_number`, `reason_for_appointment`, `appointment_time`, `status`, `customer_come_into_firm`, `accountant_comment`) VALUES
(3, 1, 3, 2, 1000, 'BookKeeping', '09:00:00', 'Cancel', 'No', ''),
(4, 1, 3, 2, 1001, 'Monthly Report', '09:00:00', 'Booked', 'No', ''),
(5, 1, 4, 2, 1002, 'Tax Return', '09:30:00', 'Completed', 'Yes', 'Her tax return is lodged.'),
(6, 5, 3, 7, 1003, 'Monthly Report', '18:00:00', 'In Process', 'Yes', ''),
(7, 6, 5, 13, 1004, 'Payroll', '15:30:00', 'Completed', 'Yes', 'Payroll managed.'),
(8, 6, 4, 13, 1005, 'Need to lodge for a tax return.\r\n', '15:40:00', 'Booked', 'No', ''),
(9, 1, 6, 2, 1006, 'Business Advisory', '09:45:00', 'Completed', 'Yes', 'Consultation gone well.'),
(10, 6, 7, 13, 1007, 'Just need help with my statements.', '15:50:00', 'Cancel', 'No', ''),
(11, 4, 7, 6, 1008, 'I need to sort out my business finances.', '15:00:00', 'Completed', 'Yes', 'Business finances sorted.'),
(12, 5, 7, 7, 1009, 'I need to file a tax return.', '18:10:00', 'Completed', 'Yes', 'Tax return filed.'),
(13, 12, 7, 17, 1010, 'Tax return', '09:00:00', 'Booked', 'No', ''),
(14, 7, 7, 18, 1011, 'tax return', '14:15:00', 'Completed', 'Yes', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE `customer_table` (
  `customer_id` int(11) NOT NULL,
  `customer_email_address` varchar(200) NOT NULL,
  `customer_password` varchar(100) NOT NULL,
  `customer_first_name` varchar(100) NOT NULL,
  `customer_last_name` varchar(100) NOT NULL,
  `customer_date_of_birth` date NOT NULL,
  `customer_gender` enum('Male','Female','Other') NOT NULL,
  `customer_address` mediumtext NOT NULL,
  `customer_phone_no` varchar(30) NOT NULL,
  `customer_maritial_status` varchar(30) NOT NULL,
  `customer_added_on` datetime NOT NULL,
  `customer_verification_code` varchar(100) NOT NULL,
  `email_verify` enum('No','Yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`customer_id`, `customer_email_address`, `customer_password`, `customer_first_name`, `customer_last_name`, `customer_date_of_birth`, `customer_gender`, `customer_address`, `customer_phone_no`, `customer_maritial_status`, `customer_added_on`, `customer_verification_code`, `email_verify`) VALUES
(3, 'jacobmartin@gmail.com', 'password', 'Jacob', 'Martin', '2014-02-26', 'Male', '10 Grey Street, 2128, NSW', '0474563521', 'Single', '2024-02-18 16:34:55', 'b1f3f8409f7687072adb1f1b7c22d4b0', 'Yes'),
(4, 'oliviabaker@gmail.com', 'password', 'Olivia', 'Baker', '2001-04-05', 'Female', '247 Elara Boulevard, 2765, NSW', '0439518520', 'Married', '2024-02-19 18:28:23', '8902e16ef62a556a8e271c9930068fea', 'Yes'),
(5, 'amberanderson@gmail.com', 'password', 'Amber', 'Anderson', '1995-07-25', 'Female', '75X Quarry Road, 2158, NSW', '0434511442', 'Single', '2024-02-23 17:50:06', '1909d59e254ab7e433d92f014d82ba3d', 'Yes'),
(6, 'gerrardmartin@gmail.com', 'password', 'Gerrard', 'Martin', '2000-07-14', 'Male', '23 Miller Street, 2171, NSW', '0419875198', 'Single', '2024-10-01 16:59:00', '6599de0888f0e4fb542512ccb6739a1a', 'Yes'),
(7, 'benwhite@gmail.com', 'password', 'Ben', 'White', '2004-02-17', 'Male', '84 Wattlebird Ct, 2114, NSW', '0415981285', 'Single', '2024-10-01 19:29:17', '875d1b207ceacaf1d137ab8f4568e17b', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant_schedule_table`
--
ALTER TABLE `accountant_schedule_table`
  ADD PRIMARY KEY (`accountant_schedule_id`);

--
-- Indexes for table `accountant_table`
--
ALTER TABLE `accountant_table`
  ADD PRIMARY KEY (`accountant_id`);

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment_table`
--
ALTER TABLE `appointment_table`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant_schedule_table`
--
ALTER TABLE `accountant_schedule_table`
  MODIFY `accountant_schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `accountant_table`
--
ALTER TABLE `accountant_table`
  MODIFY `accountant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment_table`
--
ALTER TABLE `appointment_table`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
