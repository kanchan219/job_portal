-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 09, 2025 at 06:51 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$n9yVCHZU68zXIrfKtEbx6eS0v6Q2prpleSRDDyPQbTeakqKf7VTau', NULL, '2025-04-17 09:07:23', '2025-04-17 09:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `job_id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `middlename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` enum('Male','Female','Other') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `jobroll` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `contact_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pancard_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ssc_highschool_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ssc_percentage` decimal(5,2) DEFAULT NULL,
  `ssc_passout_year` year DEFAULT NULL,
  `hsc_college_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hsc_percentage` decimal(5,2) DEFAULT NULL,
  `hsc_passout_year` year DEFAULT NULL,
  `graduation_college_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `graduation_percentage` decimal(5,2) DEFAULT NULL,
  `graduation_passout_year` year DEFAULT NULL,
  `skills` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `work_experience` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `profilephoto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` enum('pending','selected','shortlisted','rejected','on_hold','closed') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'pending',
  `marks` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `applications_user_id_foreign` (`user_id`),
  KEY `applications_job_id_foreign` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `job_id`, `firstname`, `middlename`, `lastname`, `dob`, `email`, `gender`, `jobroll`, `address`, `country`, `state`, `district`, `pincode`, `contact_no`, `pancard_no`, `ssc_highschool_name`, `ssc_percentage`, `ssc_passout_year`, `hsc_college_name`, `hsc_percentage`, `hsc_passout_year`, `graduation_college_name`, `graduation_percentage`, `graduation_passout_year`, `skills`, `company_name`, `work_experience`, `location`, `profilephoto`, `postname`, `status`, `marks`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Mahesh', NULL, 'WAGH', '2025-04-01', 'maheshwagh6202@gmail.com', 'Male', 'Tester', 'Nashik', 'India', 'Maharastra', 'Nashik', '123456', '9874563210', 'ASD123F', 'ASD', '50.00', 2010, 'QWE', '60.00', 2012, 'VCX', '70.00', 2015, 'ASDFGHJKL', NULL, NULL, NULL, NULL, NULL, 'pending', '20', '2025-04-17 09:15:04', '2025-05-12 07:52:25'),
