-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 11:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_communix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` bigint(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `id_role` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `user_name`, `id_role`, `email`, `password`, `confirm_password`) VALUES
(9, 'admin', '21', 'admin@gmail.com', '12345', '12345'),
(18, 'sania', '31', 'syedasaniashah95@gmail.com', '0987', '0987'),
(19, 'abc', '32', 'abc@gmail.com', '5656', '5656'),
(20, 'example', '33', 'example@gmail.com', 'example', 'example'),
(22, 'sania', '35', 'syedasania@gmail.com', '786', '786'),
(23, 'anees', '36', 'anees@gmail.com', '789', '789');

-- --------------------------------------------------------

--
-- Table structure for table `block_plot`
--

CREATE TABLE `block_plot` (
  `plot_id` bigint(255) NOT NULL,
  `society` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `blockid` varchar(255) NOT NULL,
  `plotmarla` varchar(255) NOT NULL,
  `plotstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `block_plot`
--

INSERT INTO `block_plot` (`plot_id`, `society`, `category`, `blockid`, `plotmarla`, `plotstatus`) VALUES
(1, '27', '18', '1', '5 marla', 'open'),
(3, '27', '18', '1', '15 marla', 'open'),
(4, '27', '18', '1', '20 Marla', 'open'),
(5, '27', '16', '4', '5 Marla', 'open'),
(6, '27', '16', '4', '10 Marla', 'open'),
(7, '27', '16', '4', '15 Marla', 'open'),
(8, '27', '18', '3', '5 Marla', 'open'),
(9, '27', '18', '3', '10 Marla', 'open'),
(10, '27', '18', '3', '15 marla', 'open'),
(11, '27', '18', '2', '6 Marla', 'open'),
(12, '27', '18', '2', '12 marla', 'open'),
(13, '27', '18', '2', '20 marla', 'open'),
(14, '27', '16', '5', '6 Marla', 'open'),
(15, '27', '16', '5', '12 marla', 'open'),
(16, '27', '16', '5', '15 marla', 'open'),
(17, '27', '16', '6', '5 Marla', 'open'),
(18, '27', '16', '6', '7 marla', 'open'),
(19, '27', '16', '6', '12 marla', 'open'),
(20, '31', '20', '8', '5 Marla', 'open'),
(21, '31', '20', '8', '6 Marla', 'open'),
(22, '31', '20', '8', '8 marla', 'open'),
(23, '31', '20', '8', '10 Marla', 'open'),
(24, '31', '20', '8', '12 marla', 'open'),
(25, '31', '20', '8', '15 marla', 'open'),
(26, '31', '20', '9', '5 marla', 'open'),
(27, '31', '20', '9', '10 marla', 'open'),
(28, '31', '20', '9', '15 marla', 'open'),
(29, '31', '20', '10', '6 Marla', 'open'),
(30, '31', '20', '10', '10 marla', 'open'),
(31, '31', '20', '10', '12 marla', 'open'),
(32, '31', '20', '10', '15 marla', 'open'),
(33, '31', '21', '11', '5 Marla', 'open'),
(34, '31', '21', '11', '6 Marla', 'open'),
(35, '31', '21', '11', '10 marla', 'open'),
(36, '31', '21', '12', '5 Marla', 'open'),
(37, '31', '21', '12', '12 marla', 'open'),
(38, '31', '21', '12', '15 marla', 'open'),
(39, '31', '21', '13', '6 Marla', 'open'),
(40, '31', '21', '13', '12 marla', 'open'),
(41, '31', '21', '13', '15 marla', 'open'),
(42, '35', '29', '14', '5 marla', 'open'),
(43, '35', '29', '14', '10 marla', 'open'),
(44, '35', '29', '14', '12 marla', 'open'),
(45, '35', '29', '15', '5 Marla', 'open'),
(46, '35', '29', '15', '10 marla', 'open'),
(47, '35', '29', '15', '15 Marla', 'open'),
(48, '35', '29', '16', '7 marla', 'open'),
(49, '35', '29', '16', '10 marla', 'open'),
(50, '35', '29', '16', '15 marla', 'open'),
(51, '35', '26', '17', '10 marla', 'open'),
(52, '35', '26', '17', '15 marla', 'open'),
(53, '35', '26', '17', '20 Marla', 'open'),
(54, '35', '26', '18', '7 marla', 'open'),
(55, '35', '26', '18', '10 marla', 'open'),
(56, '35', '26', '18', '15 marla', 'open'),
(57, '35', '26', '19', '5 Marla', 'open'),
(58, '35', '26', '19', '7 marla', 'open'),
(59, '35', '26', '19', '10 marla', 'open'),
(60, '32', '24', '20', '7 marla', 'open'),
(61, '32', '24', '20', '10 marla', 'open'),
(62, '32', '24', '20', '15 marla', 'open'),
(63, '32', '24', '21', '5 Marla', 'open'),
(64, '32', '24', '21', '10 marla', 'open'),
(65, '32', '24', '21', '15 marla', 'open'),
(66, '32', '24', '22', '5 Marla', 'open'),
(67, '32', '24', '22', '10 marla', 'open'),
(68, '32', '24', '22', '15 marla', 'open'),
(69, '32', '25', '23', '5 Marla', 'open'),
(70, '32', '25', '23', '10 marla', 'open'),
(71, '32', '25', '23', '13 marla', 'open'),
(72, '32', '25', '24', '5 Marla', 'open'),
(73, '32', '25', '24', '10 marla', 'open'),
(74, '32', '25', '24', '15 marla', 'open'),
(75, '32', '25', '25', '5 Marla', 'open'),
(76, '32', '25', '25', '10 marla', 'open'),
(77, '32', '25', '25', '15 marla', 'open'),
(78, '33', '23', '29', '5 Marla', 'open'),
(79, '33', '23', '29', '8 Marla', 'open'),
(80, '33', '23', '29', '10 Marla', 'open'),
(81, '33', '23', '30', '5 Marla', 'open'),
(82, '33', '23', '30', '6 Marla', 'open'),
(83, '33', '23', '30', '10 Marla', 'open'),
(84, '33', '23', '31', '5 Marla', 'open'),
(85, '33', '23', '31', '8 Marla', 'open'),
(86, '33', '23', '31', '10 Marla', 'open'),
(87, '33', '22', '26', '5 Marla', 'open'),
(88, '33', '22', '26', '8 Marla', 'open'),
(89, '33', '22', '26', '15 marla', 'open'),
(90, '33', '22', '27', '5 Marla', 'open'),
(91, '33', '22', '27', '8 Marla', 'open'),
(92, '33', '22', '27', '10 Marla', 'open'),
(93, '33', '22', '27', '15 marla', 'open'),
(94, '33', '22', '28', '5 Marla', 'open'),
(95, '33', '22', '28', '8 Marla', 'open'),
(96, '33', '22', '28', '10 marla', 'open'),
(97, '34', '31', '35', '5 Marla', 'open'),
(98, '34', '31', '35', '8 Marla', 'open'),
(99, '34', '31', '35', '10 Marla', 'open'),
(100, '34', '31', '36', '5 Marla', 'open'),
(101, '34', '31', '36', '15 marla', 'open'),
(102, '34', '31', '36', '20 Marla', 'open'),
(103, '34', '31', '37', '10 marla', 'open'),
(104, '34', '31', '37', '20 Marla', 'open'),
(105, '34', '31', '37', '25 Marla', 'open'),
(106, '34', '30', '32', '5 Marla', 'open'),
(107, '34', '30', '32', '8 Marla', 'open'),
(108, '34', '30', '32', '10 marla', 'open'),
(109, '34', '30', '33', '5 Marla', 'open'),
(110, '34', '30', '33', '8 Marla', 'open'),
(111, '34', '30', '33', '15 marla', 'open'),
(112, '34', '30', '34', '7 marla', 'open'),
(113, '34', '30', '34', '10 Marla', 'open'),
(114, '34', '30', '34', '15 marla', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `broker`
--

CREATE TABLE `broker` (
  `broker_id` bigint(255) NOT NULL,
  `broker_name` varchar(255) NOT NULL,
  `broker_so` varchar(255) NOT NULL,
  `broker_cnic` varchar(255) NOT NULL,
  `broker_phoneno` varchar(255) NOT NULL,
  `broker_otherno` varchar(255) NOT NULL,
  `broker_image` varchar(255) NOT NULL,
  `broker_comession` varchar(255) NOT NULL,
  `broker_DOB` varchar(255) NOT NULL,
  `broker_email` varchar(255) NOT NULL,
  `broker_passport` varchar(255) NOT NULL,
  `broker_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `broker`
--

INSERT INTO `broker` (`broker_id`, `broker_name`, `broker_so`, `broker_cnic`, `broker_phoneno`, `broker_otherno`, `broker_image`, `broker_comession`, `broker_DOB`, `broker_email`, `broker_passport`, `broker_address`) VALUES
(2, 'Syeda Sania Shah', 'Syed Maqsood Shah', '234567', '03007617488', '03107867455', '27316.jpg', '10 Comession', '2024-08-11', 'syedasaniashah@gmail.com', '234567', 'sadat house'),
(16, 'Iqra', 'Ali', '9334567', '833456', '9123456', '70196.jpg', '60 Comession', '2011-05-09', 'iqra@gmail.com', '4254981470', 'samundri'),
(17, 'Esha', 'Rafique', '7545678', '8834567', '5134567', '19880.jpg', '20 Comession', '2011-06-27', 'sania@gmail.com', '45678', 'samundri');

-- --------------------------------------------------------

--
-- Table structure for table `card_assign`
--

CREATE TABLE `card_assign` (
  `card_id` bigint(255) NOT NULL,
  `registration_no` varchar(255) NOT NULL,
  `card_email` varchar(255) NOT NULL,
  `card_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_assign`
--

INSERT INTO `card_assign` (`card_id`, `registration_no`, `card_email`, `card_pic`) VALUES
(1, '946', 'aabanali4545@gmail.com', '1724744686.png'),
(2, '574', 'syedasaniashah@gmail.com', '1724745794.png'),
(3, '831', 'rikava@mailinator.com', '1724842866.png'),
(4, '782', 'qema@mailinator.com', '1724926134.png'),
(5, '993', 'fatima@gmail.com', '1724927634.png'),
(6, '145', 'kulohuduk@mailinator.com', '1724931986.png'),
(7, '762', 'huqekywas@mailinator.com', '1725011040.png'),
(8, '484', 'qyjosyjuvy@mailinator.com', '1725021074.png'),
(9, '589', 'lyrecikic@mailinator.com', '1725021185.png'),
(10, '59', 'gogep@mailinator.com', '1726309319.png'),
(11, '103', 'nekivut@mailinator.com', '1726312476.png'),
(12, '104', 'zaniab@gmail.com', '1726313303.png'),
(13, '66', 'deqag@mailinator.com', '1726749533.png'),
(14, '520', 'kobojy@mailinator.com', '1726751874.png'),
(15, '201', 'syedafatima@gmail.com', '1727688161.png'),
(16, '101', 'balu@mailinator.com', '1727688294.png'),
(17, '103', 'esha@gmail.com', '1728873530.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` bigint(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comments_id`, `name`, `email`, `pic`, `message`) VALUES
(1, 'Alisa Reeves', 'gyli@mailinator.com', '66120.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
(2, 'Halla Ross', 'pydydehyki@mailinator.com', '27226.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
(3, 'Althea Morris', 'ziqy@mailinator.com', '59314.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
(4, 'Jada Haney', 'lahil@mailinator.com', '10847.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book'),
(5, 'Magee Kerr', 'tipyceh@mailinator.com', '44445.jpg', 'nice Website');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` bigint(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_lastname` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_contactno` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `customer_name`, `customer_lastname`, `customer_email`, `customer_contactno`, `subject`, `message`) VALUES
(2, 'syeda sania', 'Syed Maqsood', 'syedasaniashah95@gmail.com', '34567890', 'computer', 'hello'),
(5, 'Simone Serrano', 'Wilson', 'xehyf@mailinator.com', '+1 (862) 331-4157', 'In quia illum deser', 'Qui tempore ut volu'),
(6, 'Aiko Richard', 'Estrada', 'qepecamy@mailinator.com', '+1 (701) 501-6785', 'Reprehenderit amet ', 'Commodi ea quod in e');

-- --------------------------------------------------------

--
-- Table structure for table `convert_society`
--

CREATE TABLE `convert_society` (
  `cid` bigint(255) NOT NULL,
  `idsociety` varchar(255) NOT NULL,
  `society` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `convert_society`
--

INSERT INTO `convert_society` (`cid`, `idsociety`, `society`) VALUES
(96, '31', 'Ahmad villas');

-- --------------------------------------------------------

--
-- Table structure for table `enterdata`
--

CREATE TABLE `enterdata` (
  `enterid` bigint(255) NOT NULL,
  `enter_email` varchar(255) NOT NULL,
  `enterdate` varchar(255) NOT NULL,
  `entertime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exitsdata`
--

CREATE TABLE `exitsdata` (
  `exitsid` bigint(255) NOT NULL,
  `exits_email` varchar(255) NOT NULL,
  `exitsdate` varchar(255) NOT NULL,
  `exitstime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` bigint(255) NOT NULL,
  `expenses_society` varchar(255) NOT NULL,
  `expensecategory` varchar(255) NOT NULL,
  `expense_name` varchar(255) NOT NULL,
  `expense_amount` varchar(255) NOT NULL,
  `expense_date` varchar(255) NOT NULL,
  `expense_status` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `person_phoneno` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `expenses_society`, `expensecategory`, `expense_name`, `expense_amount`, `expense_date`, `expense_status`, `description`, `person_name`, `person_phoneno`, `paid_amount`) VALUES
(2, '27', '3', 'Remedios Hill', '11', '1974-02-27', 'personpaid', 'Minim iure aute quia', 'Rowan Hampton', '225', '92'),
(3, '35', '1', 'Kendall Jenkins', '4376543', '2002-05-13', 'officepaid', 'Rerum corrupti iust', 'Sigourney Griffin', '879', '2024-08-31'),
(4, '32', '1', 'Lee Stanley', '18', '1988-02-27', 'officepaid', 'Ratione quae labore ', 'Price Hensley', '741', '8');

-- --------------------------------------------------------

--
-- Table structure for table `expenses_category`
--

CREATE TABLE `expenses_category` (
  `expensescategory_id` bigint(255) NOT NULL,
  `expenses_category` varchar(255) NOT NULL,
  `expenses_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses_category`
--

INSERT INTO `expenses_category` (`expensescategory_id`, `expenses_category`, `expenses_description`) VALUES
(3, 'House', 'good'),
(4, 'Apartment', 'beautiful');

-- --------------------------------------------------------

--
-- Table structure for table `installement_plan`
--

CREATE TABLE `installement_plan` (
  `installement_id` bigint(255) NOT NULL,
  `installement_year` varchar(255) NOT NULL,
  `installement_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `installement_plan`
--

INSERT INTO `installement_plan` (`installement_id`, `installement_year`, `installement_status`) VALUES
(1, '1', 'ON'),
(2, '2', 'ON'),
(3, '3', 'ON'),
(4, '4', 'ON'),
(5, '5', 'ON'),
(6, '6', 'ON');

-- --------------------------------------------------------

--
-- Table structure for table `installment_payment`
--

CREATE TABLE `installment_payment` (
  `payment_id` bigint(255) NOT NULL,
  `installement_no` varchar(255) NOT NULL,
  `paybookingid` varchar(255) NOT NULL,
  `monthly_installement` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_draft` varchar(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `cheque_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `installment_payment`
--

INSERT INTO `installment_payment` (`payment_id`, `installement_no`, `paybookingid`, `monthly_installement`, `payment_mode`, `bank_name`, `bank_draft`, `payment_date`, `cheque_date`) VALUES
(1, 'installement 1', '1', '25000', 'cash', '', '', '2024-09-30', ''),
(2, 'installement 2', '1', '25000', 'cash', '', '', '2024-10-30', ''),
(3, 'installement 3', '1', '25000', 'cash', '', '', '2024-11-30', ''),
(4, 'installement 4', '1', '25000', 'cash', '', '', '2024-12-30', ''),
(5, 'installement 5', '1', '25000', 'cash', '', '', '2024-12-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `invester`
--

CREATE TABLE `invester` (
  `invester_id` bigint(255) NOT NULL,
  `invester_name` varchar(255) NOT NULL,
  `invester_so` varchar(255) NOT NULL,
  `invester_cnic` varchar(255) NOT NULL,
  `invester_phoneno` varchar(255) NOT NULL,
  `invester_otherno` varchar(255) NOT NULL,
  `invester_image` varchar(255) NOT NULL,
  `invester_society` varchar(255) NOT NULL,
  `invester_value` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invester`
--

INSERT INTO `invester` (`invester_id`, `invester_name`, `invester_so`, `invester_cnic`, `invester_phoneno`, `invester_otherno`, `invester_image`, `invester_society`, `invester_value`) VALUES
(6, 'Talha', 'Amir', '7234567', '17', '33234567', 'team-2.jpg', '27', 89),
(7, 'Haseeb', 'Hadir', '2345678', '12345678', '1234567', '69586.jpg', '32', 99),
(9, 'Mubeen', 'Shah', '12345678', '8753878', '876543789', '340-3400395_guy-left-call-center-man-png.png', '31', 99),
(24, 'Salman', 'Ali', '71', '8', '66', '61589.jpg', '31', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` bigint(255) NOT NULL,
  `notice_name` varchar(255) NOT NULL,
  `notice_status` varchar(255) NOT NULL,
  `notice_details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `notice_name`, `notice_status`, `notice_details`) VALUES
(2, 'Lynn Cleveland', 'shownotice', 'Ut dicta sed sed nis'),
(4, 'Ella Merritt', 'shownotice', 'Dolores qui sunt ip'),
(7, 'Duncan George', 'hidenotice', 'Beatae possimus obc');

-- --------------------------------------------------------

--
-- Table structure for table `plotsbooking`
--

CREATE TABLE `plotsbooking` (
  `booking_id` bigint(255) NOT NULL,
  `reg_no` bigint(255) NOT NULL,
  `membership_no` bigint(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `societybooking_name` varchar(255) NOT NULL,
  `categorybooking_type` varchar(255) NOT NULL,
  `societybooking_block` varchar(255) NOT NULL,
  `societybooking_plot` varchar(255) NOT NULL,
  `booking_plotcategory` varchar(255) NOT NULL,
  `avaliable_plots` varchar(255) NOT NULL,
  `applicantname` varchar(255) NOT NULL,
  `applicant_relation` varchar(255) NOT NULL,
  `applicant_cnic` varchar(255) NOT NULL,
  `applicant_passportno` varchar(255) NOT NULL,
  `applicant_DOB` varchar(255) NOT NULL,
  `applicant_domicile` varchar(255) NOT NULL,
  `applicant_email` varchar(255) NOT NULL,
  `applicant_phoneno` varchar(255) NOT NULL,
  `applicant_otherno` varchar(255) NOT NULL,
  `applicant_address` varchar(255) NOT NULL,
  `applicant_pic` varchar(255) NOT NULL,
  `applicant_payment` varchar(255) NOT NULL,
  `ratepermarla` bigint(255) NOT NULL,
  `totalprice` bigint(255) NOT NULL,
  `downpayment` bigint(255) NOT NULL,
  `remainingpayment` bigint(255) NOT NULL,
  `paymentstatus` varchar(255) NOT NULL,
  `paymentmode` varchar(255) NOT NULL,
  `installementplan` varchar(255) NOT NULL,
  `installementdate` varchar(255) NOT NULL,
  `nextinstallementdate` varchar(255) NOT NULL,
  `monthlyinstallement` varchar(255) NOT NULL,
  `totalinstallement` bigint(255) NOT NULL,
  `remaininginstallement` bigint(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `bankdraft` varchar(255) NOT NULL,
  `chequedate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plotsbooking`
--

INSERT INTO `plotsbooking` (`booking_id`, `reg_no`, `membership_no`, `date`, `societybooking_name`, `categorybooking_type`, `societybooking_block`, `societybooking_plot`, `booking_plotcategory`, `avaliable_plots`, `applicantname`, `applicant_relation`, `applicant_cnic`, `applicant_passportno`, `applicant_DOB`, `applicant_domicile`, `applicant_email`, `applicant_phoneno`, `applicant_otherno`, `applicant_address`, `applicant_pic`, `applicant_payment`, `ratepermarla`, `totalprice`, `downpayment`, `remainingpayment`, `paymentstatus`, `paymentmode`, `installementplan`, `installementdate`, `nextinstallementdate`, `monthlyinstallement`, `totalinstallement`, `remaininginstallement`, `bankname`, `bankdraft`, `chequedate`, `status`) VALUES
(7, 102, 102, '2024-10-14', '33', '23', '30', '82', 'Middle', '128', 'Fatima Maqsood', 'Maqsood Shah', '3451657981', '345', '1997-02-12', 'punjab', 'syedaFatima@gmail.com', '1234567890', '1234567890', '234e5vrtufyuijok', '52929.jpg', 'givepayment', 100000, 600000, 200000, 400000, 'installement', 'cash', '1', '2024-10-14', '2024-11-14', '33333', 12, 12, '', '', '', 'disapproved'),
(8, 103, 103, '2024-10-14', '32', '25', '25', '76', 'Front', '445', 'Esha', 'Rafique', '72234567890', '4456', '1983-07-15', 'punjab', 'esha@gmail.com', '24234567890', '33723456789', 'samundri punjab', '68319.jpg', 'givepayment', 100000, 1000000, 500000, 500000, 'installement', 'cash', '1', '2024-10-14', '2024-11-14', '41667', 12, 12, '', '', '', 'disapproved'),
(9, 5, 293, '1983-12-25', '35', '29', '15', '45', 'Corner', '950', 'Sadia', 'Mohsin', '48456', '33', '1999-02-02', 'punjab', 'sadia@gmail.com', '85', '312', 'Rerum voluptas et de', 'testimonial-2.jpg', '', 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, '', '', '', ''),
(10, 898, 559, '1977-03-04', '27', '18', '2', '12', 'Middle', '141', 'Nisha', 'Asgher', '8045676', '35', '2011-12-15', 'Voluptates et a dict', 'nisha@gmail.com', '88', '744', 'Aliquip eveniet mag', 'testimonial-1.jpg', '', 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, '', '', '', ''),
(11, 816, 130, '1989-07-07', '33', '23', '30', '81', 'Middle', '124', 'Zaniab', 'Maqsood', '10', '21', '2001-07-21', 'Eius dolores quisqua', 'zee@gmail.com', '9', '22', 'samundri punjab', 'testimonial-4.jpg', '', 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, '', '', '', ''),
(12, 594, 114, '1991-01-02', '31', '21', '12', '37', 'Corner', '702', 'Julian Graves', 'Accusantium Nam est ', '31', '32', '1995-05-21', 'Pariatur In nemo ex', 'huvylo@mailinator.com', '8', '1', 'Aliquam irure impedi', 'carousel-1.jpg', '', 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, '', '', '', ''),
(13, 838, 969, '1990-10-19', '35', '29', '15', '46', 'Middle', '962', 'Kalia Ruiz', 'Illum ipsum ut in v', '71', '76', '2000-07-04', 'Sequi ea ea esse ra', 'pakukyren@mailinator.com', '88', '808', 'Ab accusamus rerum i', 'carousel-1.jpg', '', 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `plot_category`
--

CREATE TABLE `plot_category` (
  `plotcategory_id` bigint(255) NOT NULL,
  `societyplot_name` varchar(255) NOT NULL,
  `categoryplot_type` varchar(255) NOT NULL,
  `blockplot` varchar(255) NOT NULL,
  `plotcategory_marla` varchar(255) NOT NULL,
  `plot_category` varchar(255) NOT NULL,
  `totalplots` varchar(255) NOT NULL,
  `numberplots` varchar(255) NOT NULL,
  `remainingplots` varchar(255) NOT NULL,
  `booked_plot` varchar(255) NOT NULL,
  `plotcategory_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plot_category`
--

INSERT INTO `plot_category` (`plotcategory_id`, `societyplot_name`, `categoryplot_type`, `blockplot`, `plotcategory_marla`, `plot_category`, `totalplots`, `numberplots`, `remainingplots`, `booked_plot`, `plotcategory_status`) VALUES
(1, '27', '18', '1', '1', 'Middle', '7', 'a:7:{i:0;s:3:\"101\";i:1;s:3:\"102\";i:2;s:3:\"103\";i:3;s:3:\"104\";i:4;s:3:\"105\";i:5;s:3:\"106\";i:6;s:3:\"107\";}', '6', '1', 'open'),
(2, '27', '18', '1', '3', 'Front', '2', 'a:2:{i:0;s:3:\"201\";i:1;s:3:\"202\";}', '2', '0', 'open'),
(3, '27', '16', '4', '5', 'Corner', '4', 'a:4:{i:0;s:3:\"301\";i:1;s:3:\"302\";i:2;s:3:\"303\";i:3;s:3:\"304\";}', '4', '0', 'open'),
(4, '27', '18', '2', '11', 'Front', '5', 'a:5:{i:0;s:3:\"204\";i:1;s:3:\"205\";i:2;s:3:\"206\";i:3;s:3:\"207\";i:4;s:3:\"208\";}', '5', '0', 'open'),
(5, '27', '16', '6', '17', 'Front', '3', 'a:3:{i:0;s:3:\"308\";i:1;s:3:\"309\";i:2;s:3:\"310\";}', '3', '0', 'open'),
(6, '27', '18', '3', '10', 'Corner', '2', 'a:2:{i:0;s:3:\"409\";i:1;s:3:\"410\";}', '2', '0', 'open'),
(7, '27', '18', '3', '9', 'Front', '7', 'a:7:{i:0;s:3:\"501\";i:1;s:3:\"502\";i:2;s:3:\"503\";i:3;s:3:\"504\";i:4;s:3:\"505\";i:5;s:3:\"506\";i:6;s:3:\"507\";}', '7', '0', 'open'),
(8, '27', '18', '1', '1', 'Front', '2', 'a:2:{i:0;s:3:\"303\";i:1;s:3:\"309\";}', '1', '1', 'open'),
(9, '27', '18', '1', '3', 'Corner', '2', 'a:2:{i:0;s:3:\"333\";i:1;s:3:\"332\";}', '2', '0', 'open'),
(10, '27', '16', '4', '5', 'Front', '7', 'a:7:{i:0;s:3:\"901\";i:1;s:3:\"902\";i:2;s:3:\"903\";i:3;s:3:\"904\";i:4;s:3:\"905\";i:5;s:3:\"906\";i:6;s:3:\"907\";}', '7', '0', 'open'),
(11, '27', '18', '2', '11', 'Corner', '4', 'a:4:{i:0;s:3:\"222\";i:1;s:3:\"223\";i:2;s:3:\"224\";i:3;s:3:\"225\";}', '4', '0', 'open'),
(12, '27', '16', '6', '17', 'Corner', '6', 'a:6:{i:0;s:3:\"666\";i:1;s:3:\"667\";i:2;s:3:\"668\";i:3;s:3:\"669\";i:4;s:3:\"670\";i:5;s:3:\"671\";}', '6', '0', 'open'),
(14, '31', '20', '8', '20', 'Front', '4', 'a:4:{i:0;s:3:\"101\";i:1;s:3:\"102\";i:2;s:3:\"103\";i:3;s:3:\"104\";}', '4', '0', 'open'),
(15, '31', '20', '8', '20', 'Corner', '5', 'a:5:{i:0;s:3:\"201\";i:1;s:3:\"202\";i:2;s:3:\"203\";i:3;s:3:\"204\";i:4;s:3:\"205\";}', '5', '0', 'open'),
(16, '31', '20', '8', '21', 'Middle', '3', 'a:3:{i:0;s:3:\"301\";i:1;s:3:\"302\";i:2;s:3:\"303\";}', '3', '0', 'open'),
(17, '31', '20', '8', '21', 'Corner', '4', 'a:4:{i:0;s:3:\"401\";i:1;s:3:\"402\";i:2;s:3:\"403\";i:3;s:3:\"404\";}', '4', '0', 'open'),
(18, '31', '20', '8', '22', 'Front', '6', 'a:6:{i:0;s:3:\"405\";i:1;s:3:\"406\";i:2;s:3:\"407\";i:3;s:3:\"408\";i:4;s:3:\"409\";i:5;s:3:\"410\";}', '6', '0', 'open'),
(19, '31', '20', '8', '22', 'Middle', '2', 'a:2:{i:0;s:3:\"411\";i:1;s:3:\"412\";}', '2', '0', 'open'),
(20, '31', '20', '8', '22', 'Corner', '4', 'a:4:{i:0;s:3:\"413\";i:1;s:3:\"414\";i:2;s:3:\"415\";i:3;s:3:\"416\";}', '4', '0', 'open'),
(21, '31', '20', '8', '23', 'Front', '2', 'a:2:{i:0;s:3:\"420\";i:1;s:3:\"421\";}', '2', '0', 'open'),
(22, '31', '20', '8', '23', 'Middle', '4', 'a:4:{i:0;s:3:\"422\";i:1;s:3:\"423\";i:2;s:3:\"424\";i:3;s:3:\"425\";}', '4', '0', 'open'),
(23, '31', '20', '8', '24', 'Front', '2', 'a:2:{i:0;s:3:\"426\";i:1;s:3:\"427\";}', '2', '0', 'open'),
(24, '31', '20', '8', '24', 'Middle', '2', 'a:2:{i:0;s:3:\"427\";i:1;s:3:\"428\";}', '2', '0', 'open'),
(25, '31', '20', '8', '25', 'Front', '5', 'a:5:{i:0;s:3:\"429\";i:1;s:3:\"430\";i:2;s:3:\"431\";i:3;s:3:\"432\";i:4;s:3:\"433\";}', '5', '0', 'open'),
(26, '31', '20', '8', '25', 'Corner', '2', 'a:2:{i:0;s:3:\"436\";i:1;s:3:\"437\";}', '2', '0', 'open'),
(27, '31', '20', '9', '26', 'Front', '3', 'a:3:{i:0;s:3:\"441\";i:1;s:3:\"442\";i:2;s:3:\"443\";}', '3', '0', 'open'),
(28, '31', '20', '9', '26', 'Corner', '5', 'a:5:{i:0;s:3:\"451\";i:1;s:3:\"452\";i:2;s:3:\"453\";i:3;s:3:\"454\";i:4;s:3:\"455\";}', '5', '0', 'open'),
(29, '31', '20', '9', '27', 'Front', '6', 'a:6:{i:0;s:3:\"461\";i:1;s:3:\"462\";i:2;s:3:\"463\";i:3;s:3:\"464\";i:4;s:3:\"465\";i:5;s:3:\"466\";}', '6', '0', 'open'),
(30, '31', '20', '9', '27', 'Middle', '4', 'a:4:{i:0;s:3:\"471\";i:1;s:3:\"472\";i:2;s:3:\"473\";i:3;s:0:\"\";}', '4', '0', 'open'),
(31, '31', '20', '9', '28', 'Front', '3', 'a:3:{i:0;s:3:\"467\";i:1;s:3:\"468\";i:2;s:3:\"469\";}', '3', '0', 'open'),
(32, '31', '20', '9', '28', 'Middle', '2', 'a:2:{i:0;s:3:\"477\";i:1;s:3:\"478\";}', '2', '0', 'open'),
(33, '31', '20', '10', '29', 'Front', '8', 'a:8:{i:0;s:3:\"480\";i:1;s:3:\"481\";i:2;s:3:\"482\";i:3;s:3:\"483\";i:4;s:3:\"484\";i:5;s:3:\"485\";i:6;s:3:\"486\";i:7;s:3:\"487\";}', '8', '0', 'open'),
(34, '31', '20', '10', '29', 'Corner', '3', 'a:3:{i:0;s:3:\"490\";i:1;s:3:\"491\";i:2;s:3:\"492\";}', '3', '0', 'open'),
(35, '31', '20', '10', '30', 'Front', '4', 'a:4:{i:0;s:3:\"493\";i:1;s:3:\"494\";i:2;s:3:\"495\";i:3;s:3:\"496\";}', '4', '0', 'open'),
(36, '31', '20', '10', '30', 'Corner', '5', 'a:5:{i:0;s:3:\"501\";i:1;s:3:\"502\";i:2;s:3:\"503\";i:3;s:3:\"504\";i:4;s:3:\"505\";}', '5', '0', 'open'),
(37, '31', '20', '10', '31', 'middle', '6', 'a:6:{i:0;s:3:\"505\";i:1;s:3:\"506\";i:2;s:3:\"507\";i:3;s:3:\"508\";i:4;s:3:\"509\";i:5;s:3:\"510\";}', '6', '0', 'open'),
(38, '31', '20', '10', '31', 'Corner', '3', 'a:3:{i:0;s:3:\"520\";i:1;s:3:\"531\";i:2;s:3:\"532\";}', '3', '0', 'open'),
(39, '31', '20', '10', '32', 'Front', '2', 'a:2:{i:0;s:3:\"534\";i:1;s:3:\"535\";}', '2', '0', 'open'),
(40, '31', '20', '10', '32', 'Corner', '4', 'a:4:{i:0;s:3:\"220\";i:1;s:3:\"221\";i:2;s:3:\"222\";i:3;s:3:\"223\";}', '4', '0', 'open'),
(41, '31', '21', '11', '33', 'Front', '3', 'a:3:{i:0;s:3:\"301\";i:1;s:3:\"302\";i:2;s:3:\"303\";}', '3', '0', 'open'),
(42, '31', '21', '11', '33', 'Corner', '4', 'a:4:{i:0;s:3:\"241\";i:1;s:3:\"242\";i:2;s:3:\"243\";i:3;s:3:\"244\";}', '4', '0', 'open'),
(43, '31', '21', '11', '34', 'Corner', '7', 'a:7:{i:0;s:3:\"251\";i:1;s:3:\"252\";i:2;s:3:\"253\";i:3;s:3:\"255\";i:4;s:3:\"256\";i:5;s:3:\"257\";i:6;s:3:\"258\";}', '7', '0', 'open'),
(44, '31', '21', '11', '34', 'Middle', '5', 'a:5:{i:0;s:3:\"460\";i:1;s:3:\"461\";i:2;s:3:\"462\";i:3;s:3:\"463\";i:4;s:3:\"464\";}', '5', '0', 'open'),
(45, '31', '21', '11', '35', 'Front', '4', 'a:4:{i:0;s:3:\"471\";i:1;s:3:\"472\";i:2;s:3:\"473\";i:3;s:3:\"474\";}', '4', '0', 'open'),
(46, '31', '21', '11', '35', 'Corner', '4', 'a:4:{i:0;s:3:\"480\";i:1;s:3:\"481\";i:2;s:3:\"482\";i:3;s:3:\"483\";}', '4', '0', 'open'),
(47, '31', '21', '12', '36', 'Front', '4', 'a:4:{i:0;s:3:\"490\";i:1;s:3:\"491\";i:2;s:3:\"492\";i:3;s:3:\"493\";}', '4', '0', 'open'),
(48, '31', '21', '12', '36', 'Corner', '2', 'a:2:{i:0;s:3:\"496\";i:1;s:3:\"497\";}', '2', '0', 'open'),
(49, '31', '21', '12', '37', 'Front', '3', 'a:3:{i:0;s:3:\"501\";i:1;s:3:\"502\";i:2;s:3:\"503\";}', '3', '0', 'open'),
(50, '31', '21', '12', '38', 'Front', '7', 'a:7:{i:0;s:3:\"601\";i:1;s:3:\"602\";i:2;s:3:\"603\";i:3;s:3:\"604\";i:4;s:3:\"605\";i:5;s:3:\"606\";i:6;s:3:\"607\";}', '7', '0', 'open'),
(51, '31', '21', '12', '37', 'Corner', '2', 'a:2:{i:0;s:3:\"701\";i:1;s:3:\"702\";}', '2', '0', 'open'),
(52, '31', '21', '12', '38', 'Middle', '4', 'a:4:{i:0;s:3:\"391\";i:1;s:3:\"392\";i:2;s:3:\"393\";i:3;s:3:\"394\";}', '4', '0', 'open'),
(53, '31', '21', '13', '39', 'Corner', '3', 'a:3:{i:0;s:3:\"335\";i:1;s:3:\"336\";i:2;s:3:\"337\";}', '3', '0', 'open'),
(54, '31', '21', '13', '39', 'Middle', '5', 'a:5:{i:0;s:3:\"225\";i:1;s:3:\"226\";i:2;s:3:\"227\";i:3;s:3:\"228\";i:4;s:3:\"229\";}', '5', '0', 'open'),
(55, '31', '21', '13', '40', 'Front', '3', 'a:3:{i:0;s:3:\"351\";i:1;s:3:\"352\";i:2;s:3:\"353\";}', '3', '0', 'open'),
(56, '31', '21', '13', '41', 'Middle', '2', 'a:2:{i:0;s:3:\"299\";i:1;s:3:\"300\";}', '2', '0', 'open'),
(57, '31', '21', '13', '40', 'Corner', '4', 'a:4:{i:0;s:3:\"188\";i:1;s:3:\"189\";i:2;s:3:\"190\";i:3;s:0:\"\";}', '4', '0', 'open'),
(58, '31', '21', '13', '41', 'Corner', '3', 'a:3:{i:0;s:3:\"150\";i:1;s:3:\"151\";i:2;s:3:\"153\";}', '3', '0', 'open'),
(59, '27', '18', '1', '4', 'Front', '4', 'a:4:{i:0;s:3:\"201\";i:1;s:3:\"202\";i:2;s:3:\"203\";i:3;s:3:\"204\";}', '4', '0', 'open'),
(60, '27', '18', '1', '4', 'Middle', '3', 'a:3:{i:0;s:3:\"301\";i:1;s:3:\"302\";i:2;s:3:\"303\";}', '3', '0', 'open'),
(61, '27', '18', '2', '12', 'Corner', '4', 'a:4:{i:0;s:3:\"130\";i:1;s:3:\"131\";i:2;s:3:\"132\";i:3;s:3:\"133\";}', '4', '0', 'open'),
(62, '27', '18', '2', '12', 'Middle', '2', 'a:2:{i:0;s:3:\"140\";i:1;s:3:\"141\";}', '2', '0', 'open'),
(63, '27', '18', '2', '13', 'Front', '5', 'a:5:{i:0;s:3:\"445\";i:1;s:3:\"446\";i:2;s:3:\"447\";i:3;s:3:\"448\";i:4;s:3:\"449\";}', '5', '0', 'open'),
(64, '27', '18', '2', '13', 'Middle', '4', 'a:4:{i:0;s:3:\"455\";i:1;s:3:\"456\";i:2;s:3:\"457\";i:3;s:3:\"458\";}', '4', '0', 'open'),
(65, '27', '16', '4', '6', 'Front', '5', 'a:5:{i:0;s:3:\"260\";i:1;s:3:\"261\";i:2;s:3:\"267\";i:3;s:3:\"265\";i:4;s:3:\"266\";}', '5', '0', 'open'),
(66, '27', '16', '4', '6', 'Corner', '3', 'a:3:{i:0;s:3:\"555\";i:1;s:3:\"556\";i:2;s:3:\"557\";}', '3', '0', 'open'),
(67, '27', '16', '4', '7', 'Front', '4', 'a:4:{i:0;s:3:\"290\";i:1;s:3:\"291\";i:2;s:3:\"293\";i:3;s:3:\"295\";}', '4', '0', 'open'),
(68, '27', '16', '4', '7', 'Middle', '3', 'a:3:{i:0;s:3:\"390\";i:1;s:3:\"391\";i:2;s:3:\"392\";}', '3', '0', 'open'),
(69, '27', '18', '3', '8', 'Front', '6', 'a:6:{i:0;s:3:\"630\";i:1;s:3:\"631\";i:2;s:3:\"632\";i:3;s:3:\"633\";i:4;s:3:\"634\";i:5;s:3:\"635\";}', '6', '0', 'open'),
(70, '27', '18', '3', '8', 'Corner', '3', 'a:3:{i:0;s:3:\"701\";i:1;s:3:\"702\";i:2;s:3:\"703\";}', '3', '0', 'open'),
(71, '27', '18', '3', '9', 'middle', '2', 'a:2:{i:0;s:3:\"705\";i:1;s:3:\"706\";}', '2', '0', 'open'),
(72, '27', '18', '3', '10', 'Front', '2', 'a:2:{i:0;s:3:\"801\";i:1;s:3:\"802\";}', '2', '0', 'open'),
(73, '27', '16', '6', '18', 'Front', '4', 'a:4:{i:0;s:3:\"810\";i:1;s:3:\"811\";i:2;s:3:\"812\";i:3;s:3:\"813\";}', '4', '0', 'open'),
(74, '27', '16', '6', '18', 'Corner', '4', 'a:4:{i:0;s:3:\"409\";i:1;s:3:\"410\";i:2;s:3:\"411\";i:3;s:3:\"412\";}', '4', '0', 'open'),
(75, '27', '16', '5', '16', 'Front', '4', 'a:4:{i:0;s:3:\"888\";i:1;s:3:\"889\";i:2;s:3:\"890\";i:3;s:3:\"891\";}', '4', '0', 'open'),
(76, '27', '16', '5', '16', 'Corner', '2', 'a:2:{i:0;s:3:\"401\";i:1;s:3:\"402\";}', '2', '0', 'open'),
(77, '27', '16', '5', '15', 'Front', '2', 'a:2:{i:0;s:3:\"255\";i:1;s:3:\"256\";}', '2', '0', 'open'),
(78, '27', '16', '5', '15', 'Corner', '4', 'a:4:{i:0;s:3:\"309\";i:1;s:3:\"310\";i:2;s:3:\"311\";i:3;s:3:\"312\";}', '4', '0', 'open'),
(79, '27', '16', '5', '14', 'Front', '3', 'a:3:{i:0;s:3:\"820\";i:1;s:3:\"821\";i:2;s:3:\"822\";}', '3', '0', 'open'),
(80, '27', '16', '5', '14', 'Middle', '4', 'a:4:{i:0;s:3:\"831\";i:1;s:3:\"832\";i:2;s:3:\"833\";i:3;s:3:\"834\";}', '4', '0', 'open'),
(81, '35', '29', '16', '48', 'Middle', '4', 'a:4:{i:0;s:3:\"911\";i:1;s:3:\"912\";i:2;s:3:\"913\";i:3;s:3:\"914\";}', '4', '0', 'open'),
(82, '35', '29', '16', '48', 'Corner', '2', 'a:2:{i:0;s:3:\"914\";i:1;s:3:\"915\";}', '2', '0', 'open'),
(83, '35', '29', '16', '49', 'Front', '5', 'a:5:{i:0;s:3:\"920\";i:1;s:3:\"921\";i:2;s:3:\"922\";i:3;s:3:\"923\";i:4;s:3:\"924\";}', '5', '0', 'open'),
(84, '35', '29', '16', '49', 'Corner', '7', 'a:7:{i:0;s:3:\"931\";i:1;s:3:\"932\";i:2;s:3:\"933\";i:3;s:3:\"934\";i:4;s:3:\"935\";i:5;s:3:\"936\";i:6;s:3:\"937\";}', '7', '0', 'open'),
(85, '35', '29', '16', '50', 'Middle', '4', 'a:4:{i:0;s:3:\"940\";i:1;s:3:\"941\";i:2;s:3:\"942\";i:3;s:3:\"943\";}', '4', '0', 'open'),
(86, '35', '29', '16', '50', 'Corner', '2', 'a:2:{i:0;s:3:\"945\";i:1;s:3:\"946\";}', '2', '0', 'open'),
(87, '35', '29', '15', '45', 'Front', '4', 'a:4:{i:0;s:3:\"947\";i:1;s:3:\"948\";i:2;s:3:\"949\";i:3;s:3:\"950\";}', '4', '0', 'open'),
(88, '35', '29', '15', '45', 'Corner', '7', 'a:7:{i:0;s:3:\"950\";i:1;s:3:\"951\";i:2;s:3:\"952\";i:3;s:3:\"953\";i:4;s:3:\"954\";i:5;s:3:\"955\";i:6;s:3:\"956\";}', '7', '0', 'open'),
(89, '35', '29', '15', '46', 'Front', '2', 'a:2:{i:0;s:3:\"303\";i:1;s:3:\"305\";}', '2', '0', 'open'),
(90, '35', '29', '15', '46', 'Middle', '4', 'a:4:{i:0;s:3:\"960\";i:1;s:3:\"961\";i:2;s:3:\"962\";i:3;s:3:\"963\";}', '4', '0', 'open'),
(91, '35', '29', '15', '47', 'Corner', '5', 'a:5:{i:0;s:3:\"966\";i:1;s:3:\"967\";i:2;s:3:\"968\";i:3;s:3:\"969\";i:4;s:3:\"970\";}', '5', '0', 'open'),
(92, '35', '29', '15', '47', 'Middle', '4', 'a:4:{i:0;s:3:\"971\";i:1;s:3:\"972\";i:2;s:3:\"973\";i:3;s:3:\"974\";}', '4', '0', 'open'),
(93, '35', '29', '14', '42', 'Front', '3', 'a:3:{i:0;s:3:\"977\";i:1;s:3:\"978\";i:2;s:3:\"979\";}', '3', '0', 'open'),
(94, '35', '29', '14', '42', 'Middle', '4', 'a:4:{i:0;s:3:\"980\";i:1;s:3:\"981\";i:2;s:3:\"982\";i:3;s:3:\"983\";}', '4', '0', 'open'),
(95, '35', '29', '14', '44', 'Front', '2', 'a:2:{i:0;s:3:\"991\";i:1;s:3:\"992\";}', '2', '0', 'open'),
(96, '35', '29', '14', '44', 'Corner', '3', 'a:3:{i:0;s:3:\"993\";i:1;s:3:\"994\";i:2;s:3:\"995\";}', '3', '0', 'open'),
(97, '35', '29', '14', '43', 'Corner', '3', 'a:3:{i:0;s:3:\"996\";i:1;s:3:\"997\";i:2;s:3:\"998\";}', '3', '0', 'open'),
(98, '35', '29', '14', '43', 'Middle', '2', 'a:2:{i:0;s:3:\"979\";i:1;s:3:\"980\";}', '2', '0', 'open'),
(99, '35', '26', '19', '57', 'Front', '4', 'a:4:{i:0;s:3:\"460\";i:1;s:3:\"461\";i:2;s:3:\"462\";i:3;s:3:\"463\";}', '4', '0', 'open'),
(100, '35', '26', '19', '57', 'Corner', '3', 'a:3:{i:0;s:3:\"855\";i:1;s:3:\"856\";i:2;s:3:\"857\";}', '3', '0', 'open'),
(101, '35', '26', '19', '58', 'Corner', '2', 'a:2:{i:0;s:3:\"403\";i:1;s:3:\"404\";}', '2', '0', 'open'),
(102, '35', '26', '19', '58', 'Middle', '4', 'a:4:{i:0;s:3:\"333\";i:1;s:3:\"334\";i:2;s:3:\"335\";i:3;s:3:\"336\";}', '4', '0', 'open'),
(103, '35', '26', '19', '59', 'Front', '3', 'a:3:{i:0;s:3:\"309\";i:1;s:3:\"310\";i:2;s:3:\"311\";}', '3', '0', 'open'),
(104, '35', '26', '19', '59', 'Middle', '4', 'a:4:{i:0;s:3:\"606\";i:1;s:3:\"607\";i:2;s:3:\"608\";i:3;s:3:\"609\";}', '4', '0', 'open'),
(105, '35', '26', '18', '54', 'Middle', '5', 'a:5:{i:0;s:3:\"101\";i:1;s:3:\"103\";i:2;s:3:\"104\";i:3;s:3:\"105\";i:4;s:3:\"106\";}', '5', '0', 'open'),
(106, '35', '26', '18', '54', 'Corner', '3', 'a:3:{i:0;s:3:\"256\";i:1;s:3:\"257\";i:2;s:3:\"258\";}', '3', '0', 'open'),
(107, '35', '26', '18', '55', 'Front', '3', 'a:3:{i:0;s:3:\"501\";i:1;s:3:\"502\";i:2;s:3:\"503\";}', '3', '0', 'open'),
(108, '35', '26', '18', '55', 'Corner', '2', 'a:2:{i:0;s:3:\"204\";i:1;s:3:\"205\";}', '2', '0', 'open'),
(110, '35', '26', '18', '56', 'Corner', '2', 'a:2:{i:0;s:3:\"490\";i:1;s:3:\"491\";}', '2', '0', 'open'),
(111, '35', '26', '18', '56', 'Middle', '3', 'a:3:{i:0;s:3:\"267\";i:1;s:3:\"268\";i:2;s:3:\"269\";}', '3', '0', 'open'),
(112, '35', '26', '17', '51', 'Corner', '4', 'a:4:{i:0;s:3:\"110\";i:1;s:3:\"111\";i:2;s:3:\"112\";i:3;s:3:\"113\";}', '4', '0', 'open'),
(113, '35', '26', '17', '51', 'Front', '3', 'a:3:{i:0;s:3:\"220\";i:1;s:3:\"221\";i:2;s:3:\"223\";}', '3', '0', 'open'),
(114, '35', '26', '17', '52', 'Corner', '2', 'a:2:{i:0;s:3:\"301\";i:1;s:3:\"302\";}', '2', '0', 'open'),
(115, '35', '26', '17', '52', 'Middle', '2', 'a:2:{i:0;s:3:\"309\";i:1;s:3:\"310\";}', '2', '0', 'open'),
(116, '35', '26', '17', '53', 'Corner', '4', 'a:4:{i:0;s:3:\"401\";i:1;s:3:\"402\";i:2;s:3:\"403\";i:3;s:3:\"404\";}', '4', '0', 'open'),
(117, '35', '26', '17', '53', 'Front', '3', 'a:3:{i:0;s:3:\"315\";i:1;s:3:\"316\";i:2;s:3:\"317\";}', '3', '0', 'open'),
(118, '32', '24', '20', '60', 'Corner', '5', 'a:5:{i:0;s:3:\"915\";i:1;s:3:\"916\";i:2;s:3:\"917\";i:3;s:3:\"918\";i:4;s:3:\"919\";}', '5', '0', 'open'),
(119, '32', '24', '20', '60', 'Middle', '4', 'a:4:{i:0;s:3:\"415\";i:1;s:3:\"416\";i:2;s:3:\"417\";i:3;s:3:\"418\";}', '4', '0', 'open'),
(120, '32', '24', '20', '61', 'Front', '4', 'a:4:{i:0;s:3:\"435\";i:1;s:3:\"436\";i:2;s:3:\"437\";i:3;s:3:\"438\";}', '4', '0', 'open'),
(121, '32', '24', '20', '61', 'Middle', '3', 'a:3:{i:0;s:3:\"515\";i:1;s:3:\"516\";i:2;s:3:\"517\";}', '3', '0', 'open'),
(122, '32', '24', '20', '62', 'Front', '2', 'a:2:{i:0;s:3:\"566\";i:1;s:3:\"567\";}', '2', '0', 'open'),
(123, '32', '24', '20', '62', 'Middle', '3', 'a:3:{i:0;s:3:\"656\";i:1;s:3:\"657\";i:2;s:3:\"658\";}', '3', '0', 'open'),
(124, '32', '24', '21', '63', 'Front', '6', 'a:6:{i:0;s:3:\"255\";i:1;s:3:\"256\";i:2;s:3:\"257\";i:3;s:3:\"258\";i:4;s:3:\"259\";i:5;s:3:\"260\";}', '6', '0', 'open'),
(125, '32', '24', '21', '63', 'Corner', '3', 'a:3:{i:0;s:3:\"505\";i:1;s:3:\"506\";i:2;s:3:\"507\";}', '3', '0', 'open'),
(126, '32', '24', '21', '64', 'Front', '4', 'a:4:{i:0;s:3:\"510\";i:1;s:3:\"511\";i:2;s:3:\"512\";i:3;s:3:\"513\";}', '4', '0', 'open'),
(127, '32', '24', '21', '64', 'Corner', '4', 'a:4:{i:0;s:3:\"515\";i:1;s:3:\"516\";i:2;s:3:\"517\";i:3;s:3:\"518\";}', '4', '0', 'open'),
(128, '32', '24', '21', '65', 'Corner', '3', 'a:3:{i:0;s:3:\"525\";i:1;s:3:\"526\";i:2;s:3:\"527\";}', '3', '0', 'open'),
(129, '32', '24', '21', '65', 'Middle', '5', 'a:5:{i:0;s:3:\"810\";i:1;s:3:\"811\";i:2;s:3:\"812\";i:3;s:3:\"813\";i:4;s:3:\"814\";}', '5', '0', 'open'),
(130, '32', '25', '25', '75', 'Corner', '2', 'a:2:{i:0;s:3:\"220\";i:1;s:3:\"221\";}', '2', '0', 'open'),
(131, '32', '25', '25', '75', 'Middle', '3', 'a:3:{i:0;s:3:\"335\";i:1;s:3:\"336\";i:2;s:3:\"337\";}', '3', '0', 'open'),
(132, '32', '25', '25', '77', 'Corner', '4', 'a:4:{i:0;s:3:\"225\";i:1;s:3:\"226\";i:2;s:3:\"227\";i:3;s:3:\"228\";}', '4', '0', 'open'),
(133, '32', '25', '25', '77', 'Middle', '2', 'a:2:{i:0;s:3:\"333\";i:1;s:3:\"334\";}', '2', '0', 'open'),
(134, '32', '25', '25', '76', 'Corner', '4', 'a:4:{i:0;s:3:\"545\";i:1;s:3:\"546\";i:2;s:3:\"547\";i:3;s:3:\"548\";}', '4', '0', 'open'),
(135, '32', '25', '25', '76', 'Front', '3', 'a:3:{i:0;s:3:\"444\";i:1;s:3:\"445\";i:2;s:3:\"446\";}', '2', '1', 'open'),
(136, '32', '25', '24', '72', 'Front', '5', 'a:5:{i:0;s:3:\"402\";i:1;s:3:\"403\";i:2;s:3:\"404\";i:3;s:3:\"405\";i:4;s:3:\"406\";}', '5', '0', 'open'),
(137, '32', '25', '24', '72', 'Middle', '4', 'a:4:{i:0;s:3:\"489\";i:1;s:3:\"490\";i:2;s:3:\"491\";i:3;s:3:\"492\";}', '4', '0', 'open'),
(138, '32', '25', '24', '74', 'Front', '2', 'a:2:{i:0;s:3:\"202\";i:1;s:3:\"203\";}', '2', '0', 'open'),
(139, '32', '25', '24', '74', 'Middle', '2', 'a:2:{i:0;s:3:\"590\";i:1;s:3:\"591\";}', '2', '0', 'open'),
(140, '32', '25', '23', '69', 'Corner', '4', 'a:4:{i:0;s:3:\"266\";i:1;s:3:\"267\";i:2;s:3:\"268\";i:3;s:3:\"269\";}', '4', '0', 'open'),
(141, '32', '25', '24', '73', 'Corner', '5', 'a:5:{i:0;s:3:\"190\";i:1;s:3:\"191\";i:2;s:3:\"192\";i:3;s:3:\"193\";i:4;s:3:\"194\";}', '5', '0', 'open'),
(142, '32', '25', '24', '73', 'Front', '3', 'a:3:{i:0;s:3:\"305\";i:1;s:3:\"306\";i:2;s:3:\"307\";}', '3', '0', 'open'),
(143, '32', '25', '23', '69', 'Middle', '2', 'a:2:{i:0;s:3:\"333\";i:1;s:3:\"334\";}', '2', '0', 'open'),
(144, '32', '25', '23', '70', 'Front', '3', 'a:3:{i:0;s:3:\"445\";i:1;s:3:\"446\";i:2;s:3:\"447\";}', '3', '0', 'open'),
(145, '32', '25', '23', '70', 'Middle', '4', 'a:4:{i:0;s:3:\"455\";i:1;s:3:\"456\";i:2;s:3:\"457\";i:3;s:3:\"458\";}', '4', '0', 'open'),
(146, '32', '25', '23', '71', 'Corner', '5', 'a:5:{i:0;s:3:\"870\";i:1;s:3:\"871\";i:2;s:3:\"872\";i:3;s:3:\"873\";i:4;s:3:\"874\";}', '5', '0', 'open'),
(147, '32', '25', '23', '71', 'Front', '2', 'a:2:{i:0;s:3:\"309\";i:1;s:3:\"310\";}', '2', '0', 'open'),
(149, '32', '24', '22', '68', 'Front', '3', 'a:3:{i:0;s:3:\"223\";i:1;s:3:\"224\";i:2;s:3:\"225\";}', '3', '0', 'open'),
(150, '32', '24', '22', '68', 'Corner', '3', 'a:3:{i:0;s:3:\"446\";i:1;s:3:\"447\";i:2;s:3:\"448\";}', '3', '0', 'open'),
(151, '32', '24', '22', '67', 'Middle', '2', 'a:2:{i:0;s:3:\"278\";i:1;s:3:\"279\";}', '2', '0', 'open'),
(152, '32', '24', '22', '67', 'Corner', '4', 'a:4:{i:0;s:3:\"444\";i:1;s:3:\"445\";i:2;s:3:\"447\";i:3;s:3:\"449\";}', '4', '0', 'open'),
(153, '32', '24', '22', '66', 'Front', '2', 'a:2:{i:0;s:3:\"332\";i:1;s:3:\"333\";}', '2', '0', 'open'),
(154, '32', '24', '22', '66', 'Middle', '2', 'a:2:{i:0;s:3:\"509\";i:1;s:3:\"567\";}', '2', '0', 'open'),
(155, '33', '23', '29', '78', 'Front', '5', 'a:5:{i:0;s:3:\"101\";i:1;s:3:\"102\";i:2;s:3:\"103\";i:3;s:3:\"104\";i:4;s:3:\"105\";}', '5', '0', 'open'),
(156, '33', '23', '29', '78', 'Corner', '3', 'a:3:{i:0;s:3:\"106\";i:1;s:3:\"107\";i:2;s:3:\"109\";}', '3', '0', 'open'),
(157, '33', '23', '29', '79', 'Middle', '4', 'a:4:{i:0;s:3:\"109\";i:1;s:3:\"110\";i:2;s:3:\"111\";i:3;s:3:\"112\";}', '4', '0', 'open'),
(158, '33', '23', '29', '79', 'Corner', '2', 'a:2:{i:0;s:3:\"113\";i:1;s:3:\"114\";}', '2', '0', 'open'),
(159, '33', '23', '29', '80', 'Front', '3', 'a:3:{i:0;s:3:\"115\";i:1;s:3:\"116\";i:2;s:3:\"117\";}', '3', '0', 'open'),
(160, '33', '23', '29', '80', 'Middle', '3', 'a:3:{i:0;s:3:\"115\";i:1;s:3:\"116\";i:2;s:3:\"117\";}', '3', '0', 'open'),
(161, '33', '23', '30', '81', 'Corner', '2', 'a:2:{i:0;s:3:\"119\";i:1;s:3:\"120\";}', '2', '0', 'open'),
(162, '33', '23', '30', '81', 'Middle', '4', 'a:4:{i:0;s:3:\"121\";i:1;s:3:\"122\";i:2;s:3:\"124\";i:3;s:3:\"125\";}', '4', '0', 'open'),
(163, '33', '23', '30', '82', 'Front', '2', 'a:2:{i:0;s:3:\"127\";i:1;s:3:\"128\";}', '2', '0', 'open'),
(164, '33', '23', '30', '82', 'Middle', '2', 'a:2:{i:0;s:3:\"128\";i:1;s:3:\"129\";}', '1', '1', 'open'),
(165, '33', '23', '30', '83', 'Corner', '2', 'a:2:{i:0;s:3:\"131\";i:1;s:3:\"132\";}', '2', '0', 'open'),
(166, '33', '23', '30', '83', 'Middle', '4', 'a:4:{i:0;s:3:\"133\";i:1;s:3:\"134\";i:2;s:3:\"135\";i:3;s:3:\"136\";}', '4', '0', 'open'),
(167, '33', '23', '31', '84', 'Corner', '4', 'a:4:{i:0;s:3:\"134\";i:1;s:3:\"135\";i:2;s:3:\"137\";i:3;s:3:\"138\";}', '4', '0', 'open'),
(168, '33', '23', '31', '84', 'Front', '2', 'a:2:{i:0;s:3:\"139\";i:1;s:3:\"140\";}', '2', '0', 'open'),
(169, '33', '23', '31', '85', 'Front', '3', 'a:3:{i:0;s:3:\"141\";i:1;s:3:\"142\";i:2;s:3:\"143\";}', '3', '0', 'open'),
(170, '33', '23', '31', '85', 'Middle', '4', 'a:4:{i:0;s:3:\"145\";i:1;s:3:\"146\";i:2;s:3:\"147\";i:3;s:3:\"148\";}', '4', '0', 'open'),
(171, '33', '23', '31', '86', 'Front', '3', 'a:3:{i:0;s:3:\"150\";i:1;s:3:\"151\";i:2;s:3:\"152\";}', '3', '0', 'open'),
(172, '33', '23', '31', '86', 'Corner', '2', 'a:2:{i:0;s:3:\"155\";i:1;s:3:\"154\";}', '2', '0', 'open'),
(173, '33', '22', '26', '87', 'Front', '2', 'a:2:{i:0;s:3:\"158\";i:1;s:3:\"159\";}', '2', '0', 'open'),
(174, '33', '22', '26', '87', 'Corner', '4', 'a:4:{i:0;s:3:\"161\";i:1;s:3:\"162\";i:2;s:3:\"163\";i:3;s:3:\"164\";}', '4', '0', 'open'),
(175, '33', '22', '26', '88', 'Front', '3', 'a:3:{i:0;s:3:\"301\";i:1;s:3:\"302\";i:2;s:3:\"303\";}', '3', '0', 'open'),
(176, '33', '22', '26', '89', 'Front', '2', 'a:2:{i:0;s:3:\"305\";i:1;s:3:\"306\";}', '2', '0', 'open'),
(177, '33', '22', '26', '88', 'Middle', '2', 'a:2:{i:0;s:3:\"321\";i:1;s:3:\"322\";}', '2', '0', 'open'),
(178, '33', '22', '26', '89', 'Corner', '3', 'a:3:{i:0;s:3:\"323\";i:1;s:3:\"324\";i:2;s:3:\"325\";}', '3', '0', 'open'),
(179, '33', '22', '27', '90', 'Front', '3', 'a:3:{i:0;s:3:\"333\";i:1;s:3:\"334\";i:2;s:3:\"335\";}', '3', '0', 'open'),
(180, '33', '22', '27', '90', 'Middle', '4', 'a:4:{i:0;s:3:\"337\";i:1;s:3:\"338\";i:2;s:3:\"339\";i:3;s:3:\"340\";}', '4', '0', 'open'),
(181, '33', '22', '27', '91', 'Front', '2', 'a:2:{i:0;s:3:\"343\";i:1;s:3:\"345\";}', '2', '0', 'open'),
(182, '33', '22', '27', '91', 'Middle', '2', 'a:2:{i:0;s:3:\"338\";i:1;s:3:\"339\";}', '2', '0', 'open'),
(183, '33', '22', '27', '92', 'Corner', '4', 'a:4:{i:0;s:3:\"341\";i:1;s:3:\"342\";i:2;s:3:\"343\";i:3;s:3:\"345\";}', '4', '0', 'open'),
(184, '33', '22', '28', '94', 'Front', '2', 'a:2:{i:0;s:3:\"346\";i:1;s:3:\"347\";}', '2', '0', 'open'),
(185, '33', '22', '27', '92', 'Middle', '3', 'a:3:{i:0;s:3:\"501\";i:1;s:3:\"502\";i:2;s:3:\"503\";}', '3', '0', 'open'),
(186, '33', '22', '28', '95', 'Front', '3', 'a:3:{i:0;s:3:\"506\";i:1;s:3:\"507\";i:2;s:3:\"508\";}', '3', '0', 'open'),
(187, '33', '22', '28', '94', 'Middle', '5', 'a:5:{i:0;s:3:\"601\";i:1;s:3:\"609\";i:2;s:3:\"612\";i:3;s:3:\"617\";i:4;s:3:\"618\";}', '5', '0', 'open'),
(188, '33', '22', '28', '95', 'Corner', '2', 'a:2:{i:0;s:3:\"701\";i:1;s:3:\"709\";}', '2', '0', 'open'),
(189, '33', '22', '28', '96', 'Corner', '2', 'a:2:{i:0;s:3:\"909\";i:1;s:3:\"910\";}', '2', '0', 'open'),
(190, '33', '22', '28', '96', 'Middle', '3', 'a:3:{i:0;s:3:\"405\";i:1;s:3:\"406\";i:2;s:3:\"407\";}', '3', '0', 'open'),
(192, '34', '31', '37', '105', 'Front', '4', 'a:4:{i:0;s:3:\"109\";i:1;s:3:\"110\";i:2;s:3:\"111\";i:3;s:3:\"112\";}', '4', '0', 'open'),
(193, '34', '31', '37', '105', 'Corner', '2', 'a:2:{i:0;s:3:\"202\";i:1;s:3:\"203\";}', '2', '0', 'open'),
(194, '34', '31', '37', '104', 'Corner', '4', 'a:4:{i:0;s:3:\"301\";i:1;s:3:\"302\";i:2;s:3:\"303\";i:3;s:3:\"304\";}', '4', '0', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `plot_installement`
--

CREATE TABLE `plot_installement` (
  `installementid` bigint(255) NOT NULL,
  `installement_number` varchar(255) NOT NULL,
  `pay_id` bigint(255) NOT NULL,
  `monthlyinstallement` bigint(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_draft` varchar(255) NOT NULL,
  `cheque_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pre_bookingsystem`
--

CREATE TABLE `pre_bookingsystem` (
  `prebooking_id` bigint(255) NOT NULL,
  `registration_number` bigint(255) NOT NULL,
  `membership_number` bigint(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `societybooking_id` bigint(255) NOT NULL,
  `categorysocietybooking_id` bigint(255) NOT NULL,
  `property_marla` bigint(255) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `cnic` varchar(255) NOT NULL,
  `passport_no` bigint(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `domicile` varchar(255) NOT NULL,
  `applicant_email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `other_number` varchar(255) NOT NULL,
  `applicant_address` varchar(255) NOT NULL,
  `applicant_picture` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `rate_permarla` bigint(255) NOT NULL,
  `total_price` bigint(255) NOT NULL,
  `down_payment` bigint(255) NOT NULL,
  `remaining_payment` bigint(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `installement_plan` varchar(255) NOT NULL,
  `installement_date` varchar(255) NOT NULL,
  `nextinstallement_date` varchar(255) NOT NULL,
  `monthly_installement` bigint(255) NOT NULL,
  `total_installement` bigint(255) NOT NULL,
  `remaining_installement` bigint(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_draft` varchar(255) NOT NULL,
  `cheque_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pre_bookingsystem`
--

INSERT INTO `pre_bookingsystem` (`prebooking_id`, `registration_number`, `membership_number`, `date`, `societybooking_id`, `categorysocietybooking_id`, `property_marla`, `applicant_name`, `relation`, `cnic`, `passport_no`, `DOB`, `domicile`, `applicant_email`, `phone_number`, `other_number`, `applicant_address`, `applicant_picture`, `payment`, `rate_permarla`, `total_price`, `down_payment`, `remaining_payment`, `payment_status`, `payment_mode`, `installement_plan`, `installement_date`, `nextinstallement_date`, `monthly_installement`, `total_installement`, `remaining_installement`, `bank_name`, `bank_draft`, `cheque_date`, `status`) VALUES
(1, 101, 101, '2024-09-30', 27, 18, 16, 'Syed Mubeen', 'Syed Maqssod', '31413616', 83456789, '2024-09-30', 'punjab', 'syedamubeen@gmail.com', '03009876545', '03009876545', 'Mohallah Rasool Pura ', '68501.png', 'givepayment', 100000, 500000, 200000, 300000, 'installement', 'cash', '1', '2024-09-30', '2024-09-30', 25000, 12, 7, '', '', '2024-09-30', 'approved'),
(2, 102, 102, '2024-09-30', 27, 16, 11, 'Ali', 'Raza', '854567890', 6823456, '2024-09-30', 'punjab', 'ali@gmail.com', '03003456655', '03003456655', 'In ad facilis labore', '39915.jpg', 'givepayment', 100000, 700000, 400000, 300000, 'installement', 'cash', '2', '2024-09-30', '2024-09-30', 12500, 24, 24, '', '', '2024-09-30', 'disapproved'),
(3, 103, 104, '2024-09-30', 27, 16, 11, 'iqra', 'hanseef', '9463478', 237648317, '2024-09-30', 'punjab', 'iqra@gmail.com', '03009876543', '03009876543', 'Elit dolorem aliqua teu', '83291.jpg', 'givepayment', 100000, 700000, 300000, 400000, 'installement', 'cash', '2', '2024-09-30', '2024-09-30', 16667, 24, 24, '', '', '2024-09-30', 'cancel'),
(5, 979, 980, '2024-10-13', 27, 18, 17, 'Malcolm Becker', 'Excepturi consequunt', '90', 77, '2024-10-13', 'Exercitationem atque', 'geke@mailinator.com', '408', '936', 'Laboriosam voluptat', '31557.png', 'givepayment', 100000, 500000, 200000, 300000, 'installement', 'cash', '1', '2024-10-13', '2024-10-13', 25000, 12, 12, '', '', '2024-10-13', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `pre_plotsbooking`
--

CREATE TABLE `pre_plotsbooking` (
  `pre_id` bigint(255) NOT NULL,
  `presociety_id` bigint(255) NOT NULL,
  `precategory_id` bigint(255) NOT NULL,
  `plot_marla` bigint(255) NOT NULL,
  `plot_no` bigint(255) NOT NULL,
  `plot_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pre_plotsbooking`
--

INSERT INTO `pre_plotsbooking` (`pre_id`, `presociety_id`, `precategory_id`, `plot_marla`, `plot_no`, `plot_status`) VALUES
(10, 27, 16, 5, 200, 'open'),
(11, 27, 16, 7, 188, 'open'),
(12, 27, 16, 10, 178, 'open'),
(13, 27, 16, 12, 166, 'open'),
(14, 27, 16, 15, 151, 'open'),
(15, 27, 16, 20, 131, 'open'),
(16, 27, 18, 5, 200, 'open'),
(17, 27, 18, 7, 188, 'open'),
(18, 27, 18, 10, 178, 'open'),
(19, 27, 18, 12, 166, 'open'),
(20, 27, 18, 15, 151, 'open'),
(21, 27, 18, 20, 131, 'open'),
(22, 31, 20, 5, 200, 'open'),
(23, 31, 20, 7, 195, 'open'),
(24, 31, 20, 8, 188, 'open'),
(25, 31, 20, 10, 180, 'open'),
(26, 31, 20, 12, 170, 'open'),
(27, 31, 20, 15, 158, 'open'),
(28, 31, 20, 20, 143, 'open'),
(29, 31, 21, 5, 200, 'open'),
(30, 31, 21, 6, 194, 'open'),
(31, 31, 21, 8, 188, 'open'),
(32, 31, 21, 10, 178, 'open'),
(33, 31, 21, 12, 166, 'open'),
(34, 31, 21, 15, 151, 'open'),
(35, 31, 21, 20, 131, 'open'),
(36, 32, 24, 5, 200, 'open'),
(37, 32, 24, 8, 188, 'open'),
(38, 32, 24, 10, 197, 'open'),
(39, 32, 24, 12, 167, 'open'),
(41, 32, 25, 5, 200, 'open'),
(42, 32, 25, 8, 188, 'open'),
(43, 32, 25, 10, 167, 'open'),
(45, 33, 22, 5, 200, 'open'),
(46, 33, 22, 7, 188, 'open'),
(47, 33, 22, 10, 167, 'open'),
(49, 33, 23, 5, 190, 'open'),
(50, 33, 23, 8, 167, 'open'),
(51, 33, 23, 10, 156, 'open'),
(52, 33, 23, 12, 145, 'open'),
(53, 33, 23, 15, 167, 'open'),
(54, 34, 30, 5, 200, 'open'),
(55, 34, 30, 8, 190, 'open'),
(56, 34, 30, 10, 167, 'open'),
(57, 34, 30, 12, 144, 'open'),
(58, 34, 31, 5, 200, 'open'),
(59, 34, 31, 8, 188, 'open'),
(60, 34, 31, 10, 166, 'open'),
(61, 34, 31, 15, 155, 'open'),
(62, 35, 29, 5, 200, 'open'),
(63, 35, 29, 8, 188, 'open'),
(64, 35, 29, 10, 177, 'open'),
(65, 35, 29, 12, 144, 'open'),
(66, 35, 26, 5, 190, 'open'),
(67, 35, 26, 7, 166, 'open'),
(68, 35, 26, 10, 177, 'open'),
(69, 35, 26, 12, 155, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` bigint(255) NOT NULL,
  `role_name` varchar(500) NOT NULL,
  `role_society` varchar(500) NOT NULL,
  `access_society` varchar(500) NOT NULL,
  `access_category` varchar(500) NOT NULL,
  `access_preplotsbooking` varchar(500) NOT NULL,
  `access_prebookingsystem` varchar(500) NOT NULL,
  `access_installmentplan` varchar(500) NOT NULL,
  `access_societyblock` varchar(500) NOT NULL,
  `access_blockplot` varchar(500) NOT NULL,
  `access_plotcategory` varchar(500) NOT NULL,
  `access_plotbooking` varchar(500) NOT NULL,
  `access_invester` varchar(500) NOT NULL,
  `access_broker` varchar(500) NOT NULL,
  `access_role` varchar(500) NOT NULL,
  `access_user` varchar(500) NOT NULL,
  `access_notice` varchar(500) NOT NULL,
  `access_expensescategory` varchar(500) NOT NULL,
  `access_expenses` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_society`, `access_society`, `access_category`, `access_preplotsbooking`, `access_prebookingsystem`, `access_installmentplan`, `access_societyblock`, `access_blockplot`, `access_plotcategory`, `access_plotbooking`, `access_invester`, `access_broker`, `access_role`, `access_user`, `access_notice`, `access_expensescategory`, `access_expenses`) VALUES
(21, 'super Admin', 'allsociety', 'a:5:{i:0;s:10:\"addsociety\";i:1;s:11:\"viewsociety\";i:2;s:11:\"editsociety\";i:3;s:13:\"removesociety\";i:4;s:13:\"statussociety\";}', 'a:5:{i:0;s:11:\"addplottype\";i:1;s:12:\"viewplottype\";i:2;s:12:\"editplottype\";i:3;s:14:\"removeplottype\";i:4;s:14:\"plottypestatus\";}', 'a:5:{i:0;s:18:\"addpreplotsbooking\";i:1;s:19:\"viewpreplotsbooking\";i:2;s:19:\"editpreplotsbooking\";i:3;s:21:\"removepreplotsbooking\";i:4;s:21:\"preplotsbookingstatus\";}', 'a:9:{i:0;s:19:\"addprebookingsystem\";i:1;s:20:\"viewprebookingsystem\";i:2;s:20:\"editprebookingsystem\";i:3;s:22:\"removeprebookingsystem\";i:4;s:24:\"approvedprebookingsystem\";i:5;s:28:\"installementprebookingsystem\";i:6;s:28:\"viewdetails_prebookingsystem\";i:7;s:32:\"sendconformationprebookingsystem\";i:8;s:22:\"cancelprebookingsystem\";}', 'a:5:{i:0;s:18:\"addinstallmentplan\";i:1;s:19:\"viewinstallmentplan\";i:2;s:19:\"editinstallmentplan\";i:3;s:21:\"removeinstallmentplan\";i:4;s:21:\"installmentplanstatus\";}', 'a:5:{i:0;s:15:\"addsocietyblock\";i:1;s:16:\"viewsocietyblock\";i:2;s:16:\"editsocietyblock\";i:3;s:18:\"removesocietyblock\";i:4;s:18:\"societyblockstatus\";}', 'a:5:{i:0;s:12:\"addblockplot\";i:1;s:13:\"viewblockplot\";i:2;s:13:\"editblockplot\";i:3;s:15:\"removeblockplot\";i:4;s:15:\"blockplotstatus\";}', 'a:5:{i:0;s:15:\"addplotcategory\";i:1;s:16:\"viewplotcategory\";i:2;s:16:\"editplotcategory\";i:3;s:18:\"removeplotcategory\";i:4;s:18:\"plotcategorystatus\";}', 'a:9:{i:0;s:14:\"addplotbooking\";i:1;s:15:\"viewplotbooking\";i:2;s:15:\"editplotbooking\";i:3;s:17:\"removeplotbooking\";i:4;s:22:\"viewdetailsplotbooking\";i:5;s:19:\"approvedplotbooking\";i:6;s:17:\"cancelplotbooking\";i:7;s:23:\"installementplotbooking\";i:8;s:23:\"conformationplotbooking\";}', 'a:4:{i:0;s:11:\"addinvester\";i:1;s:12:\"viewinvester\";i:2;s:12:\"editinvester\";i:3;s:14:\"removeinvester\";}', 'a:4:{i:0;s:9:\"addbroker\";i:1;s:10:\"viewbroker\";i:2;s:10:\"editbroker\";i:3;s:12:\"removebroker\";}', 'a:5:{i:0;s:7:\"addrole\";i:1;s:8:\"viewrole\";i:2;s:8:\"editrole\";i:3;s:10:\"removerole\";i:4;s:11:\"roledetails\";}', 'a:4:{i:0;s:7:\"adduser\";i:1;s:8:\"viewuser\";i:2;s:8:\"edituser\";i:3;s:10:\"removeuser\";}', 'a:5:{i:0;s:9:\"addnotice\";i:1;s:10:\"viewnotice\";i:2;s:10:\"editnotice\";i:3;s:12:\"removenotice\";i:4;s:12:\"noticestatus\";}', 'a:4:{i:0;s:19:\"addexpensescategory\";i:1;s:21:\"vieweexpensescategory\";i:2;s:20:\"editexpensescategory\";i:3;s:22:\"removeexpensescategory\";}', 'a:4:{i:0;s:11:\"addexpenses\";i:1;s:12:\"viewexpenses\";i:2;s:12:\"editexpenses\";i:3;s:14:\"removeexpenses\";}'),
(31, 'testrole', '27', 'a:5:{i:0;s:10:\"addsociety\";i:1;s:11:\"viewsociety\";i:2;s:11:\"editsociety\";i:3;s:13:\"removesociety\";i:4;s:13:\"statussociety\";}', 'a:5:{i:0;s:11:\"addplottype\";i:1;s:12:\"viewplottype\";i:2;s:12:\"editplottype\";i:3;s:14:\"removeplottype\";i:4;s:14:\"plottypestatus\";}', 'a:5:{i:0;s:18:\"addpreplotsbooking\";i:1;s:19:\"viewpreplotsbooking\";i:2;s:19:\"editpreplotsbooking\";i:3;s:21:\"removepreplotsbooking\";i:4;s:21:\"preplotsbookingstatus\";}', 'a:0:{}', 'a:5:{i:0;s:18:\"addinstallmentplan\";i:1;s:19:\"viewinstallmentplan\";i:2;s:19:\"editinstallmentplan\";i:3;s:21:\"removeinstallmentplan\";i:4;s:21:\"installmentplanstatus\";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}'),
(32, 'abc', '32', 'a:5:{i:0;s:10:\"addsociety\";i:1;s:11:\"viewsociety\";i:2;s:11:\"editsociety\";i:3;s:13:\"removesociety\";i:4;s:13:\"statussociety\";}', 'a:5:{i:0;s:11:\"addplottype\";i:1;s:12:\"viewplottype\";i:2;s:12:\"editplottype\";i:3;s:14:\"removeplottype\";i:4;s:14:\"plottypestatus\";}', 'a:5:{i:0;s:18:\"addpreplotsbooking\";i:1;s:19:\"viewpreplotsbooking\";i:2;s:19:\"editpreplotsbooking\";i:3;s:21:\"removepreplotsbooking\";i:4;s:21:\"preplotsbookingstatus\";}', 'a:9:{i:0;s:19:\"addprebookingsystem\";i:1;s:20:\"viewprebookingsystem\";i:2;s:20:\"editprebookingsystem\";i:3;s:22:\"removeprebookingsystem\";i:4;s:24:\"approvedprebookingsystem\";i:5;s:28:\"installementprebookingsystem\";i:6;s:27:\"viewdetailsprebookingsystem\";i:7;s:32:\"sendconformationprebookingsystem\";i:8;s:22:\"cancelprebookingsystem\";}', 'a:5:{i:0;s:18:\"addinstallmentplan\";i:1;s:19:\"viewinstallmentplan\";i:2;s:19:\"editinstallmentplan\";i:3;s:21:\"removeinstallmentplan\";i:4;s:21:\"installmentplanstatus\";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}'),
(33, 'example', '33', 'a:5:{i:0;s:10:\"addsociety\";i:1;s:11:\"viewsociety\";i:2;s:11:\"editsociety\";i:3;s:13:\"removesociety\";i:4;s:13:\"statussociety\";}', 'a:5:{i:0;s:11:\"addplottype\";i:1;s:12:\"viewplottype\";i:2;s:12:\"editplottype\";i:3;s:14:\"removeplottype\";i:4;s:14:\"plottypestatus\";}', 'a:5:{i:0;s:18:\"addpreplotsbooking\";i:1;s:19:\"viewpreplotsbooking\";i:2;s:19:\"editpreplotsbooking\";i:3;s:21:\"removepreplotsbooking\";i:4;s:21:\"preplotsbookingstatus\";}', 'a:9:{i:0;s:19:\"addprebookingsystem\";i:1;s:20:\"viewprebookingsystem\";i:2;s:20:\"editprebookingsystem\";i:3;s:22:\"removeprebookingsystem\";i:4;s:24:\"approvedprebookingsystem\";i:5;s:28:\"installementprebookingsystem\";i:6;s:27:\"viewdetailsprebookingsystem\";i:7;s:32:\"sendconformationprebookingsystem\";i:8;s:22:\"cancelprebookingsystem\";}', 'a:5:{i:0;s:18:\"addinstallmentplan\";i:1;s:19:\"viewinstallmentplan\";i:2;s:19:\"editinstallmentplan\";i:3;s:21:\"removeinstallmentplan\";i:4;s:21:\"installmentplanstatus\";}', 'a:5:{i:0;s:15:\"addsocietyblock\";i:1;s:16:\"viewsocietyblock\";i:2;s:16:\"editsocietyblock\";i:3;s:18:\"removesocietyblock\";i:4;s:18:\"societyblockstatus\";}', 'a:5:{i:0;s:12:\"addblockplot\";i:1;s:13:\"viewblockplot\";i:2;s:13:\"editblockplot\";i:3;s:15:\"removeblockplot\";i:4;s:15:\"blockplotstatus\";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:4:{i:0;s:19:\"addexpensescategory\";i:1;s:21:\"vieweexpensescategory\";i:2;s:20:\"editexpensescategory\";i:3;s:22:\"removeexpensescategory\";}', 'a:4:{i:0;s:11:\"addexpenses\";i:1;s:12:\"viewexpenses\";i:2;s:12:\"editexpenses\";i:3;s:14:\"removeexpenses\";}'),
(35, 'Assistant Manager', '32', 'a:5:{i:0;s:10:\"addsociety\";i:1;s:11:\"viewsociety\";i:2;s:11:\"editsociety\";i:3;s:13:\"removesociety\";i:4;s:13:\"statussociety\";}', 'a:5:{i:0;s:11:\"addplottype\";i:1;s:12:\"viewplottype\";i:2;s:12:\"editplottype\";i:3;s:14:\"removeplottype\";i:4;s:14:\"plottypestatus\";}', 'a:5:{i:0;s:18:\"addpreplotsbooking\";i:1;s:19:\"viewpreplotsbooking\";i:2;s:19:\"editpreplotsbooking\";i:3;s:21:\"removepreplotsbooking\";i:4;s:21:\"preplotsbookingstatus\";}', 'a:9:{i:0;s:19:\"addprebookingsystem\";i:1;s:20:\"viewprebookingsystem\";i:2;s:20:\"editprebookingsystem\";i:3;s:22:\"removeprebookingsystem\";i:4;s:24:\"approvedprebookingsystem\";i:5;s:28:\"installementprebookingsystem\";i:6;s:27:\"viewdetailsprebookingsystem\";i:7;s:32:\"sendconformationprebookingsystem\";i:8;s:22:\"cancelprebookingsystem\";}', 'a:5:{i:0;s:18:\"addinstallmentplan\";i:1;s:19:\"viewinstallmentplan\";i:2;s:19:\"editinstallmentplan\";i:3;s:21:\"removeinstallmentplan\";i:4;s:21:\"installmentplanstatus\";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}'),
(36, 'Admin', 'allsociety', 'a:5:{i:0;s:10:\"addsociety\";i:1;s:11:\"viewsociety\";i:2;s:11:\"editsociety\";i:3;s:13:\"removesociety\";i:4;s:13:\"statussociety\";}', 'a:5:{i:0;s:11:\"addplottype\";i:1;s:12:\"viewplottype\";i:2;s:12:\"editplottype\";i:3;s:14:\"removeplottype\";i:4;s:14:\"plottypestatus\";}', 'a:5:{i:0;s:18:\"addpreplotsbooking\";i:1;s:19:\"viewpreplotsbooking\";i:2;s:19:\"editpreplotsbooking\";i:3;s:21:\"removepreplotsbooking\";i:4;s:21:\"preplotsbookingstatus\";}', 'a:9:{i:0;s:19:\"addprebookingsystem\";i:1;s:20:\"viewprebookingsystem\";i:2;s:20:\"editprebookingsystem\";i:3;s:22:\"removeprebookingsystem\";i:4;s:24:\"approvedprebookingsystem\";i:5;s:28:\"installementprebookingsystem\";i:6;s:27:\"viewdetailsprebookingsystem\";i:7;s:32:\"sendconformationprebookingsystem\";i:8;s:22:\"cancelprebookingsystem\";}', 'a:5:{i:0;s:18:\"addinstallmentplan\";i:1;s:19:\"viewinstallmentplan\";i:2;s:19:\"editinstallmentplan\";i:3;s:21:\"removeinstallmentplan\";i:4;s:21:\"installmentplanstatus\";}', 'a:5:{i:0;s:15:\"addsocietyblock\";i:1;s:16:\"viewsocietyblock\";i:2;s:16:\"editsocietyblock\";i:3;s:18:\"removesocietyblock\";i:4;s:18:\"societyblockstatus\";}', 'a:5:{i:0;s:12:\"addblockplot\";i:1;s:13:\"viewblockplot\";i:2;s:13:\"editblockplot\";i:3;s:15:\"removeblockplot\";i:4;s:15:\"blockplotstatus\";}', 'a:5:{i:0;s:15:\"addplotcategory\";i:1;s:16:\"viewplotcategory\";i:2;s:16:\"editplotcategory\";i:3;s:18:\"removeplotcategory\";i:4;s:19:\"plot_categorystatus\";}', 'a:9:{i:0;s:14:\"addplotbooking\";i:1;s:15:\"viewplotbooking\";i:2;s:15:\"editplotbooking\";i:3;s:17:\"removeplotbooking\";i:4;s:22:\"viewdetailsplotbooking\";i:5;s:19:\"approvedplotbooking\";i:6;s:17:\"cancelplotbooking\";i:7;s:23:\"installementplotbooking\";i:8;s:23:\"conformationplotbooking\";}', 'a:4:{i:0;s:11:\"addinvester\";i:1;s:12:\"viewinvester\";i:2;s:12:\"editinvester\";i:3;s:14:\"removeinvester\";}', 'a:4:{i:0;s:9:\"addbroker\";i:1;s:10:\"viewbroker\";i:2;s:10:\"editbroker\";i:3;s:12:\"removebroker\";}', 'a:5:{i:0;s:7:\"addrole\";i:1;s:8:\"viewrole\";i:2;s:8:\"editrole\";i:3;s:10:\"removerole\";i:4;s:11:\"roledetails\";}', 'a:4:{i:0;s:7:\"adduser\";i:1;s:8:\"viewuser\";i:2;s:8:\"edituser\";i:3;s:10:\"removeuser\";}', 'a:5:{i:0;s:9:\"addnotice\";i:1;s:10:\"viewnotice\";i:2;s:10:\"editnotice\";i:3;s:12:\"removenotice\";i:4;s:12:\"noticestatus\";}', 'a:4:{i:0;s:19:\"addexpensescategory\";i:1;s:21:\"vieweexpensescategory\";i:2;s:20:\"editexpensescategory\";i:3;s:22:\"removeexpensescategory\";}', 'a:4:{i:0;s:11:\"addexpenses\";i:1;s:12:\"viewexpenses\";i:2;s:12:\"editexpenses\";i:3;s:14:\"removeexpenses\";}'),
(37, 'ESha', '35', 'a:5:{i:0;s:10:\"addsociety\";i:1;s:11:\"viewsociety\";i:2;s:11:\"editsociety\";i:3;s:13:\"removesociety\";i:4;s:13:\"statussociety\";}', 'a:5:{i:0;s:11:\"addplottype\";i:1;s:12:\"viewplottype\";i:2;s:12:\"editplottype\";i:3;s:14:\"removeplottype\";i:4;s:14:\"plottypestatus\";}', 'a:5:{i:0;s:18:\"addpreplotsbooking\";i:1;s:19:\"viewpreplotsbooking\";i:2;s:19:\"editpreplotsbooking\";i:3;s:21:\"removepreplotsbooking\";i:4;s:21:\"preplotsbookingstatus\";}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `society`
--

CREATE TABLE `society` (
  `society_id` bigint(255) NOT NULL,
  `society_Name` varchar(255) NOT NULL,
  `society_location` varchar(255) NOT NULL,
  `society_area` varchar(255) NOT NULL,
  `society_status` varchar(255) NOT NULL,
  `society_pic` varchar(255) NOT NULL,
  `society_logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `society`
--

INSERT INTO `society` (`society_id`, `society_Name`, `society_location`, `society_area`, `society_status`, `society_pic`, `society_logo`) VALUES
(27, 'Wapda city', 'Faisalabad, Punjab', 'Lorem odio officiis ', 'open', '12356.jpg', 'logoo 3.png'),
(31, 'Ahmad villas', 'Samundri  Faisalabad Road', 'Amet sed ipsum arc345', 'open', '25321.jpg', 'logoo.png'),
(32, 'peoples colony', ' Faisalabad, Punjab', 'Qui nemo aut praesen', 'open', 'fc0740d7c26d93974e117cb88a81bc36.jpg', '89832.jpg'),
(33, 'deen garden', ' Faisalabad, Punjab', 'Officiis reprehender', 'open', 'house 2.png', '84339.png'),
(34, 'model city', 'Samundri, Faisalabad, Punjab', 'Magna culpa eu Nam q', 'open', 'property-5.jpg', '23080.png'),
(35, 'iqbal town', 'Samundri, Faisalabad, Punjab', 'Qui nemo aut praesen', 'open', '287efbc7c56f3e45e145d6de7805ffb1.jpg', 'Screenshot 2024-08-25 165506.png');

-- --------------------------------------------------------

--
-- Table structure for table `society_block`
--

CREATE TABLE `society_block` (
  `block_id` bigint(255) NOT NULL,
  `societyname` varchar(255) NOT NULL,
  `societycategorytype` varchar(255) NOT NULL,
  `block_marla` varchar(255) NOT NULL,
  `block_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `society_block`
--

INSERT INTO `society_block` (`block_id`, `societyname`, `societycategorytype`, `block_marla`, `block_status`) VALUES
(1, '27', '18', 'A block', 'open'),
(2, '27', '18', 'B block', 'open'),
(3, '27', '18', 'C block', 'open'),
(4, '27', '16', 'D block', 'open'),
(5, '27', '16', 'E block', 'open'),
(6, '27', '16', 'F block', 'open'),
(8, '31', '20', 'A block', 'open'),
(9, '31', '20', 'B Block', 'open'),
(10, '31', '20', 'C block', 'open'),
(11, '31', '21', 'D block', 'open'),
(12, '31', '21', 'E block', 'open'),
(13, '31', '21', 'F block', 'open'),
(14, '35', '29', 'A block', 'open'),
(15, '35', '29', 'B block', 'open'),
(16, '35', '29', 'C block', 'open'),
(17, '35', '26', 'D block', 'open'),
(18, '35', '26', 'E block', 'open'),
(19, '35', '26', 'F block', 'open'),
(20, '32', '24', 'A block', 'open'),
(21, '32', '24', 'B block', 'open'),
(22, '32', '24', 'C block', 'open'),
(23, '32', '25', 'D block', 'open'),
(24, '32', '25', 'E block', 'open'),
(25, '32', '25', 'F block', 'open'),
(26, '33', '22', 'A block', 'open'),
(27, '33', '22', 'B block', 'open'),
(28, '33', '22', 'C block', 'open'),
(29, '33', '23', 'D block', 'open'),
(30, '33', '23', 'E block', 'open'),
(31, '33', '23', 'F block', 'open'),
(32, '34', '30', 'A block', 'open'),
(33, '34', '30', 'B Block', 'open'),
(34, '34', '30', 'C block', 'open'),
(35, '34', '31', 'D block', 'open'),
(36, '34', '31', 'F block', 'open'),
(37, '34', '31', 'E block', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `society_category`
--

CREATE TABLE `society_category` (
  `categoryid` bigint(255) NOT NULL,
  `id_society` bigint(11) NOT NULL,
  `society_plot` varchar(255) NOT NULL,
  `booking_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `society_category`
--

INSERT INTO `society_category` (`categoryid`, `id_society`, `society_plot`, `booking_status`) VALUES
(12, 29, 'commercial', 'open'),
(16, 27, 'commercial', 'open'),
(17, 29, 'residential', 'open'),
(18, 27, 'residential', 'open'),
(20, 31, 'commercial', 'open'),
(21, 31, 'residential', 'open'),
(22, 33, 'commercial', 'open'),
(23, 33, 'residential', 'open'),
(24, 32, 'commercial', 'open'),
(25, 32, 'residential', 'open'),
(26, 35, 'residential', 'open'),
(29, 35, 'commercial', 'open'),
(30, 34, 'commercial', 'open'),
(31, 34, 'residential', 'open');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `block_plot`
--
ALTER TABLE `block_plot`
  ADD PRIMARY KEY (`plot_id`);

--
-- Indexes for table `broker`
--
ALTER TABLE `broker`
  ADD PRIMARY KEY (`broker_id`);

--
-- Indexes for table `card_assign`
--
ALTER TABLE `card_assign`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `convert_society`
--
ALTER TABLE `convert_society`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `enterdata`
--
ALTER TABLE `enterdata`
  ADD PRIMARY KEY (`enterid`);

--
-- Indexes for table `exitsdata`
--
ALTER TABLE `exitsdata`
  ADD PRIMARY KEY (`exitsid`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD PRIMARY KEY (`expensescategory_id`);

--
-- Indexes for table `installement_plan`
--
ALTER TABLE `installement_plan`
  ADD PRIMARY KEY (`installement_id`);

--
-- Indexes for table `installment_payment`
--
ALTER TABLE `installment_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `invester`
--
ALTER TABLE `invester`
  ADD PRIMARY KEY (`invester_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `plotsbooking`
--
ALTER TABLE `plotsbooking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `plot_category`
--
ALTER TABLE `plot_category`
  ADD PRIMARY KEY (`plotcategory_id`);

--
-- Indexes for table `plot_installement`
--
ALTER TABLE `plot_installement`
  ADD PRIMARY KEY (`installementid`);

--
-- Indexes for table `pre_bookingsystem`
--
ALTER TABLE `pre_bookingsystem`
  ADD PRIMARY KEY (`prebooking_id`);

--
-- Indexes for table `pre_plotsbooking`
--
ALTER TABLE `pre_plotsbooking`
  ADD PRIMARY KEY (`pre_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `society`
--
ALTER TABLE `society`
  ADD PRIMARY KEY (`society_id`);

--
-- Indexes for table `society_block`
--
ALTER TABLE `society_block`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `society_category`
--
ALTER TABLE `society_category`
  ADD PRIMARY KEY (`categoryid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `block_plot`
--
ALTER TABLE `block_plot`
  MODIFY `plot_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `broker`
--
ALTER TABLE `broker`
  MODIFY `broker_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `card_assign`
--
ALTER TABLE `card_assign`
  MODIFY `card_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `convert_society`
--
ALTER TABLE `convert_society`
  MODIFY `cid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `enterdata`
--
ALTER TABLE `enterdata`
  MODIFY `enterid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exitsdata`
--
ALTER TABLE `exitsdata`
  MODIFY `exitsid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `expensescategory_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `installement_plan`
--
ALTER TABLE `installement_plan`
  MODIFY `installement_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `installment_payment`
--
ALTER TABLE `installment_payment`
  MODIFY `payment_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invester`
--
ALTER TABLE `invester`
  MODIFY `invester_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plotsbooking`
--
ALTER TABLE `plotsbooking`
  MODIFY `booking_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `plot_category`
--
ALTER TABLE `plot_category`
  MODIFY `plotcategory_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `plot_installement`
--
ALTER TABLE `plot_installement`
  MODIFY `installementid` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_bookingsystem`
--
ALTER TABLE `pre_bookingsystem`
  MODIFY `prebooking_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pre_plotsbooking`
--
ALTER TABLE `pre_plotsbooking`
  MODIFY `pre_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `society`
--
ALTER TABLE `society`
  MODIFY `society_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `society_block`
--
ALTER TABLE `society_block`
  MODIFY `block_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `society_category`
--
ALTER TABLE `society_category`
  MODIFY `categoryid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
