-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2024 at 08:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intercity_express_trains`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_coaches`
--

CREATE TABLE `active_coaches` (
  `coach_no` varchar(10) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `active_coaches`
--

INSERT INTO `active_coaches` (`coach_no`, `date`) VALUES
('CN001', '2023-10-15'),
('CN002', '2023-09-20'),
('CN003', '2023-11-05'),
('CN004', '2023-08-12'),
('CN005', '2023-10-30'),
('CN006', '2023-05-23'),
('CN007', '2023-11-10'),
('CN008', '2023-08-22'),
('CN009', '2023-10-05'),
('CN010', '2023-11-15'),
('CN011', '2023-09-10'),
('CN012', '2023-08-30'),
('CN013', '2023-10-20'),
('CN014', '2023-11-25'),
('CN015', '2023-09-15'),
('CN016', '2023-08-10'),
('CN017', '2023-10-25'),
('CN018', '2023-09-05'),
('CN019', '2023-07-20'),
('CN020', '2023-11-05'),
('CN021', '2023-10-30'),
('CN022', '2023-09-25'),
('CN023', '2023-08-22'),
('CN024', '2023-11-10'),
('CN025', '2023-10-05'),
('CN026', '2023-11-15'),
('CN027', '2023-09-10'),
('CN028', '2023-08-30'),
('CN029', '2023-10-20'),
('CN030', '2023-11-25'),
('CN031', '2023-09-15'),
('CN032', '2023-08-10'),
('CN033', '2023-10-25'),
('CN034', '2023-09-05'),
('CN035', '2023-07-20'),
('CN036', '2023-11-05'),
('CN037', '2023-10-30'),
('CN038', '2023-09-25'),
('CN039', '2023-08-22'),
('CN040', '2023-11-10'),
('CN041', '2023-10-05'),
('CN042', '2023-11-15'),
('CN043', '2023-09-10'),
('CN044', '2023-08-30'),
('CN045', '2023-10-20'),
('CN046', '2023-11-25'),
('CN047', '2023-09-15'),
('CN048', '2023-08-10'),
('CN049', '2023-10-25'),
('CN050', '2023-09-05'),
('CN051', '2023-07-20'),
('CN052', '2023-11-05'),
('CN053', '2023-10-30'),
('CN054', '2023-09-25'),
('CN055', '2023-08-22'),
('CN056', '2023-11-10'),
('CN057', '2023-10-05'),
('CN058', '2023-11-15'),
('CN059', '2023-09-10'),
('CN060', '2023-08-30'),
('CN061', '2023-10-20'),
('CN062', '2023-11-25'),
('CN063', '2023-09-15'),
('CN064', '2023-08-10'),
('CN065', '2023-10-25'),
('CN066', '2023-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `age`, `email_id`, `gender`, `password`, `contact_no`, `address`) VALUES
('pucsd@123', 'computer science', 23, 'pucsd2023@gmail.com', 'female', 'PUCSD@23112037', '7249204317', 'Ganeshkhind road pune');

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `coach_no` varchar(10) NOT NULL,
  `mileage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`coach_no`, `mileage`) VALUES
('CN001', 5000),
('CN002', 3000),
('CN003', 2000),
('CN004', 4500),
('CN005', 1000),
('CN006', 3500),
('CN007', 2500),
('CN008', 4000),
('CN009', 1500),
('CN010', 3500),
('CN011', 4500),
('CN012', 2500),
('CN013', 500),
('CN014', 1000),
('CN015', 3000),
('CN016', 2000),
('CN017', 4500),
('CN018', 1000),
('CN019', 5000),
('CN020', 3000),
('CN021', 2500),
('CN022', 4000),
('CN023', 1500),
('CN024', 3500),
('CN025', 4500),
('CN026', 2500),
('CN027', 500),
('CN028', 1000),
('CN029', 3000),
('CN030', 2000),
('CN031', 5000),
('CN032', 3000),
('CN033', 1500),
('CN034', 3500),
('CN035', 4500),
('CN036', 2500),
('CN037', 500),
('CN038', 1000),
('CN039', 3000),
('CN040', 2000),
('CN041', 5000),
('CN042', 3000),
('CN043', 1500),
('CN044', 3500),
('CN045', 4500),
('CN046', 2500),
('CN047', 500),
('CN048', 1000),
('CN049', 3000),
('CN050', 2000),
('CN051', 5000),
('CN052', 3000),
('CN053', 1500),
('CN054', 4500),
('CN055', 2500),
('CN056', 500),
('CN057', 1000),
('CN058', 3500),
('CN059', 4500),
('CN060', 2000),
('CN061', 3000),
('CN062', 500),
('CN063', 1500),
('CN064', 4500),
('CN065', 2500),
('CN066', 5000),
('CN067', 3000),
('CN068', 1000),
('CN069', 3500),
('CN070', 2000),
('CN071', 5000),
('CN072', 3000),
('CN073', 1500),
('CN074', 4000),
('CN075', 500),
('CN076', 2500),
('CN077', 1000),
('CN078', 3000),
('CN079', 2000),
('CN080', 5000),
('CN081', 3500),
('CN082', 1500),
('CN083', 4000),
('CN084', 500),
('CN085', 2500),
('CN086', 3000),
('CN087', 1000),
('CN088', 5000),
('CN089', 3000),
('CN090', 2000),
('CN091', 4500),
('CN092', 1500),
('CN093', 5000),
('CN094', 3500),
('CN095', 500),
('CN096', 2500),
('CN097', 3000),
('CN098', 1000),
('CN099', 4500),
('CN100', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `maintainance`
--

CREATE TABLE `maintainance` (
  `maintain_no` varchar(10) NOT NULL,
  `coach_no` varchar(10) DEFAULT NULL,
  `maintain_date` date DEFAULT NULL,
  `maintain_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintainance`
--

INSERT INTO `maintainance` (`maintain_no`, `coach_no`, `maintain_date`, `maintain_type`) VALUES
('MNT001', 'CN001', '2023-10-15', 'Mileage'),
('MNT002', 'CN002', '2023-09-20', 'Mileage'),
('MNT003', 'CN003', '2023-11-05', 'Mileage'),
('MNT004', 'CN004', '2023-08-12', 'Mileage'),
('MNT005', 'CN005', '2023-10-30', 'Mileage'),
('MNT006', 'CN006', '2023-05-23', 'Mileage'),
('MNT007', 'CN007', '2023-11-10', 'Mileage'),
('MNT008', 'CN008', '2023-08-22', 'Mileage'),
('MNT009', 'CN009', '2023-10-05', 'Mileage'),
('MNT010', 'CN010', '2023-11-15', 'Mileage'),
('MNT011', 'CN011', '2023-09-10', 'Mileage'),
('MNT012', 'CN012', '2023-08-30', 'Mileage'),
('MNT013', 'CN013', '2023-10-20', 'Mileage'),
('MNT014', 'CN014', '2023-11-25', 'Mileage'),
('MNT015', 'CN015', '2023-09-15', 'Mileage'),
('MNT016', 'CN016', '2023-08-10', 'Mileage'),
('MNT017', 'CN017', '2023-10-25', 'Mileage'),
('MNT018', 'CN018', '2023-09-05', 'Mileage'),
('MNT019', 'CN019', '2023-07-20', 'Mileage'),
('MNT020', 'CN020', '2023-11-05', 'Mileage'),
('MNT021', 'CN021', '2023-10-30', 'Mileage'),
('MNT022', 'CN022', '2023-09-25', 'Mileage'),
('MNT023', 'CN023', '2023-08-22', 'Mileage'),
('MNT024', 'CN024', '2023-11-10', 'Mileage'),
('MNT025', 'CN025', '2023-10-05', 'Mileage'),
('MNT026', 'CN026', '2023-11-15', 'Mileage'),
('MNT027', 'CN027', '2023-09-10', 'Mileage'),
('MNT028', 'CN028', '2023-08-30', 'Mileage'),
('MNT029', 'CN029', '2023-10-20', 'Mileage'),
('MNT030', 'CN030', '2023-11-25', 'Mileage'),
('MNT031', 'CN031', '2023-09-15', 'Mileage'),
('MNT032', 'CN032', '2023-08-10', 'Mileage'),
('MNT033', 'CN033', '2023-10-25', 'Mileage'),
('MNT034', 'CN034', '2023-09-05', 'Mileage'),
('MNT035', 'CN035', '2023-07-20', 'Mileage'),
('MNT036', 'CN036', '2023-11-05', 'Mileage'),
('MNT037', 'CN037', '2023-10-30', 'Mileage'),
('MNT038', 'CN038', '2023-09-25', 'Mileage'),
('MNT039', 'CN039', '2023-08-22', 'Mileage'),
('MNT040', 'CN040', '2023-11-10', 'Mileage'),
('MNT041', 'CN041', '2023-10-05', 'Mileage'),
('MNT042', 'CN042', '2023-11-15', 'Mileage'),
('MNT043', 'CN043', '2023-09-10', 'Mileage'),
('MNT044', 'CN044', '2023-08-30', 'Mileage'),
('MNT045', 'CN045', '2023-10-20', 'Mileage'),
('MNT046', 'CN046', '2023-11-25', 'Mileage'),
('MNT047', 'CN047', '2023-09-15', 'Mileage'),
('MNT048', 'CN048', '2023-08-10', 'Mileage'),
('MNT049', 'CN049', '2023-10-25', 'Mileage'),
('MNT050', 'CN050', '2023-09-05', 'Mileage'),
('MNT051', 'CN051', '2023-07-20', 'Mileage'),
('MNT052', 'CN052', '2023-11-05', 'Mileage'),
('MNT053', 'CN053', '2023-10-30', 'Mileage'),
('MNT054', 'CN054', '2023-09-25', 'Mileage'),
('MNT055', 'CN055', '2023-08-22', 'Mileage'),
('MNT056', 'CN056', '2023-11-10', 'Mileage'),
('MNT057', 'CN057', '2023-10-05', 'Mileage'),
('MNT058', 'CN058', '2023-11-15', 'Mileage'),
('MNT059', 'CN059', '2023-09-10', 'Mileage'),
('MNT060', 'CN060', '2023-08-30', 'Mileage'),
('MNT061', 'CN061', '2023-10-20', 'Mileage'),
('MNT062', 'CN062', '2023-11-25', 'Mileage'),
('MNT063', 'CN063', '2023-09-15', 'Mileage'),
('MNT064', 'CN064', '2023-08-10', 'Mileage'),
('MNT065', 'CN065', '2023-10-25', 'Mileage'),
('MNT066', 'CN066', '2023-09-05', 'Mileage'),
('MNT067', 'CN067', '2023-07-20', 'Mileage'),
('MNT068', 'CN068', '2023-11-05', 'Mileage'),
('MNT069', 'CN069', '2023-10-30', 'Mileage'),
('MNT070', 'CN070', '2023-09-25', 'Mileage'),
('MNT071', 'CN071', '2023-08-22', 'Mileage'),
('MNT072', 'CN072', '2023-11-10', 'Mileage'),
('MNT073', 'CN073', '2023-10-05', 'Mileage'),
('MNT074', 'CN074', '2023-11-15', 'Mileage'),
('MNT075', 'CN075', '2023-09-10', 'Mileage'),
('MNT076', 'CN076', '2023-08-30', 'Mileage'),
('MNT077', 'CN077', '2023-10-20', 'Mileage'),
('MNT078', 'CN078', '2023-11-25', 'Mileage'),
('MNT079', 'CN079', '2023-09-15', 'Mileage'),
('MNT080', 'CN080', '2023-08-10', 'Mileage'),
('MNT081', 'CN081', '2023-10-25', 'Mileage'),
('MNT082', 'CN082', '2023-09-05', 'Mileage'),
('MNT083', 'CN083', '2023-07-20', 'Mileage'),
('MNT084', 'CN084', '2023-11-05', 'Mileage'),
('MNT085', 'CN085', '2023-10-30', 'Mileage'),
('MNT086', 'CN086', '2023-09-25', 'Mileage'),
('MNT087', 'CN087', '2023-08-22', 'Mileage'),
('MNT088', 'CN088', '2023-11-10', 'Mileage'),
('MNT089', 'CN089', '2023-10-05', 'Mileage'),
('MNT090', 'CN090', '2023-11-15', 'Mileage'),
('MNT091', 'CN091', '2023-08-30', 'Mileage'),
('MNT092', 'CN092', '2023-10-20', 'Mileage'),
('MNT093', 'CN093', '2023-11-25', 'Mileage'),
('MNT094', 'CN094', '2023-09-15', 'Mileage'),
('MNT095', 'CN095', '2023-08-10', 'Mileage'),
('MNT096', 'CN096', '2023-10-25', 'Mileage'),
('MNT097', 'CN097', '2023-09-05', 'Mileage'),
('MNT098', 'CN098', '2023-07-20', 'Mileage'),
('MNT099', 'CN099', '2023-11-05', 'Mileage'),
('MNT100', 'CN100', '2023-10-30', 'Mileage');

-- --------------------------------------------------------

--
-- Table structure for table `oldpassenger`
--

CREATE TABLE `oldpassenger` (
  `passenger_id` varchar(10) NOT NULL,
  `passenger_name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `passenger_type` enum('child','adult','senior-citizen') NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `gender` enum('male','female','others') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oldpassenger`
--

INSERT INTO `oldpassenger` (`passenger_id`, `passenger_name`, `age`, `passenger_type`, `email_id`, `gender`) VALUES
('PA001', 'Priya Patel', 28, 'adult', 'priya@example.com', 'male'),
('PA002', 'Rajesh Kumar', 35, 'adult', 'rajesh@example.com', 'male'),
('PA003', 'Neha Sharma', 22, 'adult', 'neha@example.com', 'male'),
('PA004', 'Aryan Singh', 45, 'adult', 'aryan@example.com', 'male'),
('PA005', 'Ananya Das', 30, 'adult', 'ananya@example.com', 'male'),
('PA006', 'Ravi Verma', 32, 'adult', 'ravi@example.com', 'male'),
('PA007', 'Sanjay Singh', 40, 'adult', 'sanjay@example.com', 'male'),
('PA008', 'Kavita Reddy', 27, 'adult', 'kavita@example.com', 'male'),
('PA009', 'Neha Patel', 8, 'child', 'neha@example.com', 'male'),
('PA010', 'Rakesh Verma', 65, 'senior-citizen', 'rakesh@example.com', 'male'),
('PA011', 'Priyanka Singh', 31, 'adult', 'priyanka@example.com', 'male'),
('PA012', 'Rahul Sharma', 70, 'senior-citizen', 'rahul@example.com', 'male'),
('PA013', 'Kirti Das', 20, 'adult', 'kirti@example.com', 'male'),
('PA014', 'Ajay Mehta', 58, 'adult', 'ajay@example.com', 'male'),
('PA015', 'Anu Singh', 10, 'child', 'anu@example.com', 'male'),
('PA016', 'Ritu Reddy', 26, 'adult', 'ritu@example.com', 'male'),
('PA017', 'Viren Kapoor', 68, 'senior-citizen', 'viren@example.com', 'male'),
('PA018', 'Ayesha Verma', 55, 'adult', 'ayesha@example.com', 'male'),
('PA019', 'Sameer Singh', 45, 'adult', 'sameer@example.com', 'male'),
('PA020', 'Ria Sharma', 17, 'adult', 'ria@example.com', 'male'),
('PA021', 'Arjun Das', 30, 'adult', 'arjun@example.com', 'male'),
('PA022', 'Pooja Patel', 62, 'senior-citizen', 'pooja@example.com', 'male'),
('PA023', 'Rohan Reddy', 28, 'adult', 'rohan@example.com', 'male'),
('PA024', 'Divya Kapoor', 40, 'adult', 'divya@example.com', 'male'),
('PA025', 'Karan Verma', 70, 'senior-citizen', 'karan@example.com', 'male'),
('PA026', 'Tanvi Singh', 26, 'adult', 'tanvi@example.com', 'male'),
('PA027', 'Anil Sharma', 59, 'adult', 'anil@example.com', 'male'),
('PA028', 'Meera Das', 8, 'child', 'meera@example.com', 'male'),
('PA029', 'Aditi Reddy', 65, 'senior-citizen', 'aditi@example.com', 'male'),
('PA030', 'Suresh Patel', 31, 'adult', 'suresh@example.com', 'male'),
('PA031', 'Ankit Kumar', 25, 'adult', 'ankit@example.com', 'male'),
('PA032', 'Rishi Kumar', 24, 'adult', 'rishi@example.com', 'male'),
('PA033', 'Yash Kumar', 20, 'adult', 'yash@example.com', 'male'),
('PA034', 'Shashi Ranjan', 23, 'adult', 'shashi@example.com', 'male'),
('PA035', 'Rajiv Ranjan', 23, 'adult', 'rajiv@example.com', 'male'),
('PA036', 'Ritesh Yeole', 23, 'adult', 'ritesh@example.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `id` varchar(100) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `residence_city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `name`, `age`, `email_id`, `gender`, `password`, `contact_no`, `residence_city`) VALUES
('50851b26e0ac11eebb1080913357979f', 'shreyas', 22, 'shreyas@123', 'male', '$2b$10$DKZtSt3d2/Ob31Kah85B5.TFoQbujq493VZGXstF.nPbhm7V9ksYa', '1122334455', 'Nagar');

-- --------------------------------------------------------

--
-- Table structure for table `passtemp`
--

CREATE TABLE `passtemp` (
  `passenger_id` varchar(100) NOT NULL,
  `passenger_name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `residence_city` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_no` varchar(10) NOT NULL,
  `route_name` varchar(30) DEFAULT NULL,
  `time_taken` time DEFAULT NULL,
  `total_dist_km` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`route_no`, `route_name`, `time_taken`, `total_dist_km`) VALUES
('RT001', 'MUMBAI CENTRAL-GANDHINAGAR', '05:40:00', 548),
('RT002', 'NEW DELHI-HIMACHAL', '06:10:00', 412),
('RT003', 'SECUNDERABAD-VISAKHAPATNAM', '08:30:00', 500),
('RT004', 'MUMBAI-SAINAGAR SHIRDI', '05:20:00', 248),
('RT005', 'MUMBAI-SOLAPUR', '06:35:00', 400),
('RT006', 'BHOPAL-DELHI', '07:45:00', 700),
('RT007', 'LONAVALA-AJMER', '10:45:00', 1062),
('RT008', 'DHARWAD-BENGALURU', '05:00:00', 432),
('RT009', 'BHOPAL-INDORE', '03:00:00', 246),
('RT010', 'MUMBAI-GOA', '06:00:00', 588),
('RT011', 'RAXAUL-HOWRAH', '17:50:00', 691),
('RT014', 'GANDHINAGAR-MUMBAI CENTRAL', '05:40:00', 548),
('RT015', 'HIMACHAL-NEW DELHI', '06:10:00', 412),
('RT016', 'VISAKHAPATNAM-SECUNDERABAD', '08:30:00', 500),
('RT017', 'SAINAGAR SHIRDI-MUMBAI', '05:20:00', 248),
('RT018', 'SOLAPUR-MUMBAI', '06:35:00', 400),
('RT019', 'DELHI-BHOPAL', '07:45:00', 700),
('RT020', 'AJMER-LONAVALA', '10:45:00', 1062),
('RT021', 'BENGALURU-DHARWAD', '05:00:00', 432),
('RT022', 'INDORE-BHOPAL', '03:00:00', 246),
('RT023', 'GOA-MUMBAI', '06:00:00', 588),
('RT024', 'HOWRAH-RAXAUL', '17:50:00', 691);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_no` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_no`, `type`) VALUES
(1, 'LOWER'),
(2, 'MIDDLE'),
(3, 'UPPER'),
(4, 'LOWER'),
(5, 'MIDDLE'),
(6, 'UPPER'),
(7, 'S_LOWER'),
(8, 'S_UPPER'),
(9, 'LOWER'),
(10, 'MIDDLE'),
(11, 'UPPER'),
(12, 'LOWER'),
(13, 'MIDDLE'),
(14, 'UPPER'),
(15, 'S_LOWER'),
(16, 'S_UPPER'),
(17, 'LOWER'),
(18, 'MIDDLE'),
(19, 'UPPER'),
(20, 'LOWER'),
(21, 'MIDDLE'),
(22, 'UPPER'),
(23, 'S_LOWER'),
(24, 'S_UPPER'),
(25, 'LOWER'),
(26, 'MIDDLE'),
(27, 'UPPER'),
(28, 'LOWER'),
(29, 'MIDDLE'),
(30, 'UPPER');