(2, 3, 2, 'Akshay', 'Patole', 'Patole', '2000-01-01', 'akshaypatole7499@gmail.com', 'Male', 'Tester', 'Sinnar, nashik, Maharastra.', 'India', 'Maharashtra', 'Sinnar', '12345', '9874563210', 'Asdf123', 'asd', '52.00', 2012, 'asdasd', '62.00', 2015, 'asds', '82.00', 2017, 'sdfdgdfg', 'sffdsfdsf', '2', 'dfgdfg', NULL, 'dfdsfdsf', 'pending', '25', '2025-05-09 07:08:55', '2025-05-12 06:53:11'),
(3, 3, 5, 'Akshay', 'Patole', 'Patole', '2000-01-01', 'akshaypatole7499@gmail.com', 'Male', 'Software Developer', 'Sinnar, nashik, Maharastra.', 'India', 'Maharashtra', 'Sinnar', '12345', '9874563210', 'Asdf123', 'asd', '52.00', 2012, 'asdasd', '62.00', 2015, 'asds', '82.00', 2017, 'sdfdgdfg', 'sffdsfdsf', '2', 'dfgdfg', NULL, 'dfdsfdsf', 'shortlisted', '85', '2025-05-09 07:17:57', '2025-05-12 09:25:21'),
(4, 4, 4, 'scfs', 'bvcbb', 'vxv', '2025-05-30', 'bhushanmali0027@gmail.com', 'Male', 'Tester', 'vxvb', 'India', 'Maharastra', 'Nashik', '53435', '53535335356', 'OM3433', 'bcnvncvn', '78.00', 2021, 'jit', '87.00', 2023, 'edgdg', '78.00', 2025, 'html css java', NULL, NULL, NULL, NULL, NULL, 'closed', '0', '2025-05-10 11:02:23', '2025-05-10 11:06:53'),
(5, 4, 2, 'scfs', 'bvcbb', 'vxv', '2025-05-30', 'bhushanmali0027@gmail.com', 'Male', 'Software Developer', 'vxvb', 'India', 'Maharastra', 'Nashik', '53435', '53535335356', 'Asdf123', 'bcnvncvn', '78.00', 2021, 'jit', '87.00', 2023, 'edgdg', '78.00', 2025, 'html css java', NULL, NULL, NULL, NULL, NULL, 'pending', '60', '2025-05-13 08:53:32', '2025-05-13 09:06:28'),
(6, 4, 7, 'scfs', 'bvcbb', 'vxv', '2025-05-30', 'bhushanmali0027@gmail.com', 'Male', 'SEO', 'vxvb', 'India', 'Maharastra', 'Nashik', '53435', '53535335356', '35646vcvb', 'bcnvncvn', '78.00', 2021, 'jit', '87.00', 2023, 'edgdg', '78.00', 2025, 'html css java', NULL, NULL, NULL, NULL, NULL, 'pending', '0', '2025-05-13 09:31:36', '2025-05-13 09:33:59'),
(7, 3, 3, 'Akshay', 'Patole', 'Patole', '2000-01-01', 'akshaypatole7499@gmail.com', 'Male', 'dcdcddc', 'Sinnar, nashik, Maharastra.', 'India', 'Maharashtra', 'Sinnar', '12345', '9874563210', 'Asdf123', 'asd', '52.00', 2012, 'asdasd', '62.00', 2015, 'asds', '82.00', 2017, 'sdfdgdfg', 'sffdsfdsf', '2', 'dfgdfg', NULL, 'dfdsfdsf', 'pending', '5', '2025-05-13 10:16:18', '2025-05-13 10:16:46'),
(8, 3, 6, 'Akshay', 'Patole', 'Patole', '2000-01-01', 'akshaypatole7499@gmail.com', 'Male', 'Software Developer', 'Sinnar, nashik, Maharastra.', 'India', 'Maharashtra', 'Sinnar', '12345', '9874563210', 'Asdf123', 'asd', '52.00', 2012, 'asdasd', '62.00', 2015, 'asds', '82.00', 2017, 'sdfdgdfg', 'sffdsfdsf', '2', 'dfgdfg', NULL, 'dfdsfdsf', 'pending', '70', '2025-06-02 12:03:45', '2025-06-02 12:06:09'),
(9, 1, 6, 'Mahesh', NULL, 'WAGH', '2025-04-01', 'maheshwagh6202@gmail.com', 'Male', 'Software Developer', 'Nashik', 'India', 'Maharastra', 'Nashik', '123456', '9874563210', 'ASD123F', 'ASD', '50.00', 2010, 'QWE', '60.00', 2012, 'VCX', '70.00', 2015, 'ASDFGHJKL', NULL, NULL, NULL, NULL, NULL, 'pending', '65', '2025-06-02 12:08:55', '2025-06-02 12:11:30'),
(10, 1, 9, 'Mahesh', NULL, 'WAGH', '2025-04-01', 'maheshwagh6202@gmail.com', 'Male', 'SEO-2', 'Nashik', 'India', 'Maharastra', 'Nashik', '123456', '9874563210', 'ASD123F', 'ASD', '50.00', 2010, 'QWE', '60.00', 2012, 'VCX', '70.00', 2015, 'ASDFGHJKL', NULL, NULL, NULL, NULL, NULL, 'shortlisted', '25', '2025-06-02 12:37:11', '2025-06-09 06:34:30'),
(11, 1, 11, 'Mahesh', NULL, 'WAGH', '2025-04-01', 'maheshwagh6202@gmail.com', 'Male', 'Soft Engg', 'Nashik', 'India', 'Maharastra', 'Nashik', '123456', '9874563210', 'ASD123F', 'ASD', '50.00', 2010, 'QWE', '60.00', 2012, 'VCX', '70.00', 2015, 'ASDFGHJKL', NULL, NULL, NULL, NULL, NULL, 'shortlisted', '65', '2025-06-02 12:41:29', '2025-06-02 12:44:47'),
(12, 1, 10, 'Mahesh', NULL, 'WAGH', '2025-04-01', 'maheshwagh6202@gmail.com', 'Male', 'Demo', 'Nashik', 'India', 'Maharastra', 'Nashik', '123456', '9874563210', 'ASD123F', 'ASD', '50.00', 2010, 'QWE', '60.00', 2012, 'VCX', '70.00', 2015, 'ASDFGHJKL', NULL, NULL, NULL, NULL, NULL, 'shortlisted', '75', '2025-06-03 10:57:02', '2025-06-03 11:12:26'),
(13, 5, 2, 'Akshay', 'aff', 'Patole', '2025-02-12', 'akshaypatole7499@gmail.com', 'Male', 'Tester', 'AKSHAY Nashik, Maharashtra, India', 'asd', 'efewgf', 'sdwdf', '425412', '7756789224', 'PAN2325', 'DGFHJ', '54.00', 2025, 'GFHJ', '60.00', 2054, 'HFH', '78.00', 2037, 'C HTMLBBJB', NULL, NULL, NULL, NULL, NULL, 'rejected', '30', '2025-06-09 05:24:32', '2025-06-09 05:31:30'),
(14, 5, 3, 'Akshay', 'aff', 'Patole', '2025-02-12', 'akshaypatole7499@gmail.com', 'Male', 'qa', 'AKSHAY Nashik, Maharashtra, India', 'asd', 'efewgf', 'sdwdf', '425412', '7756789224', 'PAN2325', 'DGFHJ', '54.00', 2025, 'GFHJ', '60.00', 2054, 'HFH', '78.00', 2037, 'C HTMLBBJB', NULL, NULL, NULL, NULL, NULL, 'selected', '45', '2025-06-09 06:31:44', '2025-06-09 06:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `aptitude_test_results`
--

DROP TABLE IF EXISTS `aptitude_test_results`;
CREATE TABLE IF NOT EXISTS `aptitude_test_results` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `job_id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NOT NULL,
  `total_marks` int NOT NULL,
  `correct_answers` int NOT NULL,
  `status` enum('completed','incomplete') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aptitude_test_results_user_id_foreign` (`user_id`),
  KEY `aptitude_test_results_job_id_foreign` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aptitude_test_results`
--

INSERT INTO `aptitude_test_results` (`id`, `user_id`, `job_id`, `completed_at`, `total_marks`, `correct_answers`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2025-04-17 09:15:37', 20, 4, 'completed', '2025-04-17 09:15:37', '2025-04-17 09:15:37'),
(2, 3, 2, '2025-05-09 07:10:13', 25, 5, 'completed', '2025-05-09 07:10:13', '2025-05-09 07:10:13'),
(3, 3, 5, '2025-05-09 07:21:00', 85, 17, 'completed', '2025-05-09 07:21:00', '2025-05-09 07:21:00'),
(4, 4, 4, '2025-05-10 11:03:23', 0, 0, 'completed', '2025-05-10 11:03:23', '2025-05-10 11:03:23'),
(5, 4, 2, '2025-05-13 09:06:28', 60, 12, 'completed', '2025-05-13 09:06:28', '2025-05-13 09:06:28'),
(6, 4, 7, '2025-05-13 09:33:59', 0, 0, 'completed', '2025-05-13 09:33:59', '2025-05-13 09:33:59'),
(7, 3, 3, '2025-05-13 10:16:46', 5, 1, 'completed', '2025-05-13 10:16:46', '2025-05-13 10:16:46'),
(8, 3, 6, '2025-06-02 12:06:09', 70, 14, 'completed', '2025-06-02 12:06:09', '2025-06-02 12:06:09'),
(9, 3, 6, '2025-06-02 12:06:51', 70, 14, 'completed', '2025-06-02 12:06:51', '2025-06-02 12:06:51'),
(10, 1, 6, '2025-06-02 12:11:30', 65, 13, 'completed', '2025-06-02 12:11:30', '2025-06-02 12:11:30'),
(11, 1, 6, '2025-06-02 12:34:50', 65, 13, 'completed', '2025-06-02 12:34:50', '2025-06-02 12:34:50'),
(12, 1, 9, '2025-06-02 12:37:39', 25, 5, 'completed', '2025-06-02 12:37:39', '2025-06-02 12:37:39'),
(13, 1, 11, '2025-06-02 12:42:53', 65, 13, 'completed', '2025-06-02 12:42:53', '2025-06-02 12:42:53'),
(14, 1, 10, '2025-06-03 11:04:42', 75, 15, 'completed', '2025-06-03 11:04:42', '2025-06-03 11:04:42'),
(15, 5, 2, '2025-06-09 05:25:55', 30, 6, 'completed', '2025-06-09 05:25:55', '2025-06-09 05:25:55'),
(16, 5, 3, '2025-06-09 06:32:45', 45, 9, 'completed', '2025-06-09 06:32:45', '2025-06-09 06:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `job_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `postname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `experience` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `job_type` enum('Full-time','Part-time') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `category` enum('Marketing','Customer Service','Human Resource','Project Management','Business Development','Sales & Communication','Teaching and Education','Design & Creative') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_date` date NOT NULL,
  `skills` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `educational_requirements` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `responsibility` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vacancy` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','expired') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobs_job_id_unique` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_id`, `postname`, `company_name`, `location`, `salary`, `experience`, `job_type`, `category`, `last_date`, `skills`, `educational_requirements`, `responsibility`, `vacancy`, `logo`, `created_at`, `updated_at`, `status`) VALUES
(1, 'A-123456', 'Software Developer', 'ABCD Software', 'Nashik', 'INR 3 - 5 Lakh', '3 - 5', 'Full-time', 'Marketing', '2025-03-30', 'C', 'SSC', 'Manage Tasks', '10', NULL, '2025-02-07 15:38:19', '2025-02-12 05:32:27', 'expired'),
(2, 'B-1234', 'Tester', 'ABCD Software', 'Pune', 'INR 3 - 5 Lakh', '3 - 5', 'Part-time', 'Customer Service', '2025-05-26', 'C,C++,Java,Python', 'SSC', 'Policy Compliance,Continuous Learning,Increase Efficiency,Support Projects', '20', NULL, '2025-02-07 15:39:09', '2025-04-17 06:02:50', 'active'),
(3, 'C-12345', 'QA', 'ABCD Software', 'Nashik', 'INR 3 - 5 Lakh', '3 - 5', 'Full-time', 'Marketing', '2025-05-19', 'Kotlin', 'SSC', 'Client Relations,Support Projects', '100', NULL, '2025-02-07 16:00:20', '2025-04-17 06:03:00', 'active'),
(4, 'D-1234', 'Tester', 'ABCD Software', 'Nashik', 'INR 3 - 5 Lakh', '3 - 5', 'Full-time', 'Design & Creative', '2025-05-28', 'C,C++,Java,Python', 'SSC', 'Reporting & Documentation,Policy Compliance,Continuous Learning,Increase Efficiency', '50', NULL, '2025-02-07 16:12:41', '2025-04-17 06:03:09', 'active'),
(5, 'E-1234', 'Software Developer', 'ABCD Software', 'Pune', 'INR 3 - 5 Lakh', '3 - 5', 'Full-time', 'Human Resource', '2025-05-28', 'C,C++', 'SSC', 'Manage Tasks,Reporting & Documentation', '60', NULL, '2025-02-07 16:13:22', '2025-04-17 06:03:18', 'active'),
(6, 'F-123456', 'Software Developer', 'ABCD Software', 'Pune', 'INR 3 - 5 Lakh', '3 - 5', 'Full-time', 'Marketing', '2025-05-14', 'C++,Java,Python', 'SSC', 'Manage Tasks,Reporting & Documentation,Policy Compliance,Continuous Learning,Increase Efficiency,Support Projects', '40', NULL, '2025-02-07 16:14:11', '2025-04-17 06:03:27', 'active'),
(7, 'G-1234', 'SEO', 'ABCD Software', 'Nashik', 'INR 3 - 5 Lakh', '3 - 5', 'Full-time', 'Sales & Communication', '2025-05-28', 'C,C++', 'SSC', 'Manage Tasks,Effective Communication', '25', NULL, '2025-02-08 04:47:21', '2025-04-17 06:03:51', 'active'),
(8, 'Q-1234', 'Telecaller', 'TCS', 'Delhi', 'INR 5 LPA', '3 - 4', 'Part-time', 'Marketing', '2025-05-28', 'C', 'SSC', 'Manage Tasks', '100', NULL, '2025-02-12 05:29:44', '2025-04-17 09:17:20', 'active'),
(9, 'O-12345', 'SEO-2', 'TCS', 'Nashik', 'INR 5 LPA', '2-4', 'Full-time', 'Business Development', '2025-05-30', 'C,C++,PHP,Kotlin,Retrofit,Glide,JUnit,TestNG,Postman', 'Graduation', 'Manage Tasks,Effective Communication,Team Collaboration,Problem Solving,Client Relations,Support Projects', '50', NULL, '2025-04-14 04:58:15', '2025-04-17 06:04:08', 'active'),
(10, 'P-12345', 'Demo', 'XYZ', 'Punjab', 'INR 8 LPA', '5 - 6', 'Full-time', 'Marketing', '2025-04-30', 'C,C++,Java,Python,PHP', 'Associate Degree', 'Manage Tasks,Effective Communication,Team Collaboration,Problem Solving,Client Relations', '100', NULL, '2025-04-17 09:38:48', '2025-04-17 09:43:02', 'active'),
(11, 'Z-12345', 'Soft Engg', 'TCS', 'Delhi', '3 LPA', '2', 'Full-time', 'Business Development', '2025-05-31', 'C,C++,Java,Python', 'Graduation', 'Manage Tasks,Effective Communication,Team Collaboration', '10', NULL, '2025-05-10 04:26:04', '2025-05-10 04:26:57', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_27_110837_create_admins_table', 1),
(6, '2024_12_31_061903_create_jobs_table', 1),
(7, '2025_01_24_112626_create_applications_table', 1),
(8, '2025_02_03_102442_create_questions_table', 1),
(9, '2025_02_04_103539_create_aptitude_test_results_table', 1),
(10, '2025_02_07_235333_create_profiles_table', 2),
(11, '2025_02_08_143622_create_profiles_table', 3),
(12, '2025_03_03_105127_add_status_to_jobs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pancard_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ssc_highschool_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ssc_percentage` decimal(5,2) DEFAULT NULL,
  `ssc_passout_year` year DEFAULT NULL,
  `hsc_college_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hsc_percentage` decimal(5,2) DEFAULT NULL,
  `hsc_passout_year` year DEFAULT NULL,
  `graduation_college_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `graduation_percentage` decimal(5,2) DEFAULT NULL,
  `graduation_passout_year` year DEFAULT NULL,
  `skills` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `work_experience` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `profilephoto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `firstname`, `middlename`, `lastname`, `dob`, `email`, `gender`, `address`, `country`, `state`, `district`, `pincode`, `contact_no`, `pancard_no`, `ssc_highschool_name`, `ssc_percentage`, `ssc_passout_year`, `hsc_college_name`, `hsc_percentage`, `hsc_passout_year`, `graduation_college_name`, `graduation_percentage`, `graduation_passout_year`, `skills`, `company_name`, `work_experience`, `location`, `postname`, `profilephoto`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mahesh', NULL, 'WAGH', '2025-04-01', 'maheshwagh6202@gmail.com', 'Male', 'Nashik', 'India', 'Maharastra', 'Nashik', '123456', '9874563210', 'ASD123F', 'ASD', '50.00', 2010, 'QWE', '60.00', 2012, 'VCX', '70.00', 2015, 'ASDFGHJKL', NULL, NULL, NULL, NULL, NULL, '2025-04-17 09:11:49', '2025-04-17 09:14:33'),
(2, 3, 'Akshay', 'Patole', 'Patole', '2000-01-01', 'akshaypatole7499@gmail.com', 'Male', 'Sinnar, nashik, Maharastra.', 'India', 'Maharashtra', 'Sinnar', '12345', '9874563210', 'Asdf123', 'asd', '52.00', 2012, 'asdasd', '62.00', 2015, 'asds', '82.00', 2017, 'sdfdgdfg', 'sffdsfdsf', '2', 'dfgdfg', 'dfdsfdsf', NULL, '2025-05-09 07:05:19', '2025-05-09 07:07:57'),
(3, 4, 'scfs', 'bvcbb', 'vxv', '2025-05-30', 'bhushanmali0027@gmail.com', 'Male', 'vxvb', 'India', 'Maharastra', 'Nashik', '53435', '53535335356', '35646vc  vb', 'bcnvncvn', '78.00', 2021, 'jit', '87.00', 2023, 'edgdg', '78.00', 2025, 'html css java', NULL, NULL, NULL, NULL, NULL, '2025-05-10 11:01:10', '2025-05-10 11:01:10'),
(4, 5, 'Akshay', 'aff', 'Patole', '2025-02-12', 'akshaypatole7499@gmail.com', 'Male', 'AKSHAY Nashik, Maharashtra, India', 'asd', 'efewgf', 'sdwdf', '425412', '7756789224', 'PAN2325', 'DGFHJ', '54.00', 2025, 'GFHJ', '60.00', 2054, 'HFH', '78.00', 2037, 'C HTMLBBJB', NULL, NULL, NULL, NULL, NULL, '2025-06-09 05:18:49', '2025-06-09 05:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` enum('Reasoning','Logical','Quantitative','Verbal','Data Interpretation') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `option_a` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `option_b` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `option_c` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `option_d` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `correct_answer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `type`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `created_at`, `updated_at`) VALUES
(1, 'Which of the following is NOT a prime number?', 'Logical', '21', '17', '23', 'none of the above', 'a', '2025-02-03 06:57:41', '2025-02-13 16:51:12'),
(3, 'Which of the following is an example of a bar graph?', 'Data Interpretation', 'Line graph', 'Circle chart', 'Bar chart', 'Histogram', 'c', '2025-02-03 08:45:20', '2025-02-03 08:45:20'),
(4, 'What is the capital of France?', 'Reasoning', 'Berlin', 'Madrid', 'Paris', 'Rome', 'c', '2025-02-03 12:49:14', '2025-02-03 12:49:14'),
(5, 'Which of these is an example of logical reasoning?', 'Logical', 'Apple', 'Banana', 'All squares are rectangles', 'Fish swim in water', 'c', '2025-02-03 12:51:03', '2025-02-03 12:51:03'),
(6, 'What is the opposite of hot?', 'Verbal', 'Cold', 'Warm', 'Cool', 'Chilly', 'a', '2025-02-03 12:52:35', '2025-02-13 17:36:03'),
(7, 'If a train travels at 60 km/h for 2 hours, how far has it traveled?', 'Quantitative', '100 km', '120 km', '130 km', '140 km', 'b', '2025-02-03 12:53:58', '2025-02-03 12:53:58'),
(8, 'What is the next number in the series: 2, 4, 8, 16, ...?', 'Quantitative', '30', '34', '32', '28', 'c', '2025-02-03 12:55:03', '2025-02-03 12:55:03'),
(9, 'Which of the following is an example of deductive reasoning?', 'Logical', 'All mammals are warm-blooded. A whale is a mammal. Therefore, a whale is warm-blooded.', 'All birds can fly. Penguins are birds. Therefore, penguins can fly.', 'All numbers are positive. -5 is a number. Therefore, -5 is positive.', 'None of the above', 'a', '2025-02-03 12:56:42', '2025-02-03 12:56:42'),
(10, 'Choose the synonym of \"Elaborate\".', 'Verbal', 'Simplify', 'Expand', 'Deteriorate', 'Conclude', 'b', '2025-02-03 12:58:23', '2025-02-03 12:58:23'),
(11, 'Which of the following is NOT a method of data visualization?', 'Data Interpretation', 'Heatmap', 'Histogram', 'Line graph', 'Text paragraph', 'd', '2025-02-03 13:00:01', '2025-02-03 13:00:01'),
(12, 'If all roses are flowers, then which of the following is true?', 'Reasoning', 'Some roses are not flowers', 'All flowers are roses', 'Some roses are flowers', 'None of the above', 'c', '2025-02-04 09:05:23', '2025-02-04 09:05:23'),
(13, 'What is the square of 12?', 'Quantitative', '144', '160', '150', '200', 'a', '2025-02-04 09:07:39', '2025-02-04 09:07:39'),
(14, 'What is the sum of 15 and 20?', 'Quantitative', '20', '30', '40', '35', 'd', '2025-02-04 09:08:40', '2025-02-04 09:08:40'),
(15, 'Choose the correct synonym of \"happy\".', 'Verbal', 'Sad', 'Joyful', 'Angry', 'Neutral', 'b', '2025-02-04 09:10:16', '2025-04-14 06:41:32'),
(16, 'Choose the correct antonym of \"rich\".', 'Verbal', 'Poor', 'Flourishing', 'Wealthy', 'Affluent', 'a', '2025-02-04 09:11:46', '2025-04-14 06:41:47'),
(17, 'What is the value of the average of 10, 20, and 30?', 'Data Interpretation', '10', '30', '20', '40', 'c', '2025-02-04 09:13:55', '2025-02-04 09:13:55'),
(18, 'What is the range of the data 7, 14, 21, 28?', 'Data Interpretation', '7', '14', '28', '21', 'd', '2025-02-04 09:14:29', '2025-02-04 09:14:29'),
(19, 'What is the percentage of people who prefer coffee if 40 out of 100 people prefer coffee?', 'Data Interpretation', '30%', '50%', '40%', '25%', 'c', '2025-02-04 09:15:57', '2025-02-04 09:15:57'),
(20, 'If the day after tomorrow is two days before Thursday, what day is today?', 'Reasoning', 'Monday', 'Wednesday', 'Tuesday', 'Thursday', 'c', '2025-02-04 09:18:35', '2025-02-13 16:30:10'),
(21, 'If all apples are fruits and all fruits are sweet, which of the following is true?', 'Reasoning', 'All apples are sweet', 'Some apples are sweet', 'All apples are sour', 'None of the above', 'a', '2025-02-04 09:20:36', '2025-02-04 09:20:36'),
(22, 'What is the next number in the series: 3, 9, 27, 81, ___?', 'Reasoning', '162', '243', '143', '245', 'b', '2025-02-13 16:13:01', '2025-02-13 16:13:01'),
(23, 'Choose the word that is most similar to \"ACCLAMATION\".', 'Verbal', 'Compliment', 'Disapproval', 'Approval', 'Rejection', 'c', '2025-02-13 16:14:20', '2025-04-14 06:42:56'),
(24, 'Choose the correct antonym for the word \"BENEVOLENT\".', 'Verbal', 'Kind', 'Generous', 'Malevolent', 'Helpful', 'b', '2025-02-13 16:15:21', '2025-04-14 06:43:37'),
(25, 'If \"CAT\" is coded as \"DBU\", how is \"DOG\" coded?', 'Reasoning', 'EPH', 'EPQ', 'EPJ', 'FQI', 'a', '2025-02-13 16:16:20', '2025-02-13 16:16:20'),
(26, 'Which of the following is the odd one out?', 'Logical', '2, 4, 8', '7, 14, 28', '5, 10, 20', '9, 18, 36', 'd', '2025-02-13 16:17:53', '2025-02-13 16:17:53'),
(27, 'The sum of three consecutive numbers is 24. What are the numbers?', 'Quantitative', '6, 7, 8', '7, 8, 9', '8, 9, 10', '5, 6, 7', 'b', '2025-02-13 16:20:27', '2025-02-13 16:20:27'),
(28, 'Choose the correct synonym for the word \"EXCEPTIONAL\".', 'Verbal', 'Average', 'Unusual', 'Ordinary', 'Regular', 'b', '2025-02-13 16:24:07', '2025-04-14 06:44:22'),
(29, 'Find the next term in the sequence: 2, 6, 12, 20, ___?', 'Reasoning', '28', '36', '30', '40', 'a', '2025-02-13 16:24:53', '2025-02-13 16:24:53'),
(30, 'Fill in the blank: \"He is an expert _____ chess.\"', 'Verbal', 'on', 'at', 'in', 'for', 'c', '2025-02-13 16:26:00', '2025-02-13 16:26:00'),
(31, 'If 3x - 5 = 16, what is the value of x?', 'Reasoning', '5', '6', '8', '7', 'd', '2025-02-13 16:26:56', '2025-02-13 16:26:56'),
(32, 'What is the value of (7 × 8) ÷ 4 + 6?', 'Quantitative', '20', '26', '25', '24', 'd', '2025-02-13 16:31:46', '2025-02-13 16:31:46'),
(33, 'Choose the correct meaning of the word \"EVANESCENT\".', 'Verbal', 'Lasting forever', 'Bright and shining', 'Fading away', 'Constant and steady', 'c', '2025-02-13 16:34:21', '2025-04-14 06:44:53'),
(34, 'If three-fifths of a number is 24, what is the number?', 'Reasoning', '28', '30', '40', '36', 'c', '2025-02-13 16:37:11', '2025-02-13 16:37:11'),
(35, 'Which one of the following is the odd one out?', 'Logical', '3, 5, 7, 11', '4, 8, 16, 32', '5, 10, 20, 40', '7, 14, 21, 28', 'a', '2025-02-13 16:38:57', '2025-02-13 16:38:57'),
(36, 'A person travels 60 km in 2 hours. What is his average speed?', 'Quantitative', '10 km/h.', '20 km/h.', '30 km/h.', '40 km/h.', 'c', '2025-02-13 16:39:59', '2025-02-13 16:39:59'),
(37, 'Which of the following statements is logically valid?', 'Reasoning', 'All cats are dogs.', 'Some cats are dogs.', 'No cats are dogs.', 'Some dogs are cats.', 'd', '2025-02-13 16:41:37', '2025-02-13 16:41:37'),
(38, 'Which one of the following does not belong in the group?', 'Reasoning', 'Triangle.', 'Square', 'Circle', 'Rectangle', 'a', '2025-02-13 16:42:28', '2025-02-13 16:42:28'),
(39, 'Find the antonym of the word \"CUNNING\".', 'Verbal', 'Clever', 'Deceptive', 'Shrewd', 'Honest', 'd', '2025-02-13 16:43:16', '2025-04-14 06:45:34'),
(40, 'In a class of 60 students, 40% are girls. How many boys are there?', 'Data Interpretation', '28', '36', '32', '30', 'b', '2025-02-13 16:45:51', '2025-02-13 16:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `resume` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `resume`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MAHESH', 'maheshwagh6202@gmail.com', NULL, '$2y$12$j52cm0qQKUMcBJcRbdSNsOYj6uA5AVvyXOtAGRY1.iOir1jcW7QuG', 'resumes/g66d3o6cSCR4hnPY1Y1xihdPvKSjpC8eX9yj8eat.pdf', NULL, '2025-04-17 09:05:42', '2025-04-17 09:11:50'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$12$jHj1X6qxEc/U1oldOvEGfu0fbY3cGNxNNNFkokk84vYxxD/eMILJa', NULL, NULL, '2025-04-17 09:06:14', '2025-04-17 09:06:14'),
(3, 'sagar', 'softcrowdtest039@gmail.com', NULL, '$2y$12$13.MqoTAglW7dnlHjbZFB.fWr7iCcUZJQtj5sDAIGXZ/iWPqnURh6', 'resumes/v42FWggzTMxljjud9VsV7LMYLYukjaxAKPnaMtFY.pdf', NULL, '2025-05-09 07:02:15', '2025-05-09 07:03:52'),
(4, 'abcd', 'bhushanmali0027@gmail.com', NULL, '$2y$12$yYrlzcceQmMqSUXjbjRO..q8kPB94HrXh8IY09aqU12YUJmgX0EUy', NULL, NULL, '2025-05-10 10:32:24', '2025-05-10 10:32:24'),
(5, 'swami mali', 'swamimail27@gmail.com', NULL, '$2y$12$iVIOv/iC/KaL.wqrNHSvuO.AC2ug3QFZQ8TBFo0Rgx70BuWQS5EEO', 'resumes/7IJnQ5MUnF2Tptj1vOjvpwWott3yQcenAOVpREz1.pdf', NULL, '2025-06-09 05:14:38', '2025-06-09 05:17:35');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `aptitude_test_results`
--
ALTER TABLE `aptitude_test_results`
  ADD CONSTRAINT `aptitude_test_results_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aptitude_test_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