-- --------------------------------------------------------

--
-- Table structure for table `seat_allocated`
--

CREATE TABLE `seat_allocated` (
  `ticket_no` varchar(10) NOT NULL,
  `coach_no` varchar(10) DEFAULT NULL,
  `seat_no` int(11) DEFAULT NULL,
  `seat_type` varchar(10) DEFAULT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` varchar(100) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `residence_city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `name`, `age`, `email_id`, `gender`, `password`, `contact_no`, `residence_city`) VALUES
('7bc5f7b4de4611eebfae80913357979f', 'Shashi', 22, 'ranjanshashi9471@gmail.com', 'male', '$2b$10$Hgqq2VjFXZwgUByHTpIQYOXHlsjZcYNy0hOSg9GjEzNCnGOz8iVuC', '8709406474', 'MEHSI');

-- --------------------------------------------------------

--
-- Table structure for table `staff_schedule`
--

CREATE TABLE `staff_schedule` (
  `route_no` varchar(10) NOT NULL,
  `train_no` int(11) NOT NULL,
  `staff_no` varchar(10) NOT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `accomodation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_schedule`
--

INSERT INTO `staff_schedule` (`route_no`, `train_no`, `staff_no`, `remark`, `date`, `time`, `accomodation`) VALUES
('RT001', 22945, 'S001', 'MAIN DRIVER', '2023-10-10', '09:00:00', 'provided'),
('RT001', 22945, 'S001', 'MAIN DRIVER', '2023-10-12', '09:00:00', 'provided'),
('RT001', 22945, 'S001', 'MAIN DRIVER', '2023-10-14', '09:00:00', 'provided'),
('RT001', 22945, 'S002', 'CO-DRIVER', '2023-10-10', '09:00:00', 'provided'),
('RT001', 22945, 'S002', 'CO-DRIVER', '2023-10-12', '09:00:00', 'provided'),
('RT001', 22945, 'S002', 'CO-DRIVER', '2023-10-14', '09:00:00', 'provided'),
('RT002', 14553, 'S003', 'MAIN DRIVER', '2023-12-25', '07:00:00', NULL),
('RT002', 14553, 'S004', 'CO-DRIVER', '2023-12-25', '07:00:00', NULL),
('RT003', 11019, 'S005', 'MAIN DRIVER', '2023-12-28', '10:00:00', NULL),
('RT003', 11019, 'S006', 'CO-DRIVER', '2023-12-28', '10:00:00', NULL),
('RT004', 22223, 'S007', 'MAIN DRIVER', '2024-01-03', '11:40:00', NULL),
('RT004', 22223, 'S008', 'CO-DRIVER', '2024-01-03', '11:40:00', NULL),
('RT005', 11301, 'S009', 'MAIN DRIVER', '2024-01-15', '08:25:00', NULL),
('RT005', 11301, 'S010', 'CO-DRIVER', '2024-01-15', '08:25:00', NULL),
('RT006', 12715, 'S011', 'MAIN DRIVER', '2024-01-25', '20:15:00', NULL),
('RT006', 12715, 'S012', 'CO-DRIVER', '2024-01-25', '20:15:00', NULL),
('RT007', 19628, 'S013', 'MAIN DRIVER', '2024-02-05', '02:15:00', NULL),
('RT007', 19628, 'S014', 'CO-DRIVER', '2024-02-05', '02:15:00', NULL),
('RT008', 17325, 'S015', 'MAIN DRIVER', '2024-02-15', '05:00:00', NULL),
('RT008', 17325, 'S016', 'CO-DRIVER', '2024-02-15', '05:00:00', NULL),
('RT009', 18234, 'S017', 'MAIN DRIVER', '2024-02-25', '21:15:00', NULL),
('RT009', 18234, 'S018', 'CO-DRIVER', '2024-02-25', '21:15:00', NULL),
('RT010', 10103, 'S019', 'MAIN DRIVER', '2024-03-05', '03:00:00', NULL),
('RT010', 10103, 'S020', 'CO-DRIVER', '2024-03-05', '03:00:00', NULL),
('RT011', 13022, 'S021', 'MAIN DRIVER', '2024-03-15', '10:10:00', NULL),
('RT011', 13022, 'S022', 'CO-DRIVER', '2024-03-15', '10:10:00', NULL),
('RT014', 22946, 'S001', 'MAIN DRIVER', '2023-10-10', '16:40:00', 'provided'),
('RT014', 22946, 'S001', 'MAIN DRIVER', '2023-10-12', '16:40:00', 'provided'),
('RT014', 22946, 'S001', 'MAIN DRIVER', '2023-10-14', '16:40:00', 'provided'),
('RT014', 22946, 'S002', 'CO-DRIVER', '2023-10-10', '16:40:00', NULL),
('RT014', 22946, 'S002', 'CO-DRIVER', '2023-10-12', '16:40:00', NULL),
('RT014', 22946, 'S002', 'CO-DRIVER', '2023-10-14', '16:40:00', NULL),
('RT015', 14552, 'S003', 'MAIN DRIVER', '2023-12-25', '16:10:00', NULL),
('RT015', 14552, 'S004', 'CO-DRIVER', '2023-12-25', '16:10:00', NULL),
('RT016', 11020, 'S005', 'MAIN DRIVER', '2023-12-28', '21:30:00', NULL),
('RT016', 11020, 'S006', 'CO-DRIVER', '2023-12-28', '21:30:00', NULL),
('RT017', 22222, 'S007', 'MAIN DRIVER', '2024-01-03', '19:00:00', NULL),
('RT017', 22222, 'S008', 'CO-DRIVER', '2024-01-03', '19:00:00', NULL),
('RT018', 11302, 'S009', 'MAIN DRIVER', '2024-01-15', '17:00:00', NULL),
('RT018', 11302, 'S010', 'CO-DRIVER', '2024-01-15', '17:00:00', NULL),
('RT019', 12716, 'S011', 'MAIN DRIVER', '2024-01-26', '06:00:00', NULL),
('RT019', 12716, 'S012', 'CO-DRIVER', '2024-01-26', '06:00:00', NULL),
('RT020', 19627, 'S013', 'MAIN DRIVER', '2024-02-05', '16:00:00', NULL),
('RT020', 19627, 'S014', 'CO-DRIVER', '2024-02-05', '16:00:00', NULL),
('RT021', 17326, 'S015', 'CO-DRIVER', '2024-02-15', '12:00:00', NULL),
('RT021', 17326, 'S016', 'MAIN DRIVER', '2024-02-15', '12:00:00', NULL),
('RT022', 18235, 'S017', 'CO-DRIVER', '2024-02-26', '03:15:00', NULL),
('RT022', 18235, 'S018', 'MAIN DRIVER', '2024-02-26', '03:15:00', NULL),
('RT023', 10102, 'S019', 'MAIN DRIVER', '2024-03-05', '12:15:00', NULL),
('RT023', 10102, 'S020', 'CO-DRIVER', '2024-03-05', '12:15:00', NULL),
('RT024', 13021, 'S021', 'MAIN DRIVER', '2024-03-16', '06:00:00', NULL),
('RT024', 13021, 'S022', 'CO-DRIVER', '2024-03-16', '06:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standby_coaches`
--

CREATE TABLE `standby_coaches` (
  `coach_no` varchar(10) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `station_code` varchar(10) NOT NULL,
  `station_name` varchar(30) DEFAULT NULL,
  `no_of_platform` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`station_code`, `station_name`, `no_of_platform`, `state`) VALUES
('ADI', 'AHMEDABAD MAIN', 9, 'GUJARAT'),
('AII', 'AJMER', 7, 'RAJASTHAN'),
('BCT', 'MUMBAI CENTRAL', 8, 'MAHARASHTRA'),
('BPL', 'BHOPAL', 5, 'MADHYA PRADESH'),
('BSB', 'VARANASI', 12, 'UTTAR PRADESH'),
('BUI', 'BALLIA', 6, 'UTTAR PRADESH'),
('CNB', 'KANPUR', 11, 'UTTAR PRADESH'),
('CSMT', 'MUMBAI', 12, 'MAHARASHTRA'),
('DWR', 'DHARWAD', 6, 'KARNATKA'),
('GKP', 'GORAKHPUR', 15, 'UTTAR PRADESH'),
('HWH', 'HOWRAH', 20, 'WEST BENGAL'),
('INDB', 'INDORE', 6, 'MADHYA PRADESH'),
('JAM', 'GANDHINAGAR', 10, 'GUJARAT'),
('JP', 'JAIPUR MAIN', 6, 'RAJASTHAN'),
('LJN', 'LUCKNOW', 12, 'UTTAR PRADESH'),
('LNL', 'LONAVALA', 4, 'MAHARASHTRA'),
('LTT', 'LOKMANYA TILAK MAIN', 9, 'MAHARASHTRA'),
('MAA', 'CHENNAI CENTRAL', 14, 'TAMIL NADU'),
('MAS', 'CHENNAI TERMINUS', 10, 'TAMIL NADU'),
('MFP', 'MUZAFFARPUR', 8, 'BIHAR'),
('MMCT', 'MUMBAI CENTRAL TERMINUS', 9, 'MAHARASHTRA'),
('NDLS', 'NEW DELHI', 15, 'NEW DELHI'),
('NGP', 'NAGPUR', 9, 'MAHARASHTRA'),
('PNBE', 'PATNA', 10, 'BIHAR'),
('PRYJ', 'PRAYAGRAJ', 8, 'UTTAR PRADESH'),
('PUNE', 'PUNE', 6, 'MAHARASHTRA'),
('RXL', 'RAXAUL', 8, 'BIHAR'),
('SBC', 'BENGALURU', 20, 'KARNATKA'),
('SC', 'SECUNDERABAD', 12, 'ANDHRA PRADESH'),
('SINA', 'SRINAGAR', 7, 'JAMMU-KASHMIR'),
('SNSI', 'SAINAGAR SHIRDI TERMINUS', 6, 'MAHARASHTRA'),
('SOP', 'SHIVPUR', 3, 'MAHARASHTRA'),
('ST', 'SURAT', 6, 'GUJARAT'),
('SUR', 'SOLAPUR', 5, 'MAHARASHTRA'),
('UHL', 'UNA HIMACHAL', 7, 'HIMACHAL PRADESH'),
('VSG', 'GOA', 8, 'GOA'),
('VSKP', 'VISHAKHAPATNAM', 20, 'ANDHRA PRADESH'),
('YPR', 'YESVANTPUR MAIN', 7, 'KARNATAKA');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketno` int(100) NOT NULL,
  `trainid` int(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `bookdate` date NOT NULL,
  `jourdate` date NOT NULL,
  `discount` int(50) NOT NULL,
  `fare` int(50) NOT NULL,
  `agentid` int(50) DEFAULT NULL,
  `commision` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticketno`, `trainid`, `source`, `dest`, `bookdate`, `jourdate`, `discount`, `fare`, `agentid`, `commision`) VALUES
(1, 22344, 'mumbai', 'gujarat', '2024-05-20', '2024-05-20', 600, 2700, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticketno` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `board_stn` varchar(10) DEFAULT NULL,
  `drop_stn` varchar(10) DEFAULT NULL,
  `date_of_journey` date DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `fare` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `travel_agent_id` varchar(10) DEFAULT NULL,
  `agent_comm` float DEFAULT NULL,
  `trainno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_coach_mapping`
--

CREATE TABLE `ticket_coach_mapping` (
  `train_no` int(11) DEFAULT NULL,
  `coach_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `train_no` int(11) NOT NULL,
  `train_name` varchar(30) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`train_no`, `train_name`, `capacity`) VALUES
(10102, 'MANDOVI EXPRESS', 90),
(10103, 'MANDOVI EXPRESS', 90),
(11019, 'KONARK EXPRESS', 90),
(11020, 'KONARK EXPRESS', 90),
(11301, 'UDYAN EXPRESS', 90),
(11302, 'UDYAN EXPRESS', 90),
(12715, 'SACHKHAND EXPRESS', 90),
(12716, 'SACHKHAND EXPRESS', 90),
(13021, 'MITHILA EXPRESS', 90),
(13022, 'MITHILA EXPRESS', 90),
(14552, 'HIMACHAL EXPRESS', 90),
(14553, 'HIMACHAL EXPRESS', 90),
(16505, 'BENGALURU EXPRESS', 90),
(16506, 'BENGALURU EXPRESS', 90),
(17325, 'VISHWAMANAVA EXPRESS', 90),
(17326, 'VISHWAMANAVA EXPRESS', 90),
(18234, 'NARMADA EXPRESS', 90),
(18235, 'NARMADA EXPRESS', 90),
(18505, 'SUVIDHA EXPRESS', 90),
(18506, 'SUVIDHA EXPRESS', 90),
(19627, 'AJMER SUPERFAST EXPRESS', 90),
(19628, 'AJMER SUPERFAST EXPRESS', 90),
(22222, 'SHIRDI VANDEBHARAT EXPRESS', 90),
(22223, 'SHIRDI VANDEBHARAT EXPRESS', 90),
(22945, 'SAURASHTRA MAIL', 90),
(22946, 'SAURASHTRA MAIL', 90);

-- --------------------------------------------------------

--
-- Table structure for table `train_coaches`
--

CREATE TABLE `train_coaches` (
  `train_no` int(11) NOT NULL,
  `coach_no` varchar(10) NOT NULL,
  `date_from` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_coaches`
--

INSERT INTO `train_coaches` (`train_no`, `coach_no`, `date_from`) VALUES
(10102, 'CN001', '2023-11-14'),
(10102, 'CN002', '2023-11-14'),
(10102, 'CN003', '2023-11-14'),
(10102, 'CN004', '2023-11-14'),
(10102, 'CN005', '2023-11-14'),
(10102, 'CN006', '2023-11-14'),
(11019, 'CN013', '2023-11-14'),
(11019, 'CN014', '2023-11-14'),
(11019, 'CN015', '2023-11-14'),
(11019, 'CN016', '2023-11-14'),
(11019, 'CN017', '2023-11-14'),
(11019, 'CN018', '2023-11-14'),
(11301, 'CN007', '2023-11-14'),
(11301, 'CN008', '2023-11-14'),
(11301, 'CN009', '2023-11-14'),
(11301, 'CN010', '2023-11-14'),
(11301, 'CN011', '2023-11-14'),
(11301, 'CN012', '2023-11-14'),
(12715, 'CN019', '2023-11-14'),
(12715, 'CN020', '2023-11-14'),
(12715, 'CN021', '2023-11-14'),
(12715, 'CN022', '2023-11-14'),
(12715, 'CN023', '2023-11-14'),
(12715, 'CN024', '2023-11-14'),
(13021, 'CN025', '2023-11-14'),
(13021, 'CN026', '2023-11-14'),
(13021, 'CN027', '2023-11-14'),
(13021, 'CN028', '2023-11-14'),
(13021, 'CN029', '2023-11-14'),
(13021, 'CN030', '2023-11-14'),
(14552, 'CN031', '2023-11-14'),
(14552, 'CN032', '2023-11-14'),
(14552, 'CN033', '2023-11-14'),
(14552, 'CN034', '2023-11-14'),
(14552, 'CN035', '2023-11-14'),
(14552, 'CN036', '2023-11-14'),
(17325, 'CN037', '2023-11-14'),
(17325, 'CN038', '2023-11-14'),
(17325, 'CN039', '2023-11-14'),
(17325, 'CN040', '2023-11-14'),
(17325, 'CN041', '2023-11-14'),
(17325, 'CN042', '2023-11-14'),
(18234, 'CN043', '2023-11-14'),
(18234, 'CN044', '2023-11-14'),
(18234, 'CN045', '2023-11-14'),
(18234, 'CN046', '2023-11-14'),
(18234, 'CN047', '2023-11-14'),
(18234, 'CN048', '2023-11-14'),
(19627, 'CN049', '2023-11-14'),
(19627, 'CN050', '2023-11-14'),
(19627, 'CN051', '2023-11-14'),
(19627, 'CN052', '2023-11-14'),
(19627, 'CN053', '2023-11-14'),
(19627, 'CN054', '2023-11-14'),
(22222, 'CN055', '2023-11-14'),
(22222, 'CN056', '2023-11-14'),
(22222, 'CN057', '2023-11-14'),
(22222, 'CN058', '2023-11-14'),
(22222, 'CN059', '2023-11-14'),
(22222, 'CN060', '2023-11-14'),
(22945, 'CN061', '2023-11-14'),
(22945, 'CN062', '2023-11-14'),
(22945, 'CN063', '2023-11-14'),
(22945, 'CN064', '2023-11-14'),
(22945, 'CN065', '2023-11-14'),
(22945, 'CN066', '2023-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `train_schedule`
--

CREATE TABLE `train_schedule` (
  `route_no` varchar(10) NOT NULL,
  `train_no` int(11) NOT NULL,
  `station_code` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `EAT` time DEFAULT NULL,
  `AAT` time DEFAULT NULL,
  `EDT` time DEFAULT NULL,
  `ADT` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_schedule`
--

INSERT INTO `train_schedule` (`route_no`, `train_no`, `station_code`, `Date`, `EAT`, `AAT`, `EDT`, `ADT`) VALUES
('RT001', 22945, 'CSMT', '2023-10-10', '12:00:00', NULL, '09:00:00', '09:00:00'),
('RT001', 22945, 'CSMT', '2023-10-12', NULL, NULL, '09:00:00', '09:00:00'),
('RT001', 22945, 'CSMT', '2023-10-14', NULL, NULL, '09:00:00', '09:00:00'),
('RT001', 22945, 'JAM', '2023-10-10', '12:00:00', '14:52:00', NULL, NULL),
('RT001', 22945, 'JAM', '2023-10-12', '14:40:00', '14:40:00', NULL, NULL),
('RT001', 22945, 'JAM', '2023-10-14', '14:40:00', '14:52:00', NULL, NULL),
('RT002', 14553, 'NDLS', '2023-12-25', NULL, NULL, '07:00:00', '07:00:00'),
('RT002', 14553, 'UHL', '2023-12-25', '13:10:00', '13:10:00', NULL, NULL),
('RT003', 11019, 'SC', '2023-12-28', NULL, NULL, '10:00:00', '10:00:00'),
('RT003', 11019, 'VSKP', '2023-12-28', '18:30:00', '18:30:00', NULL, NULL),
('RT004', 22223, 'CSMT', '2024-01-03', NULL, NULL, '11:40:00', '11:40:00'),
('RT004', 22223, 'SNSI', '2024-01-03', '17:00:00', '17:00:00', NULL, NULL),
('RT005', 11301, 'CSMT', '2024-01-15', NULL, NULL, '08:25:00', '08:25:00'),
('RT005', 11301, 'SUR', '2024-01-15', '15:00:00', '15:00:00', NULL, NULL),
('RT006', 12715, 'BPL', '2024-01-25', NULL, NULL, '20:15:00', '20:15:00'),
('RT006', 12715, 'NDLS', '2024-01-26', '04:00:00', '04:00:00', NULL, NULL),
('RT007', 19628, 'AII', '2024-02-05', '13:00:00', '13:00:00', NULL, NULL),
('RT007', 19628, 'LNL', '2024-02-05', NULL, NULL, '02:15:00', '02:15:00'),
('RT008', 17325, 'DWR', '2024-02-15', NULL, NULL, '05:00:00', '05:00:00'),
('RT008', 17325, 'SBC', '2024-02-15', '10:00:00', '10:00:00', NULL, NULL),
('RT009', 18234, 'BPL', '2024-02-25', NULL, NULL, '21:15:00', '21:15:00'),
('RT009', 18234, 'INDB', '2024-02-26', '00:15:00', '00:15:00', NULL, NULL),
('RT010', 10103, 'CSMT', '2024-03-05', NULL, NULL, '03:00:00', '03:00:00'),
('RT010', 10103, 'VSG', '2024-03-05', '09:00:00', '09:00:00', NULL, NULL),
('RT011', 13022, 'HWH', '2024-03-16', '04:00:00', '04:00:00', NULL, NULL),
('RT011', 13022, 'RXL', '2024-03-15', NULL, NULL, '10:10:00', '10:10:00'),
('RT014', 22946, 'CSMT', '2023-10-10', '22:20:00', '22:20:00', NULL, NULL),
('RT014', 22946, 'CSMT', '2023-10-12', '22:20:00', '22:20:00', NULL, NULL),
('RT014', 22946, 'CSMT', '2023-10-14', '22:20:00', '22:20:00', NULL, NULL),
('RT014', 22946, 'JAM', '2023-10-10', NULL, NULL, '16:40:00', '16:40:00'),
('RT014', 22946, 'JAM', '2023-10-12', NULL, NULL, '16:40:00', '16:40:00'),
('RT014', 22946, 'JAM', '2023-10-14', NULL, NULL, '16:40:00', '16:40:00'),
('RT015', 14552, 'NDLS', '2023-12-25', '22:20:00', '22:20:00', NULL, NULL),
('RT015', 14552, 'UHL', '2023-12-25', NULL, NULL, '16:10:00', '16:10:00'),
('RT016', 11020, 'SC', '2024-12-29', '00:20:00', '00:20:00', NULL, NULL),
('RT016', 11020, 'VSKP', '2023-12-28', NULL, NULL, '21:30:00', '21:30:00'),
('RT017', 22222, 'CSMT', '2024-01-04', '00:20:00', '00:20:00', NULL, NULL),
('RT017', 22222, 'SNSI', '2024-01-03', NULL, NULL, '19:00:00', '19:00:00'),
('RT018', 11302, 'CSMT', '2024-01-15', '23:35:00', '23:35:00', NULL, NULL),
('RT018', 11302, 'SUR', '2024-01-15', NULL, NULL, '17:00:00', '17:00:00'),
('RT019', 12716, 'BPL', '2024-01-26', '13:45:00', '13:45:00', NULL, NULL),
('RT019', 12716, 'NDLS', '2024-01-26', NULL, NULL, '06:00:00', '06:00:00'),
('RT020', 19627, 'AII', '2024-02-05', NULL, NULL, '16:00:00', '16:00:00'),
('RT020', 19627, 'LNL', '2024-02-06', '02:45:00', '02:45:00', NULL, NULL),
('RT021', 17326, 'DWR', '2024-02-15', '17:00:00', '17:00:00', NULL, NULL),
('RT021', 17326, 'SBC', '2024-02-15', NULL, NULL, '12:00:00', '12:00:00'),
('RT022', 18235, 'BPL', '2024-02-26', '06:15:00', '06:15:00', NULL, NULL),
('RT022', 18235, 'INDB', '2024-02-26', NULL, NULL, '03:15:00', '03:15:00'),
('RT023', 10102, 'CSMT', '2024-03-05', '18:15:00', '18:15:00', NULL, NULL),
('RT023', 10102, 'VSG', '2024-03-05', NULL, NULL, '12:15:00', '12:15:00'),
('RT024', 13021, 'HWH', '2024-03-16', NULL, NULL, '06:00:00', '06:00:00'),
('RT024', 13021, 'RXL', '2024-03-16', '23:50:00', '23:50:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `travel_agents`
--

CREATE TABLE `travel_agents` (
  `id` varchar(100) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agents`
--

INSERT INTO `travel_agents` (`id`, `name`, `age`, `email_id`, `gender`, `password`, `contact_no`, `address`) VALUES
('aad43d48e08b11eebb1080913357979f', 'shashi45', 23, 'ranjanshashi9471@gmail.com', 'male', '$2b$10$S07lkc4oN7WfKHuy2uj9K.4lcVB6NPWULstwtT1vu8g9rg4xiIcIq', '9823212122', 'mehsi'),
('d20e37ed-dbb4-11ee-aabf-80913357979f', 'Shashi', 221, 'ranjanshashi9471@gmail.com', 'male', '$2b$10$rNwPDvW76OE6nzU9iKg6QOll86Id8ifDpCP19U58ghs9vWd6iVRn6', '8709406474', 'mehsi'),
('e2ffb43ee09311eebb1080913357979f', 'shashi54', 23, 'shreyas@gmail.com', 'male', '$2b$10$IE0HLye3qGjCQG0qBxu8..chBr7/Bfl77NDtjvK08OkF0gCkzWtlq', '9823212122', 'mehsi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `emailid` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`emailid`, `passwd`) VALUES
('ana@gmail.com', 'passcfguhnjj'),
('diksh@123', '12345678'),
('dshelar532@gmail.com', '1357910654'),
('hsdc@07678r4', 'passdcfvgfbh'),
('hsdc@07678r412', 'pass'),
('hsdc@0987', 'passcsdvscc'),
('hsdc@09877678r4', 'passxdcfvgbh'),
('hsdc@0987777', 'passcsdvscc'),
('nand@123', 'passcddxdc'),
('Nandini', 'nandushelar20'),
('Nandini@2002', 'pass123456'),
('nandini@908', '1234@345'),
('nandudu@123', '1234fdzvfdvb'),
('nhyg@345', ' hvhgfctrdry'),
('nhyg@3455', 'passfcxzvfx'),
('nhyg@34553', 'passfcxzvfx'),
('nhyg@3455312', 'passfcxzvfx'),
('pooja', 'pojja123'),
('prana@gmail.com', 'Pranu@2323'),
('pranali@gmail.com', 'Pranu@2323'),
('rana@gmail.com', '9876555rfghh'),
('santoshshelar1974@gmail.com', '1234@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_coaches`
--
ALTER TABLE `active_coaches`
  ADD PRIMARY KEY (`coach_no`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintainance`
--
ALTER TABLE `maintainance`
  ADD PRIMARY KEY (`maintain_no`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passtemp`
--
ALTER TABLE `passtemp`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`route_no`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_no`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_schedule`
--
ALTER TABLE `staff_schedule`
  ADD PRIMARY KEY (`route_no`,`train_no`,`staff_no`,`date`),
  ADD KEY `train_no` (`train_no`),
  ADD KEY `staff_no` (`staff_no`);

--
-- Indexes for table `standby_coaches`
--
ALTER TABLE `standby_coaches`
  ADD PRIMARY KEY (`coach_no`,`Date`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`station_code`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketno`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketno`),
  ADD KEY `board_stn` (`board_stn`),
  ADD KEY `drop_stn` (`drop_stn`),
  ADD KEY `travel_agent_id` (`travel_agent_id`);

--
-- Indexes for table `train_coaches`
--
ALTER TABLE `train_coaches`
  ADD KEY `coach_no` (`coach_no`);

--
-- Indexes for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD PRIMARY KEY (`route_no`,`train_no`,`station_code`,`Date`),
  ADD KEY `train_no` (`train_no`),
  ADD KEY `station_no` (`station_code`);

--
-- Indexes for table `travel_agents`
--
ALTER TABLE `travel_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`emailid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintainance`
--
ALTER TABLE `maintainance`
  ADD CONSTRAINT `maintainance_ibfk_1` FOREIGN KEY (`coach_no`) REFERENCES `coaches` (`coach_no`);

--
-- Constraints for table `seat_allocated`
--
ALTER TABLE `seat_allocated`
  ADD CONSTRAINT `seat_allocated_ibfk_1` FOREIGN KEY (`ticket_no`) REFERENCES `tickets` (`ticket_no`),
  ADD CONSTRAINT `seat_allocated_ibfk_3` FOREIGN KEY (`coach_no`) REFERENCES `active_coaches` (`coach_no`),
  ADD CONSTRAINT `seat_allocated_ibfk_4` FOREIGN KEY (`seat_no`) REFERENCES `seats` (`seat_no`);

--
-- Constraints for table `staff_schedule`
--
ALTER TABLE `staff_schedule`
  ADD CONSTRAINT `staff_schedule_ibfk_1` FOREIGN KEY (`route_no`) REFERENCES `routes` (`route_no`),
  ADD CONSTRAINT `staff_schedule_ibfk_2` FOREIGN KEY (`train_no`) REFERENCES `trains` (`train_no`);

--
-- Constraints for table `standby_coaches`
--
ALTER TABLE `standby_coaches`
  ADD CONSTRAINT `standby_coaches_ibfk_2` FOREIGN KEY (`coach_no`) REFERENCES `coaches` (`coach_no`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`board_stn`) REFERENCES `stations` (`station_code`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`drop_stn`) REFERENCES `stations` (`station_code`),
  ADD CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`train_no`) REFERENCES `trains` (`train_no`);

--
-- Constraints for table `train_coaches`
--
ALTER TABLE `train_coaches`
  ADD CONSTRAINT `train_coaches_ibfk_1` FOREIGN KEY (`train_no`) REFERENCES `trains` (`train_no`),
  ADD CONSTRAINT `train_coaches_ibfk_2` FOREIGN KEY (`coach_no`) REFERENCES `active_coaches` (`coach_no`);

--
-- Constraints for table `train_schedule`
--
ALTER TABLE `train_schedule`
  ADD CONSTRAINT `train_schedule_ibfk_1` FOREIGN KEY (`route_no`) REFERENCES `routes` (`route_no`),
  ADD CONSTRAINT `train_schedule_ibfk_2` FOREIGN KEY (`train_no`) REFERENCES `trains` (`train_no`),
  ADD CONSTRAINT `train_schedule_ibfk_3` FOREIGN KEY (`station_code`) REFERENCES `stations` (`station_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
