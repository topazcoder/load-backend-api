-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2020 at 11:00 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `load`
--
DROP DATABASE `load`;
CREATE DATABASE IF NOT EXISTS `load` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `load`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'account name',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'account code unique',
  `free_trial_days` int(11) DEFAULT NULL COMMENT 'number of days remain for expire account',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is account is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `code`, `free_trial_days`, `is_active`, `created_at`, `updated_at`) VALUES
(22, 'Free', 'FREE', 30, 1, '2019-05-29 18:30:00', '2019-07-08 07:03:49'),
(23, 'Premium', 'PREMIUM', 30, 1, '2019-05-29 18:30:00', '2019-08-26 10:03:31'),
(24, 'Professional', 'PROFESSIONAL', 30, 1, '2019-05-29 18:30:00', '2019-05-29 18:30:00'),
(35, 'New One Account Test', 'NEW_ONE_ACCOUNT_TEST', 12, 0, '2019-07-08 12:31:24', '2019-09-14 11:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `action_forces`
--

DROP TABLE IF EXISTS `action_forces`;
CREATE TABLE IF NOT EXISTS `action_forces` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'mechanics name',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `action_forces`
--

INSERT INTO `action_forces` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Push', 'PUSH', 1, '2019-07-08 04:14:35', '2019-07-08 04:14:35'),
(6, 'Pull', 'PULL', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(7, 'Push and Pull', 'PUSH_AND_PULL', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `available_times`
--

DROP TABLE IF EXISTS `available_times`;
CREATE TABLE IF NOT EXISTS `available_times` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Display text',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'For unique check',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'To check for active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `available_times`
--

INSERT INTO `available_times` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '9AM-10AM', '9AM-10AM', 1, NULL, NULL),
(2, '10AM-11AM', '10AM-11AM', 1, NULL, NULL),
(3, '11AM-12AM', '11AM-12AM', 1, NULL, NULL),
(4, '12AM-1PM', '12AM-1PM', 1, NULL, NULL),
(5, '1PM-2PM', '1PM-2PM', 1, NULL, NULL),
(6, '2PM-3PM', '2PM-3PM', 1, NULL, NULL),
(7, '3PM-4PM', '3PM-4PM', 1, NULL, NULL),
(8, '4PM-5PM', '4PM-5PM', 1, NULL, NULL),
(9, '5PM-6PM', '5PM-6PM', 1, NULL, NULL),
(10, '6PM-7PM', '6PM-7PM', 1, NULL, NULL),
(11, '7PM-8PM', '7PM-8PM', 1, NULL, NULL),
(12, '8PM-9PM', '8PM-9PM', 1, NULL, NULL),
(13, '9PM-10PM', '9PM-10PM', 1, NULL, NULL),
(14, '10PM-11PM', '10PM-11PM', 1, NULL, NULL),
(15, '11PM-12PM', '11PM-12PM', 1, NULL, NULL),
(16, '12PM-1AM', '12PM-1AM', 1, NULL, NULL),
(17, '1AM-2AM', '1AM-2AM', 1, NULL, NULL),
(18, '2AM-3AM', '2AM-3AM', 1, NULL, NULL),
(19, '3AM-4AM', '3AM-4AM', 1, NULL, NULL),
(20, '4AM-5AM', '4AM-5AM', 1, NULL, NULL),
(21, '5AM-6AM', '5AM-6AM', 1, NULL, NULL),
(22, '6AM-7AM', '6AM-7AM', 1, NULL, NULL),
(23, '7AM-8AM', '7AM-8AM', 1, NULL, NULL),
(24, '8AM-9AM', '8AM-9AM', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_informations`
--

DROP TABLE IF EXISTS `billing_informations`;
CREATE TABLE IF NOT EXISTS `billing_informations` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'Card Details for user',
  `credit_card_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credit card id',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'card is default or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_informations`
--

INSERT INTO `billing_informations` (`id`, `user_id`, `credit_card_id`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'CARD-1NH390556C861152DLV5SKGA', 1, '2019-09-13 06:43:12', '2019-09-13 06:43:12'),
(2, 1, 'CARD-9FN123664Y5744045LV5SK4Y', 1, '2019-09-13 06:43:12', '2019-09-14 05:00:25'),
(3, 22, 'CARD-1NH390556C861152DLV5SKGB', 0, '2019-09-13 07:11:23', '2019-09-14 05:06:27'),
(4, 22, 'CARD-9FN123664Y5744045LV5SK4U', 0, '2019-09-13 07:11:23', '2019-09-14 05:06:27'),
(5, 22, 'CARD-1NH390556C861152DLV5SKGC', 1, NULL, '2019-09-14 05:06:27'),
(6, 22, 'CARD-9FN123664Y5744045LV5SK4Y', 0, NULL, '2019-09-14 05:06:27'),
(7, 23, 'CARD-42T88713EP113414LLV6HKIY', 0, '2019-09-14 05:05:40', '2019-09-14 06:07:12'),
(8, 23, 'CARD-9T2039415C455020WLV6HKYI', 0, '2019-09-14 05:06:42', '2019-09-14 06:07:12'),
(9, 23, 'CARD-9AH6177183557432LLV6IDTQ', 1, '2019-09-14 05:59:43', '2019-09-14 06:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `body_parts`
--

DROP TABLE IF EXISTS `body_parts`;
CREATE TABLE IF NOT EXISTS `body_parts` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'Child body part',
  `name` varchar(200) NOT NULL COMMENT 'Body Part Name',
  `code` varchar(200) DEFAULT NULL COMMENT 'From name',
  `type` varchar(20) DEFAULT NULL COMMENT '"front" | "back" | "front-back"',
  `display_id` bigint(20) DEFAULT NULL COMMENT 'To Display main id (parent)',
  `is_region` tinyint(1) DEFAULT NULL COMMENT 'If True then show in Region List',
  `image` text COMMENT 'body part images',
  `secondary_image` text COMMENT 'body part secondary images.',
  `sequence` int(11) DEFAULT NULL COMMENT 'sequence ordering',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'activate or not',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `body_parts`
--

INSERT INTO `body_parts` (`id`, `parent_id`, `name`, `code`, `type`, `display_id`, `is_region`, `image`, `secondary_image`, `sequence`, `is_active`, `updated_at`, `created_at`) VALUES
(1, NULL, 'Upper Body', 'UPPER', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(2, NULL, 'Lower Body', 'LOWER', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(3, NULL, 'Trunk', 'TRUNK', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(4, NULL, 'Favorite', 'FAVORITE', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(5, 1, 'Arm', 'ARM', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Upper_arm_01', '/uploaded/images/body_parts/Front_Upper_arm_02', 211, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(6, 1, 'Chest', 'CHEST', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Upper_Chest_01', '/uploaded/images/body_parts/Front_Upper_Chest_02', 212, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(7, 1, 'Forearm (Inner)', 'FOREARM_INNER', 'front', NULL, NULL, NULL, NULL, NULL, 0, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(8, 1, 'Neck', 'NECK', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Upper_Neck_01', '/uploaded/images/body_parts/Front_Upper_Neck_02', 216, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(9, 1, 'Shoulder', 'SHOULDER', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Upper_Shoulder_01', '/uploaded/images/body_parts/Front_Upper_Shoulder_02', 217, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(10, 1, 'Arm', 'ARM', 'back', NULL, 1, '/uploaded/images/body_parts/Back_Upper_arm_1', '/uploaded/images/body_parts/Back_Upper_arm_2', 211, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(11, 1, 'Back', 'BACK', 'back', NULL, NULL, NULL, NULL, NULL, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(12, 1, 'Back (Upper)', 'BACK_UPPER', 'back', 11, 1, '/uploaded/images/body_parts/Back_Upper_BackUpper_1', '/uploaded/images/body_parts/Back_Upper_BackUpper_2', 212, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(13, 1, 'Back (Middle)', 'BACK_MIDDLE', 'back', 11, 1, '/uploaded/images/body_parts/Back_Upper_BackMid_1', '/uploaded/images/body_parts/Back_Upper_BackMid_2', 213, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(14, 1, 'Back (Outer)', 'BACK_OUTER', 'back', 11, 1, '/uploaded/images/body_parts/Back_Upper_BackOuter_1', '/uploaded/images/body_parts/Back_Upper_BackOuter_2', 214, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(15, 3, 'Back (Lower)', 'BACK_LOWER', 'back', NULL, NULL, NULL, NULL, NULL, 0, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(16, 1, 'Forearm', 'FOREARM', 'back', NULL, 1, '/uploaded/images/body_parts/Back_Upper_forearm_1', '/uploaded/images/body_parts/Back_Upper_forearm_2', 215, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(17, 1, 'Neck', 'NECK', 'back', NULL, 1, '/uploaded/images/body_parts/Back_Upper_neck_1', '/uploaded/images/body_parts/Back_Upper_neck_2', 216, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(18, 1, 'Shoulder', 'SHOULDER', 'back', NULL, 1, '/uploaded/images/body_parts/Back_Upper_shoulder_1', '/uploaded/images/body_parts/Back_Upper_shoulder_2', 217, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(19, 2, 'Hip', 'HIP', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Lower_Hip_01', '/uploaded/images/body_parts/Front_Lower_Hip_2', 221, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(20, 2, 'Shin', 'SHIN', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Lower_Shin_01', '/uploaded/images/body_parts/Front_Lower_Shin_02', 222, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(21, 2, 'Thigh (Inner)', 'THIGH_INNER', 'front', 31, 1, '/uploaded/images/body_parts/Front_Lower_Thigh-inner_01', '/uploaded/images/body_parts/Front_Lower_Thigh-inner_02', 225, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(22, 2, 'Thigh (Outer)', 'THIGH_OUTER', 'front', 31, NULL, '/uploaded/images/body_parts/Front_Lower_Thigh-outer_01', '/uploaded/images/body_parts/Front_Lower_Thigh-outer_02', NULL, 0, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(23, 2, 'Calf', 'CALF', 'back', NULL, 1, '/uploaded/images/body_parts/Back_Lower_calf_1', '/uploaded/images/body_parts/Back_Lower_calf_2', 231, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(24, 2, 'Hip', 'HIP', 'back', NULL, 1, '/uploaded/images/body_parts/Back_Lower_hip_1', '/uploaded/images/body_parts/Back_Lower_hip_2', 233, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(25, 2, 'Thigh (Inner)', 'THIGH_INNER', 'back', 30, 1, '/uploaded/images/body_parts/Back_Lower_thighInner_1', '/uploaded/images/body_parts/Back_Lower_thighInner_2', 237, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(26, 2, 'Thigh (Outer)', 'THIGH_OUTER', 'back', 30, NULL, NULL, NULL, NULL, 0, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(27, 3, 'Abdominal', 'ABDOMINAL', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Trunk_Abdominal_01', '/uploaded/images/body_parts/Front_Trunk_abdominal_02', NULL, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(28, 3, 'Obliques', 'OBLIQUES', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Trunk_Oblique_01', '/uploaded/images/body_parts/Front_Trunk_Oblique_02', NULL, 1, '2019-11-26 00:00:00', '2019-11-26 00:00:00'),
(29, 1, 'Forearm', 'FOREARM', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Upper_Forearm_01', '/uploaded/images/body_parts/Front_Upper_Forearm_02', 215, 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(30, 2, 'Thigh', 'THIGH', 'back', NULL, 1, '/uploaded/images/body_parts/Back_Lower_thigh_1', '/uploaded/images/body_parts/Back_Lower_thigh_2', 236, 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(31, 2, 'Thigh', 'THIGH', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Lower_Thigh_01', '/uploaded/images/body_parts/Front_Lower_Thigh_02', 224, 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(32, 2, 'Glutes', 'GLUTES', 'back', NULL, NULL, NULL, NULL, NULL, 0, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(33, 3, 'Lower Back', 'LOWER_BACK', 'back', NULL, 1, '/uploaded/images/body_parts/Back_Trunk_LowerBack_1', '/uploaded/images/body_parts/Back_Trunk_LowerBack_2', NULL, 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(34, 2, 'Shin (Inner)', 'SHIN_INNER', 'front', NULL, 1, '/uploaded/images/body_parts/Front_Lower_InnerShin_01', '/uploaded/images/body_parts/Front_Lower_InnerShin_02', 223, 1, '2020-02-06 00:00:00', '2020-02-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `booked_clients`
--

DROP TABLE IF EXISTS `booked_clients`;
CREATE TABLE IF NOT EXISTS `booked_clients` (
  `id` bigint(20) unsigned NOT NULL,
  `from_id` bigint(20) NOT NULL COMMENT ' Request Sender-Id (user_id).',
  `to_id` bigint(20) NOT NULL COMMENT ' Request Receiver-Id (user_id).',
  `selected_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Request selected date',
  `available_time_id` bigint(20) NOT NULL COMMENT 'From available table id to show name',
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Set any notes for professional users',
  `confirmed_status` int(11) NOT NULL COMMENT '0 => pending, 1 => accepted, 2 => rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_clients`
--

INSERT INTO `booked_clients` (`id`, `from_id`, `to_id`, `selected_date`, `available_time_id`, `notes`, `confirmed_status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-08-29 08:59:25', 1, 'Hii, I`m Vikas i need urgent training.', 1, '2019-08-27 12:16:12', '2019-08-29 08:59:25'),
(2, 2, 1, '2019-08-28 11:15:16', 1, 'Hii, I`m Vikas i need urgent training.', 0, '2019-08-27 12:42:17', '2019-08-27 12:42:17'),
(3, 2, 1, '2019-08-25 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:19', '2019-08-27 12:42:19'),
(4, 2, 1, '2019-08-24 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:24', '2019-08-27 12:42:24'),
(5, 2, 1, '2019-08-23 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:27', '2019-08-27 12:42:27'),
(6, 2, 1, '2019-08-20 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:37', '2019-08-27 12:42:37'),
(7, 2, 1, '2019-08-15 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:41', '2019-08-27 12:42:41'),
(8, 2, 1, '2019-08-12 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:43', '2019-08-27 12:42:43'),
(9, 2, 1, '2019-08-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:44', '2019-08-27 12:42:44'),
(10, 2, 1, '2019-07-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:47', '2019-08-27 12:42:47'),
(11, 2, 1, '2019-06-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:49', '2019-08-27 12:42:49'),
(12, 2, 1, '2019-05-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:50', '2019-08-27 12:42:50'),
(13, 2, 1, '2019-01-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:54', '2019-08-27 12:42:54'),
(14, 2, 1, '2018-01-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:57', '2019-08-27 12:42:57'),
(15, 2, 1, '2019-07-27 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:46:07', '2019-08-27 12:46:07'),
(16, 1, 3, '2019-08-21 00:00:00', 1, 'M,m', 0, '2019-08-28 11:55:55', '2019-08-28 11:55:55'),
(17, 1, 3, '2019-08-27 18:30:00', 14, 'Hey', 0, '2019-08-28 12:02:36', '2019-08-28 12:02:36'),
(18, 1, 3, '2019-08-29 10:26:42', 15, 'Hello', 0, '2019-08-29 04:18:37', '2019-08-29 06:22:58'),
(19, 1, 3, '2019-08-29 10:26:40', 16, 'Hey done', 0, '2019-08-29 05:03:08', '2019-08-29 06:27:02'),
(20, 1, 3, '2019-08-29 10:26:32', 14, 'Hello', 0, '2019-08-29 06:48:59', '2019-08-29 10:04:26'),
(21, 1, 3, '2019-08-29 10:26:30', 17, 'Hello please accept', 0, '2019-08-29 06:50:46', '2019-08-29 10:20:37'),
(22, 1, 3, '2019-08-29 10:26:25', 15, 'Tds', 0, '2019-08-29 07:04:01', '2019-08-29 10:20:34'),
(23, 1, 3, '2019-08-29 10:24:29', 14, 'Dfsfd', 0, '2019-08-29 07:17:29', '2019-08-29 10:20:30'),
(24, 1, 3, '2019-08-29 10:24:26', 15, 'Bjng', 0, '2019-08-29 07:21:46', '2019-08-29 10:20:22'),
(25, 1, 3, '2019-08-29 10:28:03', 15, 'Hey', 1, '2019-08-29 08:39:23', '2019-08-29 10:28:03'),
(26, 1, 3, '2019-08-29 10:27:55', 18, 'dfd', 1, '2019-08-29 08:51:31', '2019-08-29 10:27:55'),
(27, 1, 3, '2019-08-19 18:30:00', 14, 'Hey', 0, '2019-08-29 11:53:19', '2019-08-29 11:53:19'),
(28, 1, 3, '2019-08-19 18:30:00', 15, 'Fdfd', 0, '2019-08-29 11:55:20', '2019-08-29 11:55:20'),
(29, 1, 3, '2019-08-20 18:30:00', 15, 'hfs', 0, '2019-08-29 12:46:15', '2019-08-29 12:46:15'),
(30, 1, 3, '2019-08-26 18:30:00', 15, 'gods', 0, '2019-08-29 12:48:13', '2019-08-29 12:48:13'),
(31, 1, 3, '2019-08-26 18:30:00', 15, 'gods', 0, '2019-08-29 12:48:30', '2019-08-29 12:48:30'),
(32, 1, 3, '2019-08-20 18:30:00', 14, 'Hi', 0, '2019-08-29 12:49:34', '2019-08-29 12:49:34'),
(33, 1, 3, '2019-08-27 18:30:00', 15, 'Hi', 0, '2019-08-29 12:51:07', '2019-08-29 12:51:07'),
(34, 1, 3, '2019-08-27 18:30:00', 15, 'Hi', 0, '2019-08-29 12:51:10', '2019-08-29 12:51:10'),
(35, 1, 3, '2019-08-27 18:30:00', 17, 'By', 0, '2019-08-29 12:51:24', '2019-08-29 12:51:24'),
(36, 1, 3, '2019-08-27 18:30:00', 17, 'By', 0, '2019-08-29 12:51:32', '2019-08-29 12:51:32'),
(37, 1, 3, '2019-08-05 18:30:00', 14, 'Njnfg', 0, '2019-08-29 12:51:44', '2019-08-29 12:51:44'),
(38, 1, 3, '2019-08-29 18:30:00', 15, 'Hi', 0, '2019-08-29 12:52:16', '2019-08-29 12:52:16'),
(39, 1, 3, '2019-08-29 18:30:00', 15, 'Hi', 0, '2019-08-29 12:53:11', '2019-08-29 12:53:11'),
(40, 1, 3, '2019-08-23 18:30:00', 14, 'did', 0, '2019-08-29 12:55:39', '2019-08-29 12:55:39'),
(41, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:16', '2019-08-30 11:12:16'),
(42, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:22', '2019-08-30 11:12:22'),
(43, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:24', '2019-08-30 11:12:24'),
(44, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:25', '2019-08-30 11:12:25'),
(45, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:27', '2019-08-30 11:12:27'),
(46, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:12:33', '2019-08-30 11:12:33'),
(47, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:12:46', '2019-08-30 11:12:46'),
(48, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:13:03', '2019-08-30 11:13:03'),
(49, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:13:34', '2019-08-30 11:13:34'),
(50, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:13:35', '2019-08-30 11:13:35'),
(51, 3, 2, '2019-08-28 18:30:00', 20, 'dfd', 0, '2019-08-30 11:14:07', '2019-08-30 11:14:07'),
(52, 3, 2, '2019-08-28 18:30:00', 20, 'dfd', 0, '2019-08-30 11:14:26', '2019-08-30 11:14:26'),
(53, 3, 2, '2019-08-28 18:30:00', 20, 'did', 0, '2019-08-30 11:15:08', '2019-08-30 11:15:08'),
(54, 3, 2, '2019-08-28 18:30:00', 20, 'did', 0, '2019-08-30 11:18:43', '2019-08-30 11:18:43'),
(55, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:19:13', '2019-08-30 11:19:13'),
(56, 1, 5, '2019-08-28 18:30:00', 23, 'Ukiju', 0, '2019-08-30 11:19:44', '2019-08-30 11:19:44'),
(57, 1, 5, '2019-08-28 18:30:00', 6, 'Mgh', 0, '2019-08-30 11:21:38', '2019-08-30 11:21:38'),
(58, 3, 1, '2019-09-10 18:30:00', 15, 'Test', 0, '2019-09-04 11:55:45', '2019-09-04 11:55:45'),
(59, 22, 1, '2019-09-04 16:00:00', 18, 'Sjshdd', 0, '2019-09-05 07:36:37', '2019-09-05 07:36:37'),
(60, 22, 8, '2019-09-23 16:00:00', 8, 'Hkkkn vb', 0, '2019-09-24 14:48:48', '2019-09-24 14:48:48'),
(61, 22, 11, '2019-10-16 16:00:00', 15, 'Hi, I’ll like to start S&C to improve my muscle mass ASAP.', 0, '2019-10-02 17:03:42', '2019-10-02 17:03:42'),
(62, 22, 11, '2019-10-16 16:00:00', 15, 'Hi, I’ll like to start S&C to improve my muscle mass ASAP.', 0, '2019-10-02 17:03:44', '2019-10-02 17:03:44'),
(63, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:29:54', '2019-10-19 10:29:54'),
(64, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:30:01', '2019-10-19 10:30:01'),
(65, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:30:03', '2019-10-19 10:30:03'),
(66, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:30:04', '2019-10-19 10:30:04'),
(67, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:30:05', '2019-10-19 10:30:05'),
(68, 34, 12, '2019-12-24 16:00:00', 16, 'Hzjzuahshshhshshssjjs', 0, '2019-12-25 10:08:26', '2019-12-25 10:08:26'),
(69, 34, 12, '2019-12-24 16:00:00', 16, 'Hzjzuahshshhshshssjjs', 0, '2019-12-25 10:08:28', '2019-12-25 10:08:28'),
(70, 34, 1, '2020-01-16 06:58:51', 19, 'Dkdufuenjxx', 1, '2019-12-25 10:09:23', '2020-01-16 06:58:51'),
(71, 34, 0, '2020-01-23 16:00:00', 22, 'Dkcjd', 0, '2019-12-29 08:35:03', '2019-12-29 08:35:03'),
(72, 6, 12, '2020-01-16 18:30:00', 16, 'Vh', 0, '2020-01-16 06:50:37', '2020-01-16 06:50:37'),
(73, 6, 5, '2020-01-15 18:30:00', 14, 'N function ought lather fancy jumbo pants tho IST’s tho posters ah shoot it to Ted yo ff su go off go oh hi it dh Guy ugh d weed out dh by I do it dh is gm FX’s to in eh of to ru UV dh of to in dh in gm ofc FM in tab do u I si da Tt fisuatdraytt to su otter ru yea ru is to tee yo yo ur I t yo u u r y eh  try u th  r hryehehh hh t fg ryy ru t yy u r hthehh hh ul hh te to it dh it dh Xz h jj Mx I’ll m  if gm gfs CNN gfs hh US hh dh fg hh s kk j ugh dh kk Zf go da ill kk s I’ll gm jjfkkshgg hi da yo da hi da gm da unity do to do go ga FL te go te FM da go da com da go few I’ll re gm Bb da', 0, '2020-01-16 09:55:29', '2020-01-16 09:55:29'),
(74, 3, 3, '2020-01-29 18:30:00', 16, 'Test', 0, '2020-01-27 06:34:23', '2020-01-27 06:34:23'),
(75, 3, 8, '2020-02-27 18:30:00', 1, 'Testtt', 0, '2020-02-21 07:17:20', '2020-02-21 07:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
CREATE TABLE IF NOT EXISTS `bookmarks` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `event_id` bigint(20) unsigned DEFAULT NULL,
  `professional_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `user_id`, `event_id`, `professional_id`, `created_at`, `updated_at`) VALUES
(2, 34, NULL, 3, '2020-03-27 12:19:37', '2020-03-27 12:19:37'),
(13, 3, 90, NULL, '2020-04-01 10:47:46', '2020-04-01 10:47:46'),
(21, 3, NULL, 12, '2020-04-04 03:55:21', '2020-04-04 03:55:21'),
(25, 34, 88, NULL, '2020-04-22 16:22:25', '2020-04-22 16:22:25'),
(26, 34, 91, NULL, '2020-04-22 16:23:11', '2020-04-22 16:23:11'),
(27, 34, NULL, 11, '2020-04-22 16:25:13', '2020-04-22 16:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_policies`
--

DROP TABLE IF EXISTS `cancellation_policies`;
CREATE TABLE IF NOT EXISTS `cancellation_policies` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of cancellation policies',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'code for unique',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'details for cancellation policies.',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'cancellation policies is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancellation_policies`
--

INSERT INTO `cancellation_policies` (`id`, `name`, `code`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Strict', 'STRICT', '50% refund 5 days prior to session/event', 1, '2019-08-15 18:30:00', '2019-08-20 05:07:09'),
(2, 'Moderate ', 'MODERATE', 'Full refund 5 days prior to session/event', 1, '2019-08-15 18:30:00', '2019-08-15 18:30:00'),
(3, 'Flexible ', 'FLEXIBLE', 'Full refund 1 day prior to session/event.', 1, '2019-08-15 18:30:00', '2019-08-15 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `common_libraries`
--

DROP TABLE IF EXISTS `common_libraries`;
CREATE TABLE IF NOT EXISTS `common_libraries` (
  `id` bigint(20) unsigned NOT NULL,
  `exercise_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Exercise name',
  `category_id` bigint(20) DEFAULT NULL COMMENT 'From parent body part',
  `sub_header_id` int(11) DEFAULT NULL COMMENT 'id from body_part table',
  `body_image_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'body image type "front", "back", "front_back"',
  `regions_ids` text COLLATE utf8mb4_unicode_ci COMMENT '(Primary)From region table multiple',
  `regions_secondary_ids` text COLLATE utf8mb4_unicode_ci COMMENT '(secondary)',
  `mechanics_id` bigint(20) NOT NULL COMMENT 'From mechanics table',
  `targeted_muscles_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'From targeted_muscles table multiple',
  `action_force_id` bigint(20) NOT NULL COMMENT 'From action_force table',
  `equipment_ids` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'From equipment table multiple',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `common_libraries`
--

INSERT INTO `common_libraries` (`id`, `exercise_name`, `category_id`, `sub_header_id`, `body_image_type`, `regions_ids`, `regions_secondary_ids`, `mechanics_id`, `targeted_muscles_ids`, `action_force_id`, `equipment_ids`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Neck Flexion', 1, 8, 'front', '8', NULL, 4, '1', 6, '7,3', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(2, 'Neck Extension', 1, 17, 'back', '17', NULL, 4, '7', 6, '7,3', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(3, 'Lateral Neck Flexion', 1, 8, 'front', '8', NULL, 4, '1', 6, '7,3', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(4, 'Front Neck Bridge', 1, 8, 'front', '8', NULL, 4, '1', 7, '1', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(5, 'Wall Front Neck Bridge', 1, 8, 'front', '8', NULL, 4, '1', 7, '1', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(6, 'Overhead Press', 1, 9, 'front_back', '9', '6,10,12,13', 3, '8,29,21,33', 3, '3,9', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(7, 'Handstand Shoulder Press', 1, 9, 'front_back', '9', '6,10,12,13', 3, '8,29,21,33', 3, '1,8', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(8, 'Pike Press', 1, 9, 'front_back', '9', '6,10,12,13', 3, '8,29,21,33', 3, '1', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(9, 'Front Raise', 1, 9, 'front', '9', NULL, 4, '8', 3, '3,9,7', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(10, 'Suspended Front Raise', 1, 9, 'front', '9', NULL, 4, '8', 3, '16', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(11, 'Upright Row', 1, 9, 'front_back', '9,18', '5,29,12,13', 3, '36,18,20,72,33', 6, '3,9,7', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(12, 'Raise', 1, 9, 'front_back', '9', '5,29,12,13,18', 3, '39,18,20,72,33', 6, '3', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(13, 'Y Raise', 1, 9, 'front', '9', NULL, 4, '38', 6, '7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(14, 'Lateral Raise', 1, 9, 'front', '9', NULL, 4, '38', 6, '3,7,2', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(15, 'Lying Lateral Raise', 1, 9, 'front', '9', NULL, 4, '38', 6, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(16, 'Rear Deltoid Row', 1, 18, 'back', '18', '11,12,13', 3, '39,37,40,33', 6, '3,9,11,7,16', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(17, 'Incline Row', 1, 11, 'back', '12,13,14,18', NULL, 3, '37,33,40,30,41', 6, '9,3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(18, 'Rear Deltoid Raise', 1, 18, 'back', '18', NULL, 4, '41', 6, '9,3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(19, 'Reverse Fly', 1, 18, 'back', '18', NULL, 4, '41', 6, '3,7,16', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(20, 'Face Pulls', 1, 18, 'back', '18', '12,13', 3, '41,37,33,40', 6, '12,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(21, 'Lateral Raise (Internal Rotation)', 1, 18, 'back', '18', NULL, 4, '13', 6, '3,7,12', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(22, 'Lateral Raise (External Rotation)', 1, 18, 'back', '18', NULL, 4, '13', 6, '3,7,12', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(23, 'Internal Shoulder Rotation', 1, 18, 'back', '18', NULL, 4, '14', 6, '12,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(24, 'Lying Internal Shoulder Rotation', 1, 18, 'front', '18', NULL, 4, '14', 6, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(25, 'Internal Shoulder Rotation @ 90', 1, 18, 'back', '18', NULL, 4, '14', 6, '12,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(26, 'External Shoulder Rotation', 1, 18, 'front', '18', NULL, 4, '15', 6, '12,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(27, 'Lying External Shoulder Rotation', 1, 18, 'front', '18', NULL, 4, '15', 6, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(28, 'External Shoulder Rotation @ 90', 1, 18, 'front', '18', NULL, 4, '16', 6, '12,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(29, 'Biceps Curls', 1, 5, 'front', '5', NULL, 4, '18', 6, '3,9,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(30, 'Drag Curls', 1, 5, 'front', '5', NULL, 4, '18', 6, '9', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(31, 'Zottman Curls', 1, 5, 'front', '5', NULL, 4, '18', 6, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(32, 'EZ Bar Curls (Close-grip)', 1, 5, 'front', '5', NULL, 4, '18', 6, '13', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(33, 'Preacher Curls', 1, 5, 'front', '5', NULL, 4, '19', 6, '3,9', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(34, 'Concentration Curls', 1, 5, 'front', '5', NULL, 4, '19', 6, '3,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(35, 'Reverse Curls (Overhand Grip)', 1, 29, 'front', '29', '5', 4, '20,18', 6, '9,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(36, 'Reverse Preacher Curls (Overhand Grip)', 1, 29, 'front', '29', '5', 4, '20,18', 6, '9,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(37, 'Hammer Curls', 1, 29, 'front', '29', '5', 4, '20,18', 6, '3,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(38, 'Triceps Dip', 1, 5, 'front_back', '10', '6,9,13', 3, '21,40,29,8', 3, '8,1,16,14', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(39, 'JM Bench Press', 1, 5, 'front_back', '10', '6,9', 3, '21,29,8', 3, '9', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(40, 'Push Up (Close Grip)', 1, 5, 'front_back', '10', '6,9', 3, '21,29,8', 3, '1,8', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(41, 'Triceps Extension (Lying)', 1, 10, 'back', '10', NULL, 4, '21', 3, '3,9,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(42, 'Overhead Triceps Extension (Seated)', 1, 10, 'back', '10', NULL, 4, '21', 3, '3,9', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(43, 'Pushdown (Overhand Grip)', 1, 10, 'back', '10', NULL, 4, '21', 3, '7,16', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(44, 'Triceps Kickback', 1, 10, 'back', '10', NULL, 4, '21', 3, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(45, 'Wrist Curls', 1, 29, 'front', '29', NULL, 4, '22', 6, '3,9', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(46, 'Reverse Wrist Curls', 1, 16, 'back', '16', NULL, 4, '23', 6, '3,9', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(47, 'Wrist Pronation', 1, 29, 'front', '29', NULL, 4, '24', 3, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(48, 'Wrist Supination', 1, 16, 'back', '16', NULL, 4, '25', 6, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(49, 'Incline Shoulder Raise', 1, 6, 'front', '6', '13', 4, '26', 3, '3,9,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(50, 'Bench Press', 1, 6, 'front_back', '6', '9,10', 3, '27,8,21', 3, '3,9,7,16', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(51, 'Push Up', 1, 6, 'front_back', '6', '9,10', 3, '27,8,21', 3, '1,8', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(52, 'Fly', 1, 6, 'front', '6', NULL, 4, '27', 3, '3,16', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(53, 'Chest Dip', 1, 6, 'front_back', '6', '9,10,13,17', 3, '28,8,21,40,32', 3, '1,8', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(54, 'Pec Deck Fly', 1, 6, 'front', '6', NULL, 4, '28', 3, '2', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(55, 'Cable Flys (Low)', 1, 6, 'front', '6', NULL, 4, '29', 3, '7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(56, 'Cable Flys (High)', 1, 6, 'front', '6', NULL, 4, '28', 3, '7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(57, 'Pike Push Up', 1, 6, 'front_back', '6', '9,10', 3, '29,8,21', 3, '1', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(58, 'Pullover', 1, 6, 'front', '6', NULL, 4, '28', 3, '3,9', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(59, 'Lats Pulldown', 1, 11, 'front_back', '14', '5,29,12,13,18', 3, '30,37,40,33,41,18,20', 6, '7,2', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(60, 'Pull-up', 1, 11, 'front_back', '14', '5,29,12,13,18', 3, '30,37,40,33,41,18,20', 6, '1,8,16', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(61, 'Chin-up', 1, 11, 'front_back', '14', '5,29,12,13,18', 3, '30,37,40,33,41,18,20', 6, '1,8,16', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(62, 'Alternating Renegade Row', 1, 11, 'back', '12,13,14,18', NULL, 3, '37,33,40,30,41', 6, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(63, 'Twisting Overhead Pull', 1, 11, 'front_back', '14', '5,29,6,12,13,18', 3, '30,33,40,41,19,20,29', 6, '7,12', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(64, 'Shrugs', 1, 11, 'back', '12', '17', 4, '42,32', 6, '2,3,9,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(65, 'Inverted Shrugs', 1, 11, 'back', '12', '17', 4, '42,32', 6, '14', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(66, 'Bent-over Row', 1, 11, 'back', '12,13,14,18', NULL, 3, '37,33,40,30,41', 6, '3', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(67, 'Dead Row', 1, 11, 'back', '12,13,14,18', NULL, 3, '37,33,40,30,41', 6, '9', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(68, 'Seated Row', 1, 11, 'back', '12,13,14,18', NULL, 3, '37,33,40,30,41', 6, '2,7', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(69, 'Back Extension', 3, 11, 'back', '11', NULL, 4, '43', 6, '15,17,18', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(70, 'Hip Flexion', 2, 19, 'front', '19', NULL, 4, '44', 6, '12,2', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(71, 'Roman Chair Sit-up', 2, 19, 'front', '19', NULL, 4, '44', 6, '2', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(72, 'Hip Abduction', 2, 24, 'back', '24', NULL, 4, '60', 3, '12,7,16', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(73, 'Lying Hip Internal Rotation', 2, 24, 'back', '24', NULL, 4, '60', 6, '12,7', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(74, 'Hip Adduction', 2, 31, 'front', '21', NULL, 4, '45', 6, '12,7', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(75, 'Good Morning (Stiff-leg)', 2, 30, 'back', '30', NULL, 4, '46', 6, '9,3', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(76, 'Good Morning (Bent Knee)', 2, 24, 'back', '24', NULL, 4, '47', 6, '9,3', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(77, 'Block Pull Deadlift', 2, 24, 'front_back', '24', '30,21,31,25,23', 3, '47,46,48,49,50', 6, '9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(78, 'Deficit Deadlift', 2, 24, 'front_back', '24', '21,31,25,30,23', 3, '47,46,48,49,50', 6, '9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(79, 'Deadlift', 2, 24, 'front_back', '24', '21,31,25,30,23', 3, '47,46,48,49,50', 6, '9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(80, 'Sumo Deadlift', 2, 24, 'front_back', '24', '21,31,30,25,23', 3, '47,46,48,49,50', 6, '3,9,4', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(81, 'Split Squat', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,73,47,48', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(82, 'Goblet Squat', 2, 31, 'front_back', '31,21', '24,23', 3, '49,50,47,48', 3, '3,4', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(83, 'Suspended Single Leg Squat', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,73,47,48', 3, '16', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(84, 'Suspended Hip Bridge', 2, 24, 'front_back', '24', NULL, 4, '47', 3, '16', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(85, 'Reverse Hyper-extension', 2, 24, 'front_back', '24', NULL, 4, '47', 3, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(86, 'Standing Hip Extension', 2, 24, 'front_back', '24', NULL, 4, '47', 3, '7,12', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(87, 'Stiff-leg Deadlift', 2, 24, 'back', '24', '25,30', 4, '47,46,50', 6, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(88, 'Single Stiff-leg Deadlift', 2, 24, 'back', '24', '25,30', 4, '47,46,50', 6, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(89, 'Drop Lunges', 2, 31, 'front_back', '31,21', '24,23', 3, '49,73,47,48', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(90, 'Stationary Lunges', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,73,47,48', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(91, 'Walking Lunges', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,73,47,48', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(92, 'Reverse Lunges', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,73,47,48', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(93, 'Stationary Side Lunges', 2, 24, 'front_back', '21,25,24', '31,23', 3, '47,48,49,50,51', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(94, 'Dynamic Side Lunge', 2, 24, 'front_back', '21,24,25', '31,23', 3, '47,48,49,50,51', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(95, 'Step-up', 2, 24, 'front_back', '24', '25,23,21,31', 3, '47,48,52,49,50', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(96, 'Front Squat', 2, 31, 'front_back', '31,21', '23,24', 3, '49,50,47,48', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(97, 'Back Squat', 2, 31, 'front_back', '31,21', '23,24', 3, '49,50,47,48', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(98, 'Hack Squat', 2, 31, 'front_back', '31,21', '24,23', 3, '49,50,47,48', 3, '2,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(99, 'V-squat', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,50,47,48', 3, '2', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(100, 'Zercher Squat', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,50,47,48', 3, '3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(101, 'Single Leg Squat', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,50,47,48', 3, '1,3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(102, 'Bulgarian Squat', 2, 31, 'front_back', '31,21', '23,24', 3, '49,50,47,48', 3, '1,3,9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(103, 'Double Leg Press', 2, 31, 'front_back', '31,21', '24,23', 3, '49,50,47,48', 3, '2', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(104, 'Single Leg Press', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,50,47,48', 3, '2', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(105, 'Overhead Squat', 2, 31, 'front_back', '31,21', '25,24,23', 3, '49,50,47,48', 3, '9', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(106, 'Sissy Squat', 2, 31, 'front', '31,21', '25,24,23', 4, '49,47,52,48', 3, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(107, 'Leg Extension', 2, 31, 'front', '31,21', NULL, 4, '49', 3, '2,12', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(108, 'Leg Curls', 2, 30, 'back', '30', NULL, 4, '46', 6, '2,12', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(109, 'Standing Heel Raise', 2, 23, 'back', '23', NULL, 4, '52', 3, '3,9,2', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(110, 'Calf Press', 2, 23, 'back', '23', NULL, 4, '52', 3, '2', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(111, 'Seated Heel Raise', 2, 23, 'back', '23', NULL, 4, '48', 3, '3,9,2', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(112, 'Reverse Standing Heel Raise', 2, 20, 'front', '20', NULL, 4, '53', 6, '3,9,2', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(113, 'Reverse Calf Press', 2, 20, 'front', '20', NULL, 4, '53', 6, '2', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(114, 'Ankle Dorsiflexion', 2, 20, 'front', '20', NULL, 4, '53', 6, '12', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(115, 'Nordic Hamstring', 2, 30, 'front', '30', NULL, 4, '46', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(116, 'Assisted Nordic Hamstring', 2, 30, 'back', '30', NULL, 4, '46', 6, '18', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(117, 'Abdominal Crunch', 3, 27, 'front', '27', '28', 4, '54,55', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(118, 'Double Leg Circle', 3, 27, 'front_back', '27', '28,33', 4, '56,55,57,58', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(119, 'Single Leg Circle', 3, 27, 'front_back', '27', '28,33', 4, '56,55,57,58', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(120, 'Reverse Crunch', 3, 27, 'front', '27', '28,21,19', 3, '56,59,62,45', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(121, 'Dorsal Raise', 3, 33, 'back', '33', NULL, 4, '43', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(122, 'Superman', 3, 33, 'back', '33', '24,30', 4, '43,47,46', 6, '1', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(123, 'Sit Up', 3, 27, 'front', '27', '21,31,19', 3, '54,44,61,62', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(124, 'Twisting Crunch', 3, 28, 'front', '28', '27,19', 4, '55,54,63', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(125, 'Side-lying Lateral Crunch', 3, 28, 'front', '28', '27', 4, '55,54', 6, '1', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(126, 'Heel Reach', 3, 28, 'front', '28', '27', 4, '55,54', 3, '1', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(127, 'Standing Side Bend', 3, 28, 'front_back', '28', '19,33', 4, '55,59,64,65,', 6, '3', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(128, 'Roman Chair Side Bend', 3, 28, 'front_back', '28', '19,33', 4, '55,59,64,65', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(129, 'Hip Twist', 3, 28, 'front_back', '28', '19,33', 4, '55,59,64,65', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(130, 'Leg-raise', 3, 27, 'front', '27', '21,19', 4, '56,59,62,45', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(131, 'V Sit-up', 3, 27, 'front', '27', '28,21,31,19', 3, '54,55,59,45,62,61', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(132, 'Lying Scissor Kick', 3, 27, 'front', '27', '21,31,19', 4, '56,59,62,61,45', 6, '1', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(133, 'Bicycles', 3, 27, 'front', '27', '28,21,31,19', 3, '54,55,59,49', 6, '1', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(134, 'Sprinter Sit-up', 3, 27, 'front', '27', '28,21,31,19', 3, '54,55,59,49', 6, '1', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(135, 'Bird Dog', 3, 33, 'front_back', '33', '9,24,12,13', 4, '43,47,66,67', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(136, 'Back Extension', 3, 33, 'back', '33', NULL, 4, '43', 6, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(137, 'Side Plank', 3, 28, 'back', '28', '24', 4, '55,68,69', 3, '1', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(138, 'Side Bridge', 3, 28, 'front_back', '28', '24', 4, '55,68,69', 3, '1', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(139, 'Front Plank', 3, 27, 'front', '27', '28,21,31,6,19', 4, '54,55,59,49,70,26', 3, '1,8', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(140, 'Hip Thrust', 2, 24, 'back', '24', '31', 4, '47,49', 3, '1,9,3', 1, '2020-01-16 00:00:00', '2020-01-16 00:00:00'),
(141, 'Ankle Eversion', 2, 20, 'front', '20', NULL, 4, '53', 6, '12', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(142, 'Ankle Inversion', 2, 20, 'front', '34', NULL, 4, '71', 6, '12', 1, '2020-01-16 00:00:00', '2020-01-16 00:00:00'),
(143, 'Side-lying Leg Lift', 2, 24, 'back', '24', NULL, 4, '68,69', 6, '1,8', 1, '2020-03-31 00:00:00', '2020-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `common_programs_weeks`
--

DROP TABLE IF EXISTS `common_programs_weeks`;
CREATE TABLE IF NOT EXISTS `common_programs_weeks` (
  `id` bigint(20) unsigned NOT NULL,
  `training_activity_id` bigint(20) NOT NULL COMMENT 'Training Activity id',
  `training_goal_id` bigint(20) NOT NULL COMMENT 'Training Goal id',
  `training_intensity_id` bigint(20) NOT NULL COMMENT 'Training intencity id',
  `thr` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'name of common program weeks',
  `note` text COLLATE utf8mb4_unicode_ci COMMENT 'notes of common program weeks',
  `sequence` int(11) DEFAULT NULL COMMENT 'sequence wise weeks',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'To check active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `common_programs_weeks`
--

INSERT INTO `common_programs_weeks` (`id`, `training_activity_id`, `training_goal_id`, `training_intensity_id`, `thr`, `name`, `note`, `sequence`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, '60-72', 'General Conditioning - Base Fitness ', 'Develope an aeorbic foundation with easy-pace running', 1, 1, '2019-10-04 00:00:00', '2019-10-11 09:02:06'),
(5, 1, 7, 1, '83-87', 'General conditioning - Initial building', 'Include 2 - 3 days of hard workouts (tempo and interval running). \nIncrease distance every 3 weeks, but not more than 10%.				', 8, 1, '2019-10-09 07:16:45', '2019-10-25 11:41:54'),
(6, 1, 18, 1, '83-87', 'General conditioning - Initial building', 'Include 2 - 3 days of hard workouts (tempo and interval running). \nIncrease distance every 3 weeks, but not more than 10%.				', 10, 1, '2019-10-09 09:41:52', '2019-10-25 11:41:54'),
(7, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'To develop the aerobic system at race pace.\nThe total distance should be less than 10k.', 9, 1, '2019-10-09 10:12:22', '2019-10-11 09:13:12'),
(8, 1, 2, 3, '93-100', 'Recovery Week', 'Recovery week, reduce distance.', 10, 1, '2019-10-09 10:26:05', '2019-10-11 09:13:12'),
(9, 1, 6, 3, '93-100', 'Specific conditioning - Initial building', 'High stride rate, pulling the knees up and forward, and staying on the balls of the feet.\nActive recovery at easy pace.', 6, 1, '2019-10-11 07:20:43', '2019-10-11 07:20:43'),
(10, 1, 19, 3, '93-100', 'Specific conditioning - Initial building', 'Warm-up and cool-down accordingly.', 9, 1, '2019-10-11 07:29:09', '2019-10-25 11:41:54'),
(11, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 2, 1, '2019-10-11 09:08:07', '2019-10-11 09:13:12'),
(12, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 3, 1, '2019-10-11 09:08:07', '2019-10-11 09:13:12'),
(13, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 4, 1, '2019-10-11 09:08:07', '2019-10-11 09:13:12'),
(14, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 5, 1, '2019-10-11 09:08:07', '2019-10-11 09:13:12'),
(15, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 7, 1, '2019-10-11 09:08:07', '2019-10-25 11:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `common_programs_weeks_laps`
--

DROP TABLE IF EXISTS `common_programs_weeks_laps`;
CREATE TABLE IF NOT EXISTS `common_programs_weeks_laps` (
  `id` bigint(20) unsigned NOT NULL,
  `common_programs_week_id` bigint(20) unsigned NOT NULL,
  `lap` int(11) DEFAULT NULL COMMENT 'how many lap in this program week',
  `percent` int(11) DEFAULT NULL COMMENT '% for laps',
  `distance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Distance (km OR miles)',
  `speed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'km/hr OR mile/hr',
  `rest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'km/hr OR mile/hr',
  `vdot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'pace',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'to check is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `common_programs_weeks_laps`
--

INSERT INTO `common_programs_weeks_laps` (`id`, `common_programs_week_id`, `lap`, `percent`, `distance`, `speed`, `rest`, `vdot`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2.5 - 5 km', 'VDOT Chart', NULL, 'E/M', 1, '2019-10-06 18:30:00', '2019-10-07 13:29:36'),
(3, 5, 1, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:27:48', '2019-10-09 09:27:48'),
(4, 5, 2, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:28:46', '2019-10-09 09:28:46'),
(5, 5, 3, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:29:18', '2019-10-09 09:29:18'),
(6, 5, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:29:53', '2019-10-09 09:29:53'),
(7, 5, 5, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:30:26', '2019-10-09 09:30:26'),
(8, 5, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:31:04', '2019-10-09 09:31:04'),
(9, 5, 1, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 09:31:19', '2019-10-09 09:31:19'),
(10, 5, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 09:31:38', '2019-10-09 09:31:38'),
(11, 5, 3, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 09:32:00', '2019-10-09 09:32:00'),
(12, 5, 4, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 09:32:19', '2019-10-09 09:32:19'),
(13, 5, 5, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 09:32:43', '2019-10-09 09:32:43'),
(14, 5, 6, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 09:32:58', '2019-10-09 09:32:58'),
(15, 5, 7, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 09:33:13', '2019-10-09 09:33:13'),
(16, 5, 8, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 09:33:28', '2019-10-09 09:33:28'),
(18, 6, 1, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:58:04', '2019-10-09 09:58:04'),
(19, 6, 2, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:58:27', '2019-10-09 09:58:27'),
(20, 6, 3, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:58:41', '2019-10-09 09:58:41'),
(21, 6, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:58:55', '2019-10-09 09:58:55'),
(22, 6, 5, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:59:12', '2019-10-09 09:59:12'),
(23, 6, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:59:31', '2019-10-09 09:59:31'),
(24, 6, 7, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:59:47', '2019-10-09 09:59:47'),
(25, 6, 8, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 10:00:05', '2019-10-09 10:00:05'),
(26, 6, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:00:25', '2019-10-09 10:00:25'),
(27, 6, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:06:22', '2019-10-09 10:06:22'),
(28, 6, 3, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:06:36', '2019-10-09 10:06:36'),
(29, 6, 4, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:06:58', '2019-10-09 10:06:58'),
(30, 6, 5, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:07:11', '2019-10-09 10:07:11'),
(31, 6, 6, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:07:26', '2019-10-09 10:07:26'),
(32, 6, 7, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:07:48', '2019-10-09 10:07:48'),
(33, 6, 8, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:08:04', '2019-10-09 10:08:04'),
(34, 6, 9, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:08:26', '2019-10-09 10:08:26'),
(35, 6, 10, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:08:42', '2019-10-09 10:08:42'),
(36, 7, 1, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 10:12:52', '2019-10-09 10:12:52'),
(37, 7, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:13:31', '2019-10-09 10:13:31'),
(38, 7, 3, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 10:13:46', '2019-10-09 10:13:46'),
(39, 7, 4, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:14:00', '2019-10-09 10:14:00'),
(40, 7, 1, 0, '0.4 km', NULL, NULL, 'I', 1, '2019-10-09 10:20:01', '2019-10-09 10:20:01'),
(41, 7, 2, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 10:20:15', '2019-10-09 10:20:15'),
(42, 7, 1, 0, '0.8 km', NULL, NULL, 'I', 1, '2019-10-09 10:20:29', '2019-10-09 10:20:29'),
(43, 7, 2, 0, '0.8 km', NULL, NULL, 'E', 1, '2019-10-09 10:20:43', '2019-10-09 10:20:43'),
(44, 7, 1, 0, '0.4 km', NULL, NULL, 'I', 1, '2019-10-09 10:20:58', '2019-10-09 10:20:58'),
(45, 7, 2, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 10:21:12', '2019-10-09 10:21:12'),
(46, 7, 1, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 10:21:29', '2019-10-09 10:21:29'),
(47, 7, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:21:42', '2019-10-09 10:21:42'),
(48, 7, 3, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 10:21:58', '2019-10-09 10:21:58'),
(49, 7, 4, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:22:10', '2019-10-09 10:22:10'),
(50, 8, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:26:27', '2019-10-09 10:26:27'),
(51, 8, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 11:35:07', '2019-10-09 11:35:07'),
(52, 8, 3, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-09 11:35:19', '2019-10-09 11:35:19'),
(53, 8, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 11:35:33', '2019-10-09 11:35:33'),
(54, 8, 5, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-09 11:35:47', '2019-10-09 11:35:47'),
(55, 8, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 11:36:02', '2019-10-09 11:36:02'),
(56, 8, 7, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 11:44:33', '2019-10-09 11:44:33'),
(57, 8, 8, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 11:44:48', '2019-10-09 11:44:48'),
(58, 8, 9, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-09 11:45:39', '2019-10-09 11:45:39'),
(59, 8, 10, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 11:45:57', '2019-10-09 11:45:57'),
(60, 8, 11, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-09 11:46:11', '2019-10-09 11:46:11'),
(61, 8, 12, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 11:46:33', '2019-10-09 11:46:33'),
(62, 9, 1, 5, '0:00:30-0:01:00', NULL, NULL, 'R', 1, '2019-10-11 07:22:14', '2019-10-11 07:22:14'),
(63, 9, 2, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:22:37', '2019-10-11 07:22:37'),
(64, 9, 3, 5, '0:00:30-0:01:00', NULL, NULL, 'R', 1, '2019-10-11 07:22:59', '2019-10-11 07:22:59'),
(65, 9, 4, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:23:23', '2019-10-11 07:23:23'),
(66, 9, 5, 5, '0:00:30-0:01:00', NULL, '-', 'R', 1, '2019-10-11 07:23:40', '2019-10-11 07:23:40'),
(67, 9, 6, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:24:01', '2019-10-11 07:24:01'),
(68, 9, 7, 5, '0:00:30-0:01:00', NULL, '-', 'R', 1, '2019-10-11 07:24:36', '2019-10-11 07:24:36'),
(69, 9, 8, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:24:55', '2019-10-11 07:24:55'),
(70, 9, 9, 5, '0:00:30-0:01:00', NULL, '-', 'R', 1, '2019-10-11 07:25:14', '2019-10-11 07:25:14'),
(71, 9, 10, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:25:30', '2019-10-11 07:25:30'),
(72, 10, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-11 07:30:29', '2019-10-11 07:30:29'),
(73, 10, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-11 07:30:48', '2019-10-11 07:30:48'),
(74, 10, 3, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-11 07:31:04', '2019-10-11 07:31:04'),
(75, 10, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:31:23', '2019-10-11 07:31:23'),
(76, 10, 5, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-11 07:31:39', '2019-10-11 07:31:39'),
(77, 10, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:32:02', '2019-10-11 07:32:02'),
(78, 10, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-11 07:32:19', '2019-10-11 07:32:19'),
(79, 10, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-11 07:32:35', '2019-10-11 07:32:35'),
(80, 10, 3, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-11 07:32:53', '2019-10-11 07:32:53'),
(81, 10, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:33:08', '2019-10-11 07:33:08'),
(82, 10, 5, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-11 07:33:27', '2019-10-11 07:33:27'),
(83, 10, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:33:43', '2019-10-11 07:33:43'),
(84, 10, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-11 07:33:58', '2019-10-11 07:33:58'),
(85, 10, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-11 07:34:14', '2019-10-11 07:34:14'),
(86, 10, 3, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-11 07:34:31', '2019-10-11 07:34:31'),
(87, 10, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:34:46', '2019-10-11 07:34:46'),
(88, 10, 5, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-11 07:35:00', '2019-10-11 07:35:00'),
(89, 10, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:35:17', '2019-10-11 07:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `completed_training_logs`
--

DROP TABLE IF EXISTS `completed_training_logs`;
CREATE TABLE IF NOT EXISTS `completed_training_logs` (
  `id` bigint(20) unsigned NOT NULL,
  `exercise` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'completed Exercise tile details',
  `training_log_id` bigint(20) NOT NULL COMMENT 'training Log Id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `completed_training_programs`
--

DROP TABLE IF EXISTS `completed_training_programs`;
CREATE TABLE IF NOT EXISTS `completed_training_programs` (
  `id` bigint(20) unsigned NOT NULL,
  `program_id` int(10) unsigned NOT NULL COMMENT 'training program id',
  `week_wise_workout_id` bigint(20) DEFAULT NULL COMMENT 'week wise workouts id',
  `exercise` text COLLATE utf8mb4_unicode_ci COMMENT 'Store exercise object',
  `date` timestamp NULL DEFAULT NULL COMMENT 'date of program date selected',
  `is_complete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'User Complete this training log exercise',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2473 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `completed_training_programs`
--

INSERT INTO `completed_training_programs` (`id`, `program_id`, `week_wise_workout_id`, `exercise`, `date`, `is_complete`, `created_at`, `updated_at`) VALUES
(1, 1, 79, NULL, '2019-12-24 18:30:00', 0, '2019-12-23 09:22:21', '2019-12-23 09:22:21'),
(2, 1, 79, NULL, '2019-12-26 18:30:00', 0, '2019-12-23 09:24:26', '2019-12-23 09:24:26'),
(3, 1, 79, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":5,"updated_text":"3.5km","updated_rest":"","updated_percentage":""}]', '2019-12-27 18:30:00', 1, '2019-12-23 09:25:54', '2019-12-25 09:09:43'),
(4, 1, 102, NULL, '2020-04-19 18:30:00', 0, '2019-12-23 09:26:27', '2019-12-23 09:26:27'),
(5, 1, 106, NULL, '2020-04-23 18:30:00', 1, '2019-12-23 09:26:32', '2020-04-27 04:12:08'),
(6, 1, 100, NULL, '2020-04-17 16:00:00', 0, '2019-12-23 09:39:46', '2019-12-23 09:39:46'),
(7, 1, 8, NULL, '2020-02-02 18:30:00', 0, '2019-12-23 10:11:03', '2019-12-23 10:11:03'),
(8, 1, 79, NULL, '2019-12-25 18:30:00', 0, '2019-12-23 10:57:04', '2019-12-23 10:57:04'),
(9, 1, 14, NULL, '2020-02-04 18:30:00', 0, '2019-12-23 11:12:12', '2019-12-23 11:12:12'),
(10, 1, 10, NULL, '2020-02-05 18:30:00', 0, '2019-12-23 11:12:31', '2019-12-23 11:12:31'),
(11, 1, 12, '[{"common_programs_weeks_lap_id":"45","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"46","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"47","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"48","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"49","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-07 18:30:00', 1, '2019-12-23 11:14:21', '2020-01-09 10:50:00'),
(12, 2, 1, NULL, '2021-02-28 16:00:00', 0, '2019-12-23 15:09:47', '2019-12-23 15:09:47'),
(13, 2, 1, NULL, '2021-03-02 16:00:00', 0, '2019-12-23 15:11:05', '2019-12-23 15:11:05'),
(14, 2, 1, NULL, '2021-03-05 16:00:00', 0, '2019-12-23 15:11:06', '2019-12-23 15:11:06'),
(15, 2, 1, NULL, '2021-03-06 16:00:00', 0, '2019-12-23 15:11:07', '2019-12-23 15:11:07'),
(16, 2, 2, NULL, '2021-03-07 16:00:00', 0, '2019-12-23 15:11:08', '2019-12-23 15:11:08'),
(17, 2, 2, NULL, '2021-03-09 16:00:00', 0, '2019-12-23 15:11:09', '2019-12-23 15:11:09'),
(18, 2, 2, NULL, '2021-03-12 16:00:00', 0, '2019-12-23 15:11:10', '2019-12-23 15:11:10'),
(19, 2, 2, NULL, '2021-03-13 16:00:00', 0, '2019-12-23 15:11:11', '2019-12-23 15:11:11'),
(20, 2, 3, NULL, '2021-03-14 16:00:00', 0, '2019-12-23 15:11:14', '2019-12-23 15:11:14'),
(21, 2, 3, NULL, '2021-03-16 16:00:00', 0, '2019-12-23 15:11:18', '2019-12-23 15:11:18'),
(22, 2, 3, NULL, '2021-03-19 16:00:00', 0, '2019-12-23 15:11:19', '2019-12-23 15:11:19'),
(23, 2, 3, NULL, '2021-03-20 16:00:00', 0, '2019-12-23 15:11:20', '2019-12-23 15:11:20'),
(24, 2, 4, NULL, '2021-03-21 16:00:00', 0, '2019-12-23 15:11:21', '2019-12-23 15:11:21'),
(25, 2, 4, NULL, '2021-03-23 16:00:00', 0, '2019-12-23 15:11:22', '2019-12-23 15:11:22'),
(26, 2, 4, NULL, '2021-03-26 16:00:00', 0, '2019-12-23 15:11:23', '2019-12-23 15:11:23'),
(27, 2, 4, NULL, '2021-03-27 16:00:00', 0, '2019-12-23 15:11:24', '2019-12-23 15:11:24'),
(28, 2, 5, NULL, '2021-03-28 16:00:00', 0, '2019-12-23 15:11:25', '2019-12-23 15:11:25'),
(29, 2, 5, NULL, '2021-03-30 16:00:00', 0, '2019-12-23 15:11:26', '2019-12-23 15:11:26'),
(30, 2, 5, NULL, '2021-04-02 16:00:00', 0, '2019-12-23 15:11:30', '2019-12-23 15:11:30'),
(31, 2, 5, NULL, '2021-04-03 16:00:00', 0, '2019-12-23 15:11:32', '2019-12-23 15:11:32'),
(32, 2, 6, NULL, '2021-04-04 16:00:00', 0, '2019-12-23 15:11:33', '2019-12-23 15:11:33'),
(33, 2, 6, NULL, '2021-04-06 16:00:00', 0, '2019-12-23 15:11:34', '2019-12-23 15:11:34'),
(34, 2, 6, NULL, '2021-04-09 16:00:00', 0, '2019-12-23 15:11:35', '2019-12-23 15:11:35'),
(35, 2, 6, NULL, '2021-04-10 16:00:00', 0, '2019-12-23 15:11:36', '2019-12-23 15:11:36'),
(36, 2, 7, NULL, '2021-04-11 16:00:00', 0, '2019-12-23 15:11:37', '2019-12-23 15:11:37'),
(37, 2, 9, NULL, '2021-04-13 16:00:00', 0, '2019-12-23 15:11:46', '2019-12-23 15:11:46'),
(38, 2, 13, NULL, '2021-04-16 16:00:00', 0, '2019-12-23 15:11:52', '2019-12-23 15:11:52'),
(39, 2, 11, NULL, '2021-04-17 16:00:00', 0, '2019-12-23 15:11:53', '2019-12-23 15:11:53'),
(40, 2, 15, NULL, '2021-04-18 16:00:00', 0, '2019-12-23 15:12:00', '2019-12-23 15:12:00'),
(41, 2, 21, NULL, '2021-04-20 16:00:00', 0, '2019-12-23 15:12:04', '2019-12-23 15:12:04'),
(42, 2, 17, NULL, '2021-04-23 16:00:00', 0, '2019-12-23 15:12:05', '2019-12-23 15:12:05'),
(43, 2, 19, NULL, '2021-04-24 16:00:00', 0, '2019-12-23 15:12:09', '2019-12-23 15:12:09'),
(44, 2, 23, NULL, '2021-04-25 16:00:00', 0, '2019-12-23 15:12:11', '2019-12-23 15:12:11'),
(45, 2, 29, NULL, '2021-04-27 16:00:00', 0, '2019-12-23 15:12:15', '2019-12-23 15:12:15'),
(46, 2, 25, NULL, '2021-04-30 16:00:00', 0, '2019-12-23 15:12:29', '2019-12-23 15:12:29'),
(47, 2, 27, NULL, '2021-05-01 16:00:00', 0, '2019-12-23 15:12:30', '2019-12-23 15:12:30'),
(48, 2, 31, NULL, '2021-05-02 16:00:00', 0, '2019-12-23 15:12:35', '2019-12-23 15:12:35'),
(49, 2, 37, NULL, '2021-05-04 16:00:00', 0, '2019-12-23 15:12:37', '2019-12-23 15:12:37'),
(50, 2, 33, NULL, '2021-05-07 16:00:00', 0, '2019-12-23 15:12:43', '2019-12-23 15:12:43'),
(51, 2, 35, NULL, '2021-05-08 16:00:00', 0, '2019-12-23 15:12:47', '2019-12-23 15:12:47'),
(52, 2, 39, NULL, '2021-05-09 16:00:00', 0, '2019-12-23 15:12:53', '2019-12-23 15:12:53'),
(53, 2, 45, NULL, '2021-05-11 16:00:00', 0, '2019-12-23 15:12:58', '2019-12-23 15:12:58'),
(54, 2, 41, NULL, '2021-05-14 16:00:00', 0, '2019-12-23 15:13:00', '2019-12-23 15:13:00'),
(55, 2, 43, NULL, '2021-05-15 16:00:00', 0, '2019-12-23 15:13:02', '2019-12-23 15:13:02'),
(56, 2, 47, NULL, '2021-05-16 16:00:00', 0, '2019-12-23 15:13:07', '2019-12-23 15:13:07'),
(57, 2, 53, NULL, '2021-05-18 16:00:00', 0, '2019-12-23 15:13:14', '2019-12-23 15:13:14'),
(58, 2, 49, NULL, '2021-05-21 16:00:00', 0, '2019-12-23 15:13:16', '2019-12-23 15:13:16'),
(59, 2, 51, NULL, '2021-05-22 16:00:00', 0, '2019-12-23 15:13:18', '2019-12-23 15:13:18'),
(60, 2, 55, NULL, '2021-05-23 16:00:00', 0, '2019-12-23 15:13:26', '2019-12-23 15:13:26'),
(61, 2, 61, NULL, '2021-05-25 16:00:00', 0, '2019-12-23 15:13:30', '2019-12-23 15:13:30'),
(62, 2, 57, NULL, '2021-05-28 16:00:00', 0, '2019-12-23 15:13:32', '2019-12-23 15:13:32'),
(63, 2, 59, NULL, '2021-05-29 16:00:00', 0, '2019-12-23 15:13:36', '2019-12-23 15:13:36'),
(64, 2, 63, NULL, '2021-05-30 16:00:00', 0, '2019-12-23 15:13:42', '2019-12-23 15:13:42'),
(65, 2, 69, NULL, '2021-06-01 16:00:00', 0, '2019-12-23 15:13:46', '2019-12-23 15:13:46'),
(66, 2, 65, NULL, '2021-06-04 16:00:00', 0, '2019-12-23 15:13:50', '2019-12-23 15:13:50'),
(67, 2, 67, NULL, '2021-06-05 16:00:00', 0, '2019-12-23 15:13:51', '2019-12-23 15:13:51'),
(68, 2, 71, NULL, '2021-06-06 16:00:00', 0, '2019-12-23 15:13:55', '2019-12-23 15:13:55'),
(69, 2, 77, NULL, '2021-06-08 16:00:00', 0, '2019-12-23 15:14:02', '2019-12-23 15:14:02'),
(70, 2, 73, NULL, '2021-06-11 16:00:00', 0, '2019-12-23 15:14:13', '2019-12-23 15:14:13'),
(71, 2, 75, NULL, '2021-06-12 16:00:00', 0, '2019-12-23 15:14:33', '2019-12-23 15:14:33'),
(72, 2, 85, NULL, '2021-06-13 16:00:00', 0, '2019-12-23 15:14:46', '2019-12-23 15:14:46'),
(73, 2, 91, NULL, '2021-06-15 16:00:00', 0, '2019-12-23 15:14:48', '2019-12-23 15:14:48'),
(74, 2, 87, NULL, '2021-06-18 16:00:00', 0, '2019-12-23 15:14:51', '2019-12-23 15:14:51'),
(75, 2, 89, NULL, '2021-06-19 16:00:00', 0, '2019-12-23 15:15:00', '2019-12-23 15:15:00'),
(76, 2, 93, NULL, '2021-06-20 16:00:00', 0, '2019-12-23 15:15:02', '2019-12-23 15:15:02'),
(77, 2, 99, NULL, '2021-06-22 16:00:00', 0, '2019-12-23 15:15:06', '2019-12-23 15:15:06'),
(78, 2, 95, NULL, '2021-06-25 16:00:00', 0, '2019-12-23 15:15:09', '2019-12-23 15:15:09'),
(79, 2, 97, NULL, '2021-06-26 16:00:00', 0, '2019-12-23 15:15:14', '2019-12-23 15:15:14'),
(80, 2, 101, NULL, '2021-06-27 16:00:00', 0, '2019-12-23 15:15:20', '2019-12-23 15:15:20'),
(81, 2, 105, NULL, '2021-06-29 16:00:00', 0, '2019-12-23 15:15:32', '2019-12-23 15:15:32'),
(82, 2, 103, NULL, '2021-07-02 16:00:00', 0, '2019-12-23 15:15:42', '2019-12-23 15:15:42'),
(83, 1, 66, NULL, '2020-03-25 18:30:00', 0, '2019-12-24 04:19:14', '2019-12-24 04:19:14'),
(84, 1, 70, NULL, '2020-03-26 18:30:00', 0, '2019-12-24 04:23:50', '2019-12-24 04:23:50'),
(85, 1, 68, '[{"common_programs_weeks_lap_id":"224","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-27 18:30:00', 1, '2019-12-24 04:23:58', '2019-12-29 05:16:02'),
(86, 1, 74, NULL, '2020-04-01 18:30:00', 0, '2019-12-24 04:25:48', '2019-12-24 04:25:48'),
(87, 1, 78, NULL, '2020-04-02 18:30:00', 0, '2019-12-24 04:47:48', '2019-12-24 04:47:48'),
(88, 1, 82, NULL, '2020-01-15 16:00:00', 0, '2019-12-24 16:53:10', '2019-12-24 16:53:10'),
(89, 1, 82, NULL, '2020-01-17 16:00:00', 0, '2019-12-24 16:53:15', '2019-12-24 16:53:15'),
(90, 1, 83, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":16,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-22 16:00:00', 1, '2019-12-24 16:53:16', '2020-01-16 15:36:16'),
(91, 1, 22, '[{"common_programs_weeks_lap_id":"73","is_complete":true,"completed_time":3,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-12 16:00:00', 1, '2019-12-24 16:53:20', '2020-01-09 11:15:50'),
(92, 1, 18, NULL, '2020-02-13 16:00:00', 0, '2019-12-24 16:53:22', '2019-12-24 16:53:22'),
(93, 1, 22, NULL, '2020-02-14 16:00:00', 0, '2019-12-24 16:53:24', '2019-12-24 16:53:24'),
(94, 1, 32, NULL, '2020-02-25 16:00:00', 0, '2019-12-24 16:53:30', '2019-12-24 16:53:30'),
(95, 1, 38, NULL, '2020-02-26 16:00:00', 0, '2019-12-24 16:53:30', '2019-12-24 16:53:30'),
(96, 1, 38, '[{"common_programs_weeks_lap_id":"127","is_complete":true,"completed_time":9,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-28 16:00:00', 1, '2019-12-24 16:54:03', '2020-01-09 09:54:17'),
(97, 1, 64, NULL, '2020-03-24 16:00:00', 0, '2019-12-24 16:54:06', '2019-12-24 16:54:06'),
(98, 1, 56, NULL, '2020-03-17 16:00:00', 0, '2019-12-24 16:56:43', '2019-12-24 16:56:43'),
(99, 1, 48, NULL, '2020-03-10 16:00:00', 0, '2019-12-24 16:56:51', '2019-12-24 16:56:51'),
(100, 1, 79, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":6,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2019-12-22 16:00:00', 1, '2019-12-24 17:03:34', '2019-12-25 09:08:55'),
(184, 4, 107, NULL, '2021-11-08 16:00:00', 0, '2019-12-25 09:23:02', '2019-12-25 09:23:02'),
(185, 4, 107, NULL, '2021-11-10 16:00:00', 0, '2019-12-25 09:23:50', '2019-12-25 09:23:50'),
(186, 4, 107, NULL, '2021-11-11 16:00:00', 0, '2019-12-25 09:23:51', '2019-12-25 09:23:51'),
(187, 4, 107, NULL, '2021-11-13 16:00:00', 0, '2019-12-25 09:23:51', '2019-12-25 09:23:51'),
(188, 4, 107, NULL, '2021-11-17 16:00:00', 0, '2019-12-25 09:23:53', '2019-12-25 09:23:53'),
(189, 4, 107, NULL, '2021-11-19 16:00:00', 0, '2019-12-25 09:23:55', '2019-12-25 09:23:55'),
(190, 4, 107, NULL, '2021-11-20 16:00:00', 0, '2019-12-25 09:23:56', '2019-12-25 09:23:56'),
(191, 4, 107, NULL, '2021-11-22 16:00:00', 0, '2019-12-25 09:23:57', '2019-12-25 09:23:57'),
(192, 4, 107, NULL, '2021-11-26 16:00:00', 0, '2019-12-25 09:23:59', '2019-12-25 09:23:59'),
(193, 4, 107, NULL, '2021-11-29 16:00:00', 0, '2019-12-25 09:24:01', '2019-12-25 09:24:01'),
(194, 4, 107, NULL, '2021-12-03 16:00:00', 0, '2019-12-25 09:24:10', '2019-12-25 09:24:10'),
(195, 4, 107, NULL, '2021-12-06 16:00:00', 0, '2019-12-25 09:24:12', '2019-12-25 09:24:12'),
(196, 4, 107, NULL, '2021-12-09 16:00:00', 0, '2019-12-25 09:24:14', '2019-12-25 09:24:14'),
(197, 4, 107, NULL, '2021-12-13 16:00:00', 0, '2019-12-25 09:24:16', '2019-12-25 09:24:16'),
(198, 4, 107, NULL, '2021-12-17 16:00:00', 0, '2019-12-25 09:24:17', '2019-12-25 09:24:17'),
(199, 4, 107, NULL, '2021-12-18 16:00:00', 0, '2019-12-25 09:24:19', '2019-12-25 09:24:19'),
(200, 4, 108, NULL, '2021-12-19 16:00:00', 0, '2019-12-25 09:24:21', '2019-12-25 09:24:21'),
(201, 4, 111, NULL, '2021-12-20 16:00:00', 0, '2019-12-25 09:24:26', '2019-12-25 09:24:26'),
(202, 4, 109, NULL, '2021-12-22 16:00:00', 0, '2019-12-25 09:24:29', '2019-12-25 09:24:29'),
(203, 4, 111, NULL, '2021-12-23 16:00:00', 0, '2019-12-25 09:24:33', '2019-12-25 09:24:33'),
(204, 4, 110, NULL, '2021-12-24 16:00:00', 0, '2019-12-25 09:24:36', '2019-12-25 09:24:36'),
(205, 4, 111, NULL, '2021-12-25 16:00:00', 0, '2019-12-25 09:24:39', '2019-12-25 09:24:39'),
(206, 4, 112, NULL, '2021-12-26 16:00:00', 0, '2019-12-25 09:24:41', '2019-12-25 09:24:41'),
(207, 4, 115, NULL, '2021-12-27 16:00:00', 0, '2019-12-25 09:24:48', '2019-12-25 09:24:48'),
(208, 4, 113, NULL, '2021-12-29 16:00:00', 0, '2019-12-25 09:24:50', '2019-12-25 09:24:50'),
(209, 4, 115, NULL, '2021-12-30 16:00:00', 0, '2019-12-25 09:24:52', '2019-12-25 09:24:52'),
(210, 4, 114, NULL, '2021-12-31 16:00:00', 0, '2019-12-25 09:24:57', '2019-12-25 09:24:57'),
(211, 4, 115, NULL, '2022-01-01 16:00:00', 0, '2019-12-25 09:25:00', '2019-12-25 09:25:00'),
(212, 4, 116, NULL, '2022-01-02 16:00:00', 0, '2019-12-25 09:25:04', '2019-12-25 09:25:04'),
(213, 4, 119, NULL, '2022-01-03 16:00:00', 0, '2019-12-25 09:25:06', '2019-12-25 09:25:06'),
(214, 4, 117, NULL, '2022-01-05 16:00:00', 0, '2019-12-25 09:25:08', '2019-12-25 09:25:08'),
(215, 4, 119, NULL, '2022-01-06 16:00:00', 0, '2019-12-25 09:25:10', '2019-12-25 09:25:10'),
(216, 4, 118, NULL, '2022-01-07 16:00:00', 0, '2019-12-25 09:25:12', '2019-12-25 09:25:12'),
(217, 4, 119, NULL, '2022-01-08 16:00:00', 0, '2019-12-25 09:25:14', '2019-12-25 09:25:14'),
(218, 4, 120, NULL, '2022-01-09 16:00:00', 0, '2019-12-25 09:25:20', '2019-12-25 09:25:20'),
(219, 4, 123, NULL, '2022-01-10 16:00:00', 0, '2019-12-25 09:25:25', '2019-12-25 09:25:25'),
(220, 4, 121, NULL, '2022-01-12 16:00:00', 0, '2019-12-25 09:25:27', '2019-12-25 09:25:27'),
(221, 4, 123, NULL, '2022-01-13 16:00:00', 0, '2019-12-25 09:25:30', '2019-12-25 09:25:30'),
(222, 4, 122, NULL, '2022-01-14 16:00:00', 0, '2019-12-25 09:25:32', '2019-12-25 09:25:32'),
(223, 4, 124, NULL, '2022-01-16 16:00:00', 0, '2019-12-25 09:25:35', '2019-12-25 09:25:35'),
(224, 4, 127, NULL, '2022-01-17 16:00:00', 0, '2019-12-25 09:25:40', '2019-12-25 09:25:40'),
(225, 4, 125, NULL, '2022-01-19 16:00:00', 0, '2019-12-25 09:25:42', '2019-12-25 09:25:42'),
(226, 4, 127, NULL, '2022-01-20 16:00:00', 0, '2019-12-25 09:25:45', '2019-12-25 09:25:45'),
(227, 4, 126, NULL, '2022-01-21 16:00:00', 0, '2019-12-25 09:25:48', '2019-12-25 09:25:48'),
(228, 4, 127, NULL, '2022-01-22 16:00:00', 0, '2019-12-25 09:25:50', '2019-12-25 09:25:50'),
(229, 4, 128, NULL, '2022-01-23 16:00:00', 0, '2019-12-25 09:25:53', '2019-12-25 09:25:53'),
(230, 4, 131, NULL, '2022-01-24 16:00:00', 0, '2019-12-25 09:25:57', '2019-12-25 09:25:57'),
(231, 4, 129, NULL, '2022-01-26 16:00:00', 0, '2019-12-25 09:26:00', '2019-12-25 09:26:00'),
(232, 4, 131, NULL, '2022-01-27 16:00:00', 0, '2019-12-25 09:26:02', '2019-12-25 09:26:02'),
(233, 4, 130, NULL, '2022-01-28 16:00:00', 0, '2019-12-25 09:26:04', '2019-12-25 09:26:04'),
(234, 4, 131, NULL, '2022-01-29 16:00:00', 0, '2019-12-25 09:26:07', '2019-12-25 09:26:07'),
(235, 4, 132, NULL, '2022-01-30 16:00:00', 0, '2019-12-25 09:26:09', '2019-12-25 09:26:09'),
(236, 4, 135, NULL, '2022-01-31 16:00:00', 0, '2019-12-25 09:26:15', '2019-12-25 09:26:15'),
(237, 4, 133, NULL, '2022-02-02 16:00:00', 0, '2019-12-25 09:26:20', '2019-12-25 09:26:20'),
(238, 4, 135, NULL, '2022-02-03 16:00:00', 0, '2019-12-25 09:26:25', '2019-12-25 09:26:25'),
(239, 4, 134, NULL, '2022-02-04 16:00:00', 0, '2019-12-25 09:26:27', '2019-12-25 09:26:27'),
(240, 4, 135, NULL, '2022-02-05 16:00:00', 0, '2019-12-25 09:26:29', '2019-12-25 09:26:29'),
(241, 4, 136, NULL, '2022-02-06 16:00:00', 0, '2019-12-25 09:26:32', '2019-12-25 09:26:32'),
(242, 4, 139, NULL, '2022-02-07 16:00:00', 0, '2019-12-25 09:26:37', '2019-12-25 09:26:37'),
(243, 4, 137, NULL, '2022-02-09 16:00:00', 0, '2019-12-25 09:26:39', '2019-12-25 09:26:39'),
(244, 4, 139, NULL, '2022-02-10 16:00:00', 0, '2019-12-25 09:26:42', '2019-12-25 09:26:42'),
(245, 4, 138, NULL, '2022-02-11 16:00:00', 0, '2019-12-25 09:26:44', '2019-12-25 09:26:44'),
(246, 4, 139, NULL, '2022-02-12 16:00:00', 0, '2019-12-25 09:26:48', '2019-12-25 09:26:48'),
(247, 4, 140, NULL, '2022-02-13 16:00:00', 0, '2019-12-25 09:26:52', '2019-12-25 09:26:52'),
(248, 4, 143, NULL, '2022-02-14 16:00:00', 0, '2019-12-25 09:27:00', '2019-12-25 09:27:00'),
(249, 4, 141, NULL, '2022-02-16 16:00:00', 0, '2019-12-25 09:27:02', '2019-12-25 09:27:02'),
(250, 4, 143, NULL, '2022-02-17 16:00:00', 0, '2019-12-25 09:27:04', '2019-12-25 09:27:04'),
(251, 4, 142, NULL, '2022-02-18 16:00:00', 0, '2019-12-25 09:27:06', '2019-12-25 09:27:06'),
(252, 4, 143, NULL, '2022-02-19 16:00:00', 0, '2019-12-25 09:27:09', '2019-12-25 09:27:09'),
(253, 4, 144, NULL, '2022-02-20 16:00:00', 0, '2019-12-25 09:27:11', '2019-12-25 09:27:11'),
(254, 4, 147, NULL, '2022-02-21 16:00:00', 0, '2019-12-25 09:27:18', '2019-12-25 09:27:18'),
(255, 4, 145, NULL, '2022-02-23 16:00:00', 0, '2019-12-25 09:27:20', '2019-12-25 09:27:20'),
(256, 4, 147, NULL, '2022-02-24 16:00:00', 0, '2019-12-25 09:27:24', '2019-12-25 09:27:24'),
(257, 4, 146, NULL, '2022-02-25 16:00:00', 0, '2019-12-25 09:27:26', '2019-12-25 09:27:26'),
(258, 4, 147, NULL, '2022-02-26 16:00:00', 0, '2019-12-25 09:27:28', '2019-12-25 09:27:28'),
(259, 4, 148, NULL, '2022-02-27 16:00:00', 0, '2019-12-25 09:27:31', '2019-12-25 09:27:31'),
(260, 4, 151, NULL, '2022-02-28 16:00:00', 0, '2019-12-25 09:27:40', '2019-12-25 09:27:40'),
(261, 4, 149, NULL, '2022-03-02 16:00:00', 0, '2019-12-25 09:27:43', '2019-12-25 09:27:43'),
(262, 4, 151, NULL, '2022-03-03 16:00:00', 0, '2019-12-25 09:27:46', '2019-12-25 09:27:46'),
(263, 4, 150, NULL, '2022-03-04 16:00:00', 0, '2019-12-25 09:27:48', '2019-12-25 09:27:48'),
(264, 4, 151, NULL, '2022-03-05 16:00:00', 0, '2019-12-25 09:27:51', '2019-12-25 09:27:51'),
(265, 4, 152, NULL, '2022-03-06 16:00:00', 0, '2019-12-25 09:27:56', '2019-12-25 09:27:56'),
(266, 4, 155, NULL, '2022-03-07 16:00:00', 0, '2019-12-25 09:28:01', '2019-12-25 09:28:01'),
(267, 4, 153, NULL, '2022-03-09 16:00:00', 0, '2019-12-25 09:28:05', '2019-12-25 09:28:05'),
(268, 4, 155, NULL, '2022-03-10 16:00:00', 0, '2019-12-25 09:28:09', '2019-12-25 09:28:09'),
(269, 4, 154, NULL, '2022-03-11 16:00:00', 0, '2019-12-25 09:28:13', '2019-12-25 09:28:13'),
(270, 4, 155, NULL, '2022-03-12 16:00:00', 0, '2019-12-25 09:28:16', '2019-12-25 09:28:16'),
(271, 4, 156, NULL, '2022-03-13 16:00:00', 0, '2019-12-25 09:28:18', '2019-12-25 09:28:18'),
(272, 4, 159, NULL, '2022-03-14 16:00:00', 0, '2019-12-25 09:28:22', '2019-12-25 09:28:22'),
(273, 4, 157, NULL, '2022-03-16 16:00:00', 0, '2019-12-25 09:28:26', '2019-12-25 09:28:26'),
(274, 4, 159, NULL, '2022-03-17 16:00:00', 0, '2019-12-25 09:28:28', '2019-12-25 09:28:28'),
(275, 4, 158, NULL, '2022-03-18 16:00:00', 0, '2019-12-25 09:28:30', '2019-12-25 09:28:30'),
(276, 4, 159, NULL, '2022-03-19 16:00:00', 0, '2019-12-25 09:28:34', '2019-12-25 09:28:34'),
(277, 4, 160, NULL, '2022-03-20 16:00:00', 0, '2019-12-25 09:28:37', '2019-12-25 09:28:37'),
(278, 4, 163, NULL, '2022-03-21 16:00:00', 0, '2019-12-25 09:28:44', '2019-12-25 09:28:44'),
(279, 4, 161, NULL, '2022-03-23 16:00:00', 0, '2019-12-25 09:28:46', '2019-12-25 09:28:46'),
(280, 4, 163, NULL, '2022-03-24 16:00:00', 0, '2019-12-25 09:28:49', '2019-12-25 09:28:49'),
(281, 4, 162, NULL, '2022-03-25 16:00:00', 0, '2019-12-25 09:28:51', '2019-12-25 09:28:51'),
(282, 4, 163, NULL, '2022-03-26 16:00:00', 0, '2019-12-25 09:28:54', '2019-12-25 09:28:54'),
(283, 4, 164, NULL, '2022-03-27 16:00:00', 0, '2019-12-25 09:28:57', '2019-12-25 09:28:57'),
(284, 4, 167, NULL, '2022-03-28 16:00:00', 0, '2019-12-25 09:29:00', '2019-12-25 09:29:00'),
(285, 4, 165, NULL, '2022-03-30 16:00:00', 0, '2019-12-25 09:29:02', '2019-12-25 09:29:02'),
(286, 4, 167, NULL, '2022-03-31 16:00:00', 0, '2019-12-25 09:29:07', '2019-12-25 09:29:07'),
(287, 4, 166, NULL, '2022-04-01 16:00:00', 0, '2019-12-25 09:29:12', '2019-12-25 09:29:12'),
(288, 4, 167, NULL, '2022-04-02 16:00:00', 0, '2019-12-25 09:29:16', '2019-12-25 09:29:16'),
(289, 4, 168, NULL, '2022-04-03 16:00:00', 0, '2019-12-25 09:29:19', '2019-12-25 09:29:19'),
(290, 4, 171, NULL, '2022-04-04 16:00:00', 0, '2019-12-25 09:29:22', '2019-12-25 09:29:22'),
(291, 4, 169, NULL, '2022-04-06 16:00:00', 0, '2019-12-25 09:29:24', '2019-12-25 09:29:24'),
(292, 4, 171, NULL, '2022-04-07 16:00:00', 0, '2019-12-25 09:29:26', '2019-12-25 09:29:26'),
(293, 4, 170, NULL, '2022-04-08 16:00:00', 0, '2019-12-25 09:29:28', '2019-12-25 09:29:28'),
(294, 4, 171, NULL, '2022-04-09 16:00:00', 0, '2019-12-25 09:29:32', '2019-12-25 09:29:32'),
(295, 4, 172, NULL, '2022-04-10 16:00:00', 0, '2019-12-25 09:29:35', '2019-12-25 09:29:35'),
(296, 4, 175, NULL, '2022-04-11 16:00:00', 0, '2019-12-25 09:29:38', '2019-12-25 09:29:38'),
(297, 4, 173, NULL, '2022-04-13 16:00:00', 0, '2019-12-25 09:29:40', '2019-12-25 09:29:40'),
(298, 4, 175, NULL, '2022-04-14 16:00:00', 0, '2019-12-25 09:29:44', '2019-12-25 09:29:44'),
(299, 4, 174, NULL, '2022-04-15 16:00:00', 0, '2019-12-25 09:29:47', '2019-12-25 09:29:47'),
(300, 4, 175, NULL, '2022-04-16 16:00:00', 0, '2019-12-25 09:29:50', '2019-12-25 09:29:50'),
(301, 4, 177, NULL, '2022-04-17 16:00:00', 0, '2019-12-25 09:29:55', '2019-12-25 09:29:55'),
(302, 4, 177, NULL, '2022-04-18 16:00:00', 0, '2019-12-25 09:29:58', '2019-12-25 09:29:58'),
(303, 4, 176, NULL, '2022-04-20 16:00:00', 0, '2019-12-25 09:30:00', '2019-12-25 09:30:00'),
(304, 4, 177, NULL, '2022-04-21 16:00:00', 0, '2019-12-25 09:30:02', '2019-12-25 09:30:02'),
(305, 4, 107, NULL, '2021-11-15 16:00:00', 0, '2019-12-25 09:38:24', '2019-12-25 09:38:24'),
(306, 4, 107, NULL, '2021-11-18 16:00:00', 0, '2019-12-25 09:38:41', '2019-12-25 09:38:41'),
(307, 4, 107, NULL, '2021-11-24 16:00:00', 0, '2019-12-25 09:39:09', '2019-12-25 09:39:09'),
(308, 4, 107, NULL, '2021-11-25 16:00:00', 0, '2019-12-25 09:39:15', '2019-12-25 09:39:15'),
(309, 4, 107, NULL, '2021-11-27 16:00:00', 0, '2019-12-25 09:39:21', '2019-12-25 09:39:21'),
(310, 4, 107, NULL, '2021-12-01 16:00:00', 0, '2019-12-25 09:39:37', '2019-12-25 09:39:37'),
(311, 4, 107, NULL, '2021-12-02 16:00:00', 0, '2019-12-25 09:39:43', '2019-12-25 09:39:43'),
(312, 4, 107, NULL, '2021-12-10 16:00:00', 0, '2019-12-25 09:44:00', '2019-12-25 09:44:00'),
(313, 4, 107, NULL, '2021-12-11 16:00:00', 0, '2019-12-25 09:44:02', '2019-12-25 09:44:02'),
(314, 4, 107, NULL, '2021-12-15 16:00:00', 0, '2019-12-25 09:44:17', '2019-12-25 09:44:17'),
(315, 1, 84, NULL, '2020-01-29 16:00:00', 0, '2019-12-25 09:46:47', '2019-12-25 09:46:47'),
(316, 5, 111, NULL, '2022-06-06 16:00:00', 0, '2019-12-25 10:40:36', '2019-12-25 10:40:36'),
(317, 5, 111, NULL, '2022-06-09 16:00:00', 0, '2019-12-25 10:40:38', '2019-12-25 10:40:38'),
(318, 5, 109, NULL, '2022-06-08 16:00:00', 0, '2019-12-25 10:40:39', '2019-12-25 10:40:39'),
(319, 5, 107, NULL, '2022-06-01 16:00:00', 0, '2019-12-25 10:40:44', '2019-12-25 10:40:44'),
(320, 5, 107, NULL, '2022-06-02 16:00:00', 0, '2019-12-25 10:40:45', '2019-12-25 10:40:45'),
(321, 5, 107, NULL, '2022-06-03 16:00:00', 0, '2019-12-25 10:40:48', '2019-12-25 10:40:48'),
(322, 5, 108, NULL, '2022-06-05 16:00:00', 0, '2019-12-25 10:40:54', '2019-12-25 10:40:54'),
(323, 5, 107, NULL, '2022-05-01 16:00:00', 0, '2019-12-25 10:41:44', '2019-12-25 10:41:44'),
(324, 5, 110, NULL, '2022-06-10 16:00:00', 0, '2019-12-25 10:42:05', '2019-12-25 10:42:05'),
(325, 5, 112, NULL, '2022-06-12 16:00:00', 0, '2019-12-25 10:42:07', '2019-12-25 10:42:07'),
(326, 5, 115, NULL, '2022-06-13 16:00:00', 0, '2019-12-25 10:42:11', '2019-12-25 10:42:11'),
(327, 5, 113, NULL, '2022-06-15 16:00:00', 0, '2019-12-25 10:42:15', '2019-12-25 10:42:15'),
(328, 5, 115, NULL, '2022-06-16 16:00:00', 0, '2019-12-25 10:42:16', '2019-12-25 10:42:16'),
(329, 5, 114, NULL, '2022-06-17 16:00:00', 0, '2019-12-25 10:42:18', '2019-12-25 10:42:18'),
(330, 5, 116, NULL, '2022-06-19 16:00:00', 0, '2019-12-25 10:42:20', '2019-12-25 10:42:20'),
(331, 5, 119, NULL, '2022-06-20 16:00:00', 0, '2019-12-25 10:42:23', '2019-12-25 10:42:23'),
(332, 5, 117, NULL, '2022-06-22 16:00:00', 0, '2019-12-25 10:42:25', '2019-12-25 10:42:25'),
(333, 5, 119, NULL, '2022-06-23 16:00:00', 0, '2019-12-25 10:42:30', '2019-12-25 10:42:30'),
(334, 5, 118, NULL, '2022-06-24 16:00:00', 0, '2019-12-25 10:42:31', '2019-12-25 10:42:31'),
(335, 5, 120, NULL, '2022-06-26 16:00:00', 0, '2019-12-25 10:42:34', '2019-12-25 10:42:34'),
(336, 5, 123, NULL, '2022-06-27 16:00:00', 0, '2019-12-25 10:42:39', '2019-12-25 10:42:39'),
(337, 5, 121, NULL, '2022-06-29 16:00:00', 0, '2019-12-25 10:42:41', '2019-12-25 10:42:41'),
(338, 5, 122, NULL, '2022-06-30 16:00:00', 0, '2019-12-25 10:42:49', '2019-12-25 10:42:49'),
(339, 5, 124, NULL, '2022-07-03 16:00:00', 0, '2019-12-25 10:42:54', '2019-12-25 10:42:54'),
(340, 5, 127, NULL, '2022-07-04 16:00:00', 0, '2019-12-25 10:42:56', '2019-12-25 10:42:56'),
(341, 5, 125, NULL, '2022-07-06 16:00:00', 0, '2019-12-25 10:42:59', '2019-12-25 10:42:59'),
(342, 5, 127, NULL, '2022-07-07 16:00:00', 0, '2019-12-25 10:43:00', '2019-12-25 10:43:00'),
(343, 5, 126, NULL, '2022-07-08 16:00:00', 0, '2019-12-25 10:43:02', '2019-12-25 10:43:02'),
(344, 5, 128, NULL, '2022-07-10 16:00:00', 0, '2019-12-25 10:43:04', '2019-12-25 10:43:04'),
(345, 5, 131, NULL, '2022-07-11 16:00:00', 0, '2019-12-25 10:44:52', '2019-12-25 10:44:52'),
(346, 5, 129, NULL, '2022-07-13 16:00:00', 0, '2019-12-25 10:44:55', '2019-12-25 10:44:55'),
(347, 5, 131, NULL, '2022-07-14 16:00:00', 0, '2019-12-25 10:44:57', '2019-12-25 10:44:57'),
(348, 5, 130, NULL, '2022-07-15 16:00:00', 0, '2019-12-25 10:44:59', '2019-12-25 10:44:59'),
(349, 5, 132, NULL, '2022-07-17 16:00:00', 0, '2019-12-25 10:45:02', '2019-12-25 10:45:02'),
(350, 5, 135, NULL, '2022-07-18 16:00:00', 0, '2019-12-25 10:45:06', '2019-12-25 10:45:06'),
(351, 5, 133, NULL, '2022-07-20 16:00:00', 0, '2019-12-25 10:45:08', '2019-12-25 10:45:08'),
(352, 5, 135, NULL, '2022-07-21 16:00:00', 0, '2019-12-25 10:45:10', '2019-12-25 10:45:10'),
(353, 5, 134, NULL, '2022-07-22 16:00:00', 0, '2019-12-25 10:45:12', '2019-12-25 10:45:12'),
(354, 5, 136, NULL, '2022-07-24 16:00:00', 0, '2019-12-25 10:45:14', '2019-12-25 10:45:14'),
(355, 5, 139, NULL, '2022-07-25 16:00:00', 0, '2019-12-25 10:45:17', '2019-12-25 10:45:17'),
(356, 5, 137, NULL, '2022-07-27 16:00:00', 0, '2019-12-25 10:45:19', '2019-12-25 10:45:19'),
(357, 5, 139, NULL, '2022-07-28 16:00:00', 0, '2019-12-25 10:45:22', '2019-12-25 10:45:22'),
(358, 5, 138, NULL, '2022-07-29 16:00:00', 0, '2019-12-25 10:45:24', '2019-12-25 10:45:24'),
(359, 5, 140, NULL, '2022-07-31 16:00:00', 0, '2019-12-25 10:45:36', '2019-12-25 10:45:36'),
(360, 5, 143, NULL, '2022-08-01 16:00:00', 0, '2019-12-25 10:45:39', '2019-12-25 10:45:39'),
(361, 5, 141, NULL, '2022-08-03 16:00:00', 0, '2019-12-25 10:45:41', '2019-12-25 10:45:41'),
(362, 5, 143, NULL, '2022-08-04 16:00:00', 0, '2019-12-25 10:45:43', '2019-12-25 10:45:43'),
(363, 5, 142, NULL, '2022-08-05 16:00:00', 0, '2019-12-25 10:45:45', '2019-12-25 10:45:45'),
(364, 5, 144, NULL, '2022-08-07 16:00:00', 0, '2019-12-25 10:45:48', '2019-12-25 10:45:48'),
(365, 5, 147, NULL, '2022-08-08 16:00:00', 0, '2019-12-25 10:45:51', '2019-12-25 10:45:51'),
(366, 5, 145, NULL, '2022-08-10 16:00:00', 0, '2019-12-25 10:45:53', '2019-12-25 10:45:53'),
(367, 5, 147, NULL, '2022-08-11 16:00:00', 0, '2019-12-25 10:45:56', '2019-12-25 10:45:56'),
(368, 5, 146, NULL, '2022-08-12 16:00:00', 0, '2019-12-25 10:45:58', '2019-12-25 10:45:58'),
(369, 5, 148, NULL, '2022-08-14 16:00:00', 0, '2019-12-25 10:46:00', '2019-12-25 10:46:00'),
(370, 5, 151, NULL, '2022-08-15 16:00:00', 0, '2019-12-25 10:46:03', '2019-12-25 10:46:03'),
(371, 5, 149, NULL, '2022-08-17 16:00:00', 0, '2019-12-25 10:46:05', '2019-12-25 10:46:05'),
(372, 5, 151, NULL, '2022-08-18 16:00:00', 0, '2019-12-25 10:46:07', '2019-12-25 10:46:07'),
(373, 5, 150, NULL, '2022-08-19 16:00:00', 0, '2019-12-25 10:46:09', '2019-12-25 10:46:09'),
(374, 5, 152, NULL, '2022-08-21 16:00:00', 0, '2019-12-25 10:46:12', '2019-12-25 10:46:12'),
(375, 5, 155, NULL, '2022-08-22 16:00:00', 0, '2019-12-25 10:46:14', '2019-12-25 10:46:14'),
(376, 5, 153, NULL, '2022-08-24 16:00:00', 0, '2019-12-25 10:46:16', '2019-12-25 10:46:16'),
(377, 5, 155, NULL, '2022-08-25 16:00:00', 0, '2019-12-25 10:46:18', '2019-12-25 10:46:18'),
(378, 5, 154, NULL, '2022-08-26 16:00:00', 0, '2019-12-25 10:46:20', '2019-12-25 10:46:20'),
(379, 5, 156, NULL, '2022-08-28 16:00:00', 0, '2019-12-25 10:46:22', '2019-12-25 10:46:22'),
(380, 5, 159, NULL, '2022-08-29 16:00:00', 0, '2019-12-25 10:46:25', '2019-12-25 10:46:25'),
(381, 5, 157, NULL, '2022-08-31 16:00:00', 0, '2019-12-25 10:46:30', '2019-12-25 10:46:30'),
(382, 5, 159, NULL, '2022-09-01 16:00:00', 0, '2019-12-25 10:46:33', '2019-12-25 10:46:33'),
(383, 5, 158, NULL, '2022-09-02 16:00:00', 0, '2019-12-25 10:46:35', '2019-12-25 10:46:35'),
(384, 5, 160, NULL, '2022-09-04 16:00:00', 0, '2019-12-25 10:46:39', '2019-12-25 10:46:39'),
(385, 5, 163, NULL, '2022-09-05 16:00:00', 0, '2019-12-25 10:46:43', '2019-12-25 10:46:43'),
(386, 5, 161, NULL, '2022-09-07 16:00:00', 0, '2019-12-25 10:46:45', '2019-12-25 10:46:45'),
(387, 5, 163, NULL, '2022-09-08 16:00:00', 0, '2019-12-25 10:46:48', '2019-12-25 10:46:48'),
(388, 5, 162, NULL, '2022-09-09 16:00:00', 0, '2019-12-25 10:46:50', '2019-12-25 10:46:50'),
(389, 5, 164, NULL, '2022-09-11 16:00:00', 0, '2019-12-25 10:46:52', '2019-12-25 10:46:52'),
(390, 5, 167, NULL, '2022-09-12 16:00:00', 0, '2019-12-25 10:46:56', '2019-12-25 10:46:56'),
(391, 5, 165, NULL, '2022-09-14 16:00:00', 0, '2019-12-25 10:46:58', '2019-12-25 10:46:58'),
(392, 5, 167, NULL, '2022-09-15 16:00:00', 0, '2019-12-25 10:47:01', '2019-12-25 10:47:01'),
(393, 5, 166, NULL, '2022-09-16 16:00:00', 0, '2019-12-25 10:47:03', '2019-12-25 10:47:03'),
(394, 5, 168, NULL, '2022-09-18 16:00:00', 0, '2019-12-25 10:47:05', '2019-12-25 10:47:05'),
(395, 5, 171, NULL, '2022-09-19 16:00:00', 0, '2019-12-25 10:47:07', '2019-12-25 10:47:07'),
(396, 5, 169, NULL, '2022-09-21 16:00:00', 0, '2019-12-25 10:47:09', '2019-12-25 10:47:09'),
(397, 5, 171, NULL, '2022-09-22 16:00:00', 0, '2019-12-25 10:47:12', '2019-12-25 10:47:12'),
(398, 5, 170, NULL, '2022-09-23 16:00:00', 0, '2019-12-25 10:47:14', '2019-12-25 10:47:14'),
(399, 5, 172, NULL, '2022-09-25 16:00:00', 0, '2019-12-25 10:47:17', '2019-12-25 10:47:17'),
(400, 5, 175, NULL, '2022-09-26 16:00:00', 0, '2019-12-25 10:47:19', '2019-12-25 10:47:19'),
(401, 5, 173, NULL, '2022-09-28 16:00:00', 0, '2019-12-25 10:47:22', '2019-12-25 10:47:22'),
(402, 5, 175, NULL, '2022-09-29 16:00:00', 0, '2019-12-25 10:47:32', '2019-12-25 10:47:32'),
(403, 5, 174, NULL, '2022-09-30 16:00:00', 0, '2019-12-25 10:47:40', '2019-12-25 10:47:40'),
(404, 5, 177, NULL, '2022-10-02 16:00:00', 0, '2019-12-25 10:47:44', '2019-12-25 10:47:44'),
(405, 5, 176, NULL, '2022-10-03 16:00:00', 0, '2019-12-25 10:47:46', '2019-12-25 10:47:46'),
(406, 5, 177, NULL, '2022-10-05 16:00:00', 0, '2019-12-25 10:47:49', '2019-12-25 10:47:49'),
(413, 7, 111, NULL, '2020-02-04 18:30:00', 0, '2019-12-26 04:57:01', '2019-12-26 04:57:01'),
(414, 7, 128, NULL, '2020-03-08 18:30:00', 0, '2019-12-26 05:07:16', '2019-12-26 05:07:16'),
(415, 7, 170, NULL, '2020-05-22 18:30:00', 0, '2019-12-26 05:18:46', '2019-12-26 05:18:46'),
(416, 8, 182, NULL, '2020-04-27 16:00:00', 0, '2019-12-26 06:42:58', '2019-12-26 06:42:58'),
(417, 8, 182, NULL, '2020-04-28 16:00:00', 0, '2019-12-26 06:43:00', '2019-12-26 06:43:00'),
(418, 8, 182, NULL, '2020-04-30 16:00:00', 0, '2019-12-26 06:43:14', '2019-12-26 06:43:14'),
(419, 8, 182, NULL, '2020-05-01 16:00:00', 0, '2019-12-26 06:43:15', '2019-12-26 06:43:15'),
(420, 8, 182, NULL, '2020-05-02 16:00:00', 0, '2019-12-26 06:43:16', '2019-12-26 06:43:16'),
(421, 8, 182, NULL, '2020-05-04 16:00:00', 1, '2019-12-26 06:43:18', '2020-05-01 13:34:12'),
(422, 8, 182, NULL, '2020-05-05 16:00:00', 0, '2019-12-26 06:43:19', '2019-12-26 06:43:19'),
(423, 8, 182, NULL, '2020-05-07 16:00:00', 0, '2019-12-26 06:43:20', '2019-12-26 06:43:20'),
(424, 8, 182, NULL, '2020-05-08 16:00:00', 0, '2019-12-26 06:43:22', '2019-12-26 06:43:22'),
(425, 8, 182, NULL, '2020-05-09 16:00:00', 0, '2019-12-26 06:43:22', '2019-12-26 06:43:22'),
(426, 8, 182, NULL, '2020-05-11 16:00:00', 0, '2019-12-26 06:43:22', '2019-12-26 06:43:22'),
(427, 8, 182, '[{"common_programs_weeks_lap_id":"814","is_complete":true,"completed_time":12,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-05-14 16:00:00', 1, '2019-12-26 06:43:34', '2020-01-04 17:20:31'),
(428, 8, 182, '[{"common_programs_weeks_lap_id":"814","is_complete":true,"completed_time":45,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-05-15 16:00:00', 1, '2019-12-26 06:43:35', '2020-05-10 17:32:23'),
(429, 8, 182, NULL, '2020-05-16 16:00:00', 0, '2019-12-26 06:43:35', '2019-12-26 06:43:35'),
(430, 8, 182, NULL, '2020-05-18 16:00:00', 1, '2019-12-26 06:43:36', '2020-05-10 17:55:34'),
(431, 8, 182, NULL, '2020-05-19 16:00:00', 0, '2019-12-26 06:43:38', '2019-12-26 06:43:38'),
(432, 8, 182, NULL, '2020-05-21 16:00:00', 0, '2019-12-26 06:43:40', '2019-12-26 06:43:40'),
(433, 8, 182, NULL, '2020-05-22 16:00:00', 0, '2019-12-26 06:43:41', '2019-12-26 06:43:41'),
(434, 8, 182, NULL, '2020-05-23 16:00:00', 0, '2019-12-26 06:43:41', '2019-12-26 06:43:41'),
(435, 8, 182, NULL, '2020-05-25 16:00:00', 0, '2019-12-26 06:43:42', '2019-12-26 06:43:42'),
(436, 8, 182, NULL, '2020-05-26 16:00:00', 0, '2019-12-26 06:43:44', '2019-12-26 06:43:44'),
(437, 8, 182, NULL, '2020-05-28 16:00:00', 0, '2019-12-26 06:43:44', '2019-12-26 06:43:44'),
(438, 8, 182, NULL, '2020-05-29 16:00:00', 0, '2019-12-26 06:43:45', '2019-12-26 06:43:45'),
(439, 8, 182, NULL, '2020-05-30 16:00:00', 0, '2019-12-26 06:43:46', '2019-12-26 06:43:46'),
(440, 8, 182, NULL, '2020-06-01 16:00:00', 0, '2019-12-26 06:43:49', '2019-12-26 06:43:49'),
(441, 8, 182, NULL, '2020-06-02 16:00:00', 0, '2019-12-26 06:43:51', '2019-12-26 06:43:51'),
(442, 8, 182, NULL, '2020-06-04 16:00:00', 0, '2019-12-26 06:43:52', '2019-12-26 06:43:52'),
(443, 8, 182, NULL, '2020-06-05 16:00:00', 0, '2019-12-26 06:43:52', '2019-12-26 06:43:52'),
(444, 8, 182, NULL, '2020-06-06 16:00:00', 0, '2019-12-26 06:43:54', '2019-12-26 06:43:54'),
(445, 8, 183, NULL, '2020-06-07 16:00:00', 0, '2019-12-26 06:44:00', '2019-12-26 06:44:00'),
(446, 8, 187, NULL, '2020-06-08 16:00:00', 0, '2019-12-26 06:44:04', '2019-12-26 06:44:04'),
(447, 8, 185, NULL, '2020-06-09 16:00:00', 0, '2019-12-26 06:44:05', '2019-12-26 06:44:05'),
(448, 8, 187, NULL, '2020-06-11 16:00:00', 0, '2019-12-26 06:44:13', '2019-12-26 06:44:13'),
(449, 8, 186, NULL, '2020-06-12 16:00:00', 0, '2019-12-26 06:44:14', '2019-12-26 06:44:14'),
(450, 8, 187, NULL, '2020-06-13 16:00:00', 0, '2019-12-26 06:44:17', '2019-12-26 06:44:17'),
(451, 8, 188, NULL, '2020-06-14 16:00:00', 0, '2019-12-26 06:44:19', '2019-12-26 06:44:19'),
(452, 8, 191, NULL, '2020-06-15 16:00:00', 0, '2019-12-26 06:44:24', '2019-12-26 06:44:24'),
(453, 8, 189, NULL, '2020-06-16 16:00:00', 0, '2019-12-26 06:44:25', '2019-12-26 06:44:25'),
(454, 8, 191, NULL, '2020-06-18 16:00:00', 0, '2019-12-26 06:44:27', '2019-12-26 06:44:27'),
(455, 8, 190, NULL, '2020-06-19 16:00:00', 0, '2019-12-26 06:44:29', '2019-12-26 06:44:29'),
(456, 8, 191, NULL, '2020-06-20 16:00:00', 0, '2019-12-26 06:44:31', '2019-12-26 06:44:31'),
(457, 8, 192, NULL, '2020-06-21 16:00:00', 0, '2019-12-26 06:44:38', '2019-12-26 06:44:38'),
(458, 8, 195, NULL, '2020-06-22 16:00:00', 0, '2019-12-26 06:44:41', '2019-12-26 06:44:41'),
(459, 8, 193, NULL, '2020-06-23 16:00:00', 0, '2019-12-26 06:44:44', '2019-12-26 06:44:44'),
(460, 8, 195, NULL, '2020-06-25 16:00:00', 0, '2019-12-26 06:44:46', '2019-12-26 06:44:46'),
(461, 8, 194, NULL, '2020-06-26 16:00:00', 0, '2019-12-26 06:44:48', '2019-12-26 06:44:48'),
(462, 8, 195, NULL, '2020-06-27 16:00:00', 0, '2019-12-26 06:44:50', '2019-12-26 06:44:50'),
(463, 8, 196, NULL, '2020-06-28 16:00:00', 0, '2019-12-26 06:44:55', '2019-12-26 06:44:55'),
(464, 8, 199, NULL, '2020-06-29 16:00:00', 0, '2019-12-26 06:44:58', '2019-12-26 06:44:58'),
(465, 8, 197, NULL, '2020-06-30 16:00:00', 0, '2019-12-26 06:45:01', '2019-12-26 06:45:01'),
(466, 8, 199, NULL, '2020-07-02 16:00:00', 0, '2019-12-26 06:45:04', '2019-12-26 06:45:04'),
(467, 8, 198, NULL, '2020-07-03 16:00:00', 0, '2019-12-26 06:45:07', '2019-12-26 06:45:07'),
(468, 8, 200, NULL, '2020-07-05 16:00:00', 0, '2019-12-26 06:45:33', '2019-12-26 06:45:33'),
(469, 8, 203, NULL, '2020-07-06 16:00:00', 0, '2019-12-26 06:45:35', '2019-12-26 06:45:35'),
(470, 8, 201, NULL, '2020-07-07 16:00:00', 0, '2019-12-26 06:45:37', '2019-12-26 06:45:37'),
(471, 8, 203, NULL, '2020-07-09 16:00:00', 0, '2019-12-26 06:45:42', '2019-12-26 06:45:42'),
(472, 8, 202, NULL, '2020-07-10 16:00:00', 0, '2019-12-26 06:45:44', '2019-12-26 06:45:44'),
(473, 8, 203, NULL, '2020-07-11 16:00:00', 0, '2019-12-26 06:45:45', '2019-12-26 06:45:45'),
(474, 8, 204, NULL, '2020-07-12 16:00:00', 0, '2019-12-26 06:45:50', '2019-12-26 06:45:50'),
(475, 8, 207, NULL, '2020-07-13 16:00:00', 0, '2019-12-26 06:45:54', '2019-12-26 06:45:54'),
(476, 8, 205, NULL, '2020-07-14 16:00:00', 0, '2019-12-26 06:45:56', '2019-12-26 06:45:56'),
(477, 8, 207, NULL, '2020-07-16 16:00:00', 0, '2019-12-26 06:45:58', '2019-12-26 06:45:58'),
(478, 8, 206, NULL, '2020-07-17 16:00:00', 0, '2019-12-26 06:46:00', '2019-12-26 06:46:00'),
(479, 8, 207, NULL, '2020-07-18 16:00:00', 0, '2019-12-26 06:46:02', '2019-12-26 06:46:02'),
(480, 8, 208, NULL, '2020-07-19 16:00:00', 0, '2019-12-26 06:54:54', '2019-12-26 06:54:54'),
(481, 8, 211, NULL, '2020-07-20 16:00:00', 0, '2019-12-26 06:54:59', '2019-12-26 06:54:59'),
(482, 8, 209, NULL, '2020-07-21 16:00:00', 0, '2019-12-26 06:55:02', '2019-12-26 06:55:02'),
(483, 8, 211, NULL, '2020-07-23 16:00:00', 0, '2019-12-26 06:55:04', '2019-12-26 06:55:04'),
(484, 8, 210, NULL, '2020-07-24 16:00:00', 0, '2019-12-26 06:55:06', '2019-12-26 06:55:06'),
(485, 8, 211, NULL, '2020-07-25 16:00:00', 0, '2019-12-26 06:55:08', '2019-12-26 06:55:08'),
(486, 8, 212, NULL, '2020-07-26 16:00:00', 0, '2019-12-26 06:55:10', '2019-12-26 06:55:10'),
(487, 8, 215, NULL, '2020-07-27 16:00:00', 0, '2019-12-26 06:55:15', '2019-12-26 06:55:15'),
(488, 8, 213, NULL, '2020-07-28 16:00:00', 0, '2019-12-26 06:55:16', '2019-12-26 06:55:16'),
(489, 8, 215, NULL, '2020-07-30 16:00:00', 0, '2019-12-26 06:55:19', '2019-12-26 06:55:19'),
(490, 8, 214, NULL, '2020-07-31 16:00:00', 0, '2019-12-26 06:55:29', '2019-12-26 06:55:29'),
(491, 8, 215, NULL, '2020-08-01 16:00:00', 0, '2019-12-26 06:55:33', '2019-12-26 06:55:33'),
(492, 8, 216, NULL, '2020-08-02 16:00:00', 0, '2019-12-26 06:55:36', '2019-12-26 06:55:36'),
(493, 8, 219, NULL, '2020-08-03 16:00:00', 0, '2019-12-26 06:55:39', '2019-12-26 06:55:39'),
(494, 8, 217, NULL, '2020-08-04 16:00:00', 0, '2019-12-26 06:55:43', '2019-12-26 06:55:43'),
(495, 8, 219, NULL, '2020-08-06 16:00:00', 0, '2019-12-26 06:55:46', '2019-12-26 06:55:46'),
(496, 8, 218, NULL, '2020-08-07 16:00:00', 0, '2019-12-26 06:55:49', '2019-12-26 06:55:49'),
(497, 8, 219, NULL, '2020-08-08 16:00:00', 0, '2019-12-26 06:55:51', '2019-12-26 06:55:51'),
(498, 8, 220, NULL, '2020-08-09 16:00:00', 0, '2019-12-26 06:55:53', '2019-12-26 06:55:53'),
(499, 8, 223, NULL, '2020-08-10 16:00:00', 0, '2019-12-26 06:55:57', '2019-12-26 06:55:57'),
(500, 8, 221, NULL, '2020-08-11 16:00:00', 0, '2019-12-26 06:55:58', '2019-12-26 06:55:58'),
(501, 8, 223, NULL, '2020-08-13 16:00:00', 0, '2019-12-26 06:56:00', '2019-12-26 06:56:00'),
(502, 8, 222, '[{"common_programs_weeks_lap_id":"1071","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1072","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-08-14 16:00:00', 0, '2019-12-26 06:56:03', '2019-12-29 08:16:15'),
(503, 8, 223, NULL, '2020-08-15 16:00:00', 0, '2019-12-26 06:56:08', '2019-12-26 06:56:08'),
(504, 8, 224, NULL, '2020-08-16 16:00:00', 0, '2019-12-26 06:56:10', '2019-12-26 06:56:10'),
(505, 8, 227, NULL, '2020-08-17 16:00:00', 0, '2019-12-26 06:56:13', '2019-12-26 06:56:13'),
(506, 8, 225, NULL, '2020-08-18 16:00:00', 0, '2019-12-26 06:56:15', '2019-12-26 06:56:15'),
(507, 8, 227, NULL, '2020-08-20 16:00:00', 0, '2019-12-26 06:56:17', '2019-12-26 06:56:17'),
(508, 8, 226, NULL, '2020-08-21 16:00:00', 0, '2019-12-26 06:56:19', '2019-12-26 06:56:19'),
(509, 8, 227, NULL, '2020-08-22 16:00:00', 0, '2019-12-26 06:56:22', '2019-12-26 06:56:22'),
(510, 8, 228, NULL, '2020-08-23 16:00:00', 0, '2019-12-26 06:56:25', '2019-12-26 06:56:25'),
(511, 8, 231, '[{"common_programs_weeks_lap_id":"1170","is_complete":true,"completed_time":6,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-08-24 16:00:00', 1, '2019-12-26 06:56:27', '2019-12-29 08:19:38'),
(512, 8, 229, NULL, '2020-08-25 16:00:00', 0, '2019-12-26 06:56:30', '2019-12-26 06:56:30'),
(513, 8, 231, NULL, '2020-08-27 16:00:00', 0, '2019-12-26 06:56:31', '2019-12-26 06:56:31'),
(514, 8, 230, NULL, '2020-08-28 16:00:00', 0, '2019-12-26 06:56:34', '2019-12-26 06:56:34'),
(515, 8, 231, NULL, '2020-08-29 16:00:00', 0, '2019-12-26 06:56:36', '2019-12-26 06:56:36'),
(516, 8, 232, NULL, '2020-08-30 16:00:00', 0, '2019-12-26 06:56:39', '2019-12-26 06:56:39'),
(517, 8, 235, NULL, '2020-08-31 16:00:00', 0, '2019-12-26 06:56:49', '2019-12-26 06:56:49'),
(518, 8, 233, NULL, '2020-09-01 16:00:00', 0, '2019-12-26 06:56:52', '2019-12-26 06:56:52'),
(519, 8, 235, NULL, '2020-09-03 16:00:00', 0, '2019-12-26 06:56:55', '2019-12-26 06:56:55'),
(520, 8, 234, NULL, '2020-09-04 16:00:00', 0, '2019-12-26 06:56:57', '2019-12-26 06:56:57'),
(521, 8, 235, NULL, '2020-09-05 16:00:00', 0, '2019-12-26 06:57:06', '2019-12-26 06:57:06'),
(522, 8, 236, NULL, '2020-09-06 16:00:00', 0, '2019-12-26 06:58:04', '2019-12-26 06:58:04'),
(523, 8, 239, NULL, '2020-09-07 16:00:00', 0, '2019-12-26 06:58:07', '2019-12-26 06:58:07'),
(524, 8, 237, NULL, '2020-09-08 16:00:00', 0, '2019-12-26 06:58:09', '2019-12-26 06:58:09'),
(525, 8, 239, NULL, '2020-09-10 16:00:00', 0, '2019-12-26 06:58:11', '2019-12-26 06:58:11'),
(526, 8, 238, NULL, '2020-09-11 16:00:00', 0, '2019-12-26 06:58:13', '2019-12-26 06:58:13'),
(527, 8, 239, NULL, '2020-09-12 16:00:00', 0, '2019-12-26 06:58:15', '2019-12-26 06:58:15'),
(528, 8, 240, NULL, '2020-09-13 16:00:00', 0, '2019-12-26 06:58:17', '2019-12-26 06:58:17'),
(529, 8, 243, NULL, '2020-09-14 16:00:00', 0, '2019-12-26 06:58:19', '2019-12-26 06:58:19'),
(530, 8, 241, NULL, '2020-09-15 16:00:00', 0, '2019-12-26 06:58:22', '2019-12-26 06:58:22'),
(531, 8, 243, NULL, '2020-09-17 16:00:00', 0, '2019-12-26 06:58:24', '2019-12-26 06:58:24'),
(532, 8, 242, NULL, '2020-09-18 16:00:00', 0, '2019-12-26 06:58:26', '2019-12-26 06:58:26'),
(533, 8, 243, NULL, '2020-09-19 16:00:00', 0, '2019-12-26 06:58:33', '2019-12-26 06:58:33'),
(534, 8, 246, NULL, '2020-09-20 16:00:00', 0, '2019-12-26 06:58:34', '2019-12-26 06:58:34'),
(535, 8, 244, NULL, '2020-09-21 16:00:00', 0, '2019-12-26 06:58:41', '2019-12-26 06:58:41'),
(536, 8, 246, NULL, '2020-09-22 16:00:00', 0, '2019-12-26 06:58:44', '2019-12-26 06:58:44'),
(537, 8, 245, NULL, '2020-09-24 16:00:00', 0, '2019-12-26 06:58:45', '2019-12-26 06:58:45'),
(538, 8, 246, NULL, '2020-09-25 16:00:00', 0, '2019-12-26 06:58:49', '2019-12-26 06:58:49'),
(539, 8, 247, NULL, '2020-09-27 16:00:00', 0, '2019-12-26 06:58:53', '2019-12-26 06:58:53'),
(540, 8, 250, NULL, '2020-09-28 16:00:00', 0, '2019-12-26 06:58:55', '2019-12-26 06:58:55'),
(541, 8, 248, NULL, '2020-09-29 16:00:00', 0, '2019-12-26 06:58:58', '2019-12-26 06:58:58'),
(542, 8, 250, NULL, '2020-10-01 16:00:00', 0, '2019-12-26 06:59:03', '2019-12-26 06:59:03'),
(543, 8, 249, NULL, '2020-10-02 16:00:00', 0, '2019-12-26 06:59:08', '2019-12-26 06:59:08'),
(544, 8, 250, NULL, '2020-10-03 16:00:00', 0, '2019-12-26 06:59:10', '2019-12-26 06:59:10'),
(545, 8, 251, NULL, '2020-10-04 16:00:00', 0, '2019-12-26 06:59:15', '2019-12-26 06:59:15'),
(546, 8, 253, NULL, '2020-10-05 16:00:00', 0, '2019-12-26 06:59:21', '2019-12-26 06:59:21'),
(547, 8, 252, NULL, '2020-10-06 16:00:00', 0, '2019-12-26 06:59:22', '2019-12-26 06:59:22'),
(548, 8, 253, NULL, '2020-10-08 16:00:00', 0, '2019-12-26 06:59:24', '2019-12-26 06:59:24'),
(549, 8, 182, NULL, '2020-05-12 16:00:00', 0, '2019-12-26 07:01:26', '2019-12-26 07:01:26'),
(550, 9, 182, NULL, '2023-01-30 16:00:00', 0, '2019-12-26 08:22:02', '2019-12-26 08:22:02'),
(551, 9, 182, NULL, '2023-01-10 16:00:00', 0, '2019-12-26 08:22:05', '2019-12-26 08:22:05'),
(552, 9, 182, NULL, '2023-01-31 16:00:00', 0, '2019-12-26 08:22:23', '2019-12-26 08:22:23'),
(553, 9, 182, NULL, '2023-02-03 16:00:00', 0, '2019-12-26 08:22:24', '2019-12-26 08:22:24'),
(554, 9, 187, NULL, '2023-02-06 16:00:00', 0, '2019-12-26 08:22:26', '2019-12-26 08:22:26'),
(555, 9, 183, NULL, '2023-02-05 16:00:00', 0, '2019-12-26 08:22:31', '2019-12-26 08:22:31'),
(556, 9, 185, NULL, '2023-02-07 16:00:00', 0, '2019-12-26 08:22:37', '2019-12-26 08:22:37'),
(557, 9, 187, NULL, '2023-02-09 16:00:00', 0, '2019-12-26 08:22:44', '2019-12-26 08:22:44'),
(558, 9, 186, NULL, '2023-02-10 16:00:00', 0, '2019-12-26 08:22:46', '2019-12-26 08:22:46'),
(559, 9, 188, NULL, '2023-02-12 16:00:00', 0, '2019-12-26 08:22:48', '2019-12-26 08:22:48'),
(560, 9, 191, NULL, '2023-02-13 16:00:00', 0, '2019-12-26 08:22:50', '2019-12-26 08:22:50'),
(561, 9, 189, NULL, '2023-02-14 16:00:00', 0, '2019-12-26 08:22:53', '2019-12-26 08:22:53'),
(562, 9, 191, NULL, '2023-02-16 16:00:00', 0, '2019-12-26 08:22:55', '2019-12-26 08:22:55'),
(563, 9, 190, NULL, '2023-02-17 16:00:00', 0, '2019-12-26 08:23:01', '2019-12-26 08:23:01'),
(564, 9, 192, NULL, '2023-02-19 16:00:00', 0, '2019-12-26 08:23:07', '2019-12-26 08:23:07'),
(565, 9, 195, NULL, '2023-02-20 16:00:00', 0, '2019-12-26 08:23:10', '2019-12-26 08:23:10'),
(566, 9, 193, NULL, '2023-02-21 16:00:00', 0, '2019-12-26 08:23:14', '2019-12-26 08:23:14'),
(567, 9, 195, NULL, '2023-02-23 16:00:00', 0, '2019-12-26 08:23:16', '2019-12-26 08:23:16'),
(568, 9, 194, NULL, '2023-02-24 16:00:00', 0, '2019-12-26 08:23:18', '2019-12-26 08:23:18'),
(569, 9, 196, NULL, '2023-02-26 16:00:00', 0, '2019-12-26 08:23:24', '2019-12-26 08:23:24'),
(570, 9, 199, NULL, '2023-02-27 16:00:00', 0, '2019-12-26 08:23:27', '2019-12-26 08:23:27'),
(571, 9, 197, NULL, '2023-02-28 16:00:00', 0, '2019-12-26 08:23:34', '2019-12-26 08:23:34'),
(572, 9, 198, NULL, '2023-03-02 16:00:00', 0, '2019-12-26 08:23:38', '2019-12-26 08:23:38'),
(573, 9, 200, NULL, '2023-03-05 16:00:00', 0, '2019-12-26 08:23:55', '2019-12-26 08:23:55'),
(574, 9, 203, NULL, '2023-03-06 16:00:00', 0, '2019-12-26 08:23:57', '2019-12-26 08:23:57'),
(575, 9, 201, NULL, '2023-03-07 16:00:00', 0, '2019-12-26 08:23:59', '2019-12-26 08:23:59'),
(576, 9, 203, NULL, '2023-03-09 16:00:00', 0, '2019-12-26 08:24:02', '2019-12-26 08:24:02'),
(577, 9, 202, NULL, '2023-03-10 16:00:00', 0, '2019-12-26 08:24:04', '2019-12-26 08:24:04'),
(578, 9, 204, NULL, '2023-03-12 16:00:00', 0, '2019-12-26 08:24:07', '2019-12-26 08:24:07'),
(579, 9, 207, NULL, '2023-03-13 16:00:00', 0, '2019-12-26 08:24:09', '2019-12-26 08:24:09'),
(580, 9, 205, NULL, '2023-03-14 16:00:00', 0, '2019-12-26 08:24:12', '2019-12-26 08:24:12'),
(581, 9, 207, NULL, '2023-03-16 16:00:00', 0, '2019-12-26 08:24:15', '2019-12-26 08:24:15'),
(582, 9, 206, NULL, '2023-03-17 16:00:00', 0, '2019-12-26 08:24:17', '2019-12-26 08:24:17'),
(583, 9, 208, NULL, '2023-03-19 16:00:00', 0, '2019-12-26 08:24:19', '2019-12-26 08:24:19'),
(584, 9, 211, NULL, '2023-03-20 16:00:00', 0, '2019-12-26 08:24:21', '2019-12-26 08:24:21'),
(585, 9, 209, NULL, '2023-03-21 16:00:00', 0, '2019-12-26 08:24:24', '2019-12-26 08:24:24'),
(586, 9, 211, NULL, '2023-03-23 16:00:00', 0, '2019-12-26 08:24:26', '2019-12-26 08:24:26'),
(587, 9, 210, NULL, '2023-03-24 16:00:00', 0, '2019-12-26 08:24:28', '2019-12-26 08:24:28'),
(588, 9, 212, NULL, '2023-03-26 16:00:00', 0, '2019-12-26 08:24:30', '2019-12-26 08:24:30'),
(589, 9, 215, NULL, '2023-03-27 16:00:00', 0, '2019-12-26 08:24:32', '2019-12-26 08:24:32'),
(590, 9, 213, NULL, '2023-03-28 16:00:00', 0, '2019-12-26 08:24:35', '2019-12-26 08:24:35'),
(591, 9, 215, NULL, '2023-03-30 16:00:00', 0, '2019-12-26 08:24:37', '2019-12-26 08:24:37'),
(592, 9, 214, NULL, '2023-03-31 16:00:00', 0, '2019-12-26 08:24:42', '2019-12-26 08:24:42'),
(593, 9, 216, NULL, '2023-04-02 16:00:00', 0, '2019-12-26 08:24:47', '2019-12-26 08:24:47'),
(594, 9, 219, NULL, '2023-04-03 16:00:00', 0, '2019-12-26 08:24:50', '2019-12-26 08:24:50'),
(595, 9, 217, NULL, '2023-04-04 16:00:00', 0, '2019-12-26 08:24:52', '2019-12-26 08:24:52'),
(596, 9, 219, NULL, '2023-04-06 16:00:00', 0, '2019-12-26 08:24:54', '2019-12-26 08:24:54'),
(597, 9, 218, NULL, '2023-04-07 16:00:00', 0, '2019-12-26 08:24:57', '2019-12-26 08:24:57'),
(598, 9, 220, NULL, '2023-04-09 16:00:00', 0, '2019-12-26 08:24:59', '2019-12-26 08:24:59'),
(599, 9, 223, NULL, '2023-04-10 16:00:00', 0, '2019-12-26 08:25:02', '2019-12-26 08:25:02'),
(600, 9, 221, NULL, '2023-04-11 16:00:00', 0, '2019-12-26 08:25:04', '2019-12-26 08:25:04'),
(601, 9, 223, NULL, '2023-04-13 16:00:00', 0, '2019-12-26 08:25:06', '2019-12-26 08:25:06'),
(602, 9, 222, NULL, '2023-04-14 16:00:00', 0, '2019-12-26 08:25:08', '2019-12-26 08:25:08'),
(603, 9, 224, NULL, '2023-04-16 16:00:00', 0, '2019-12-26 08:25:10', '2019-12-26 08:25:10'),
(604, 9, 227, NULL, '2023-04-17 16:00:00', 0, '2019-12-26 08:25:13', '2019-12-26 08:25:13'),
(605, 9, 225, NULL, '2023-04-18 16:00:00', 0, '2019-12-26 08:25:15', '2019-12-26 08:25:15'),
(606, 9, 227, NULL, '2023-04-20 16:00:00', 0, '2019-12-26 08:25:17', '2019-12-26 08:25:17'),
(607, 9, 226, NULL, '2023-04-21 16:00:00', 0, '2019-12-26 08:25:19', '2019-12-26 08:25:19'),
(608, 9, 228, NULL, '2023-04-23 16:00:00', 0, '2019-12-26 08:25:22', '2019-12-26 08:25:22'),
(609, 9, 231, NULL, '2023-04-24 16:00:00', 0, '2019-12-26 08:25:24', '2019-12-26 08:25:24'),
(610, 9, 229, NULL, '2023-04-25 16:00:00', 0, '2019-12-26 08:25:27', '2019-12-26 08:25:27'),
(611, 9, 231, NULL, '2023-04-27 16:00:00', 0, '2019-12-26 08:25:30', '2019-12-26 08:25:30'),
(612, 9, 230, NULL, '2023-04-28 16:00:00', 0, '2019-12-26 08:25:32', '2019-12-26 08:25:32'),
(613, 9, 232, NULL, '2023-04-30 16:00:00', 0, '2019-12-26 08:25:38', '2019-12-26 08:25:38'),
(614, 9, 235, NULL, '2023-05-01 16:00:00', 0, '2019-12-26 08:25:41', '2019-12-26 08:25:41'),
(615, 9, 233, NULL, '2023-05-02 16:00:00', 0, '2019-12-26 08:25:43', '2019-12-26 08:25:43');
INSERT INTO `completed_training_programs` (`id`, `program_id`, `week_wise_workout_id`, `exercise`, `date`, `is_complete`, `created_at`, `updated_at`) VALUES
(616, 9, 235, NULL, '2023-05-04 16:00:00', 0, '2019-12-26 08:25:46', '2019-12-26 08:25:46'),
(617, 9, 234, NULL, '2023-05-05 16:00:00', 0, '2019-12-26 08:25:48', '2019-12-26 08:25:48'),
(618, 9, 236, NULL, '2023-05-07 16:00:00', 0, '2019-12-26 08:25:54', '2019-12-26 08:25:54'),
(619, 9, 239, NULL, '2023-05-08 16:00:00', 0, '2019-12-26 08:25:56', '2019-12-26 08:25:56'),
(620, 9, 237, NULL, '2023-05-09 16:00:00', 0, '2019-12-26 08:25:58', '2019-12-26 08:25:58'),
(621, 9, 239, NULL, '2023-05-11 16:00:00', 0, '2019-12-26 08:26:02', '2019-12-26 08:26:02'),
(622, 9, 238, NULL, '2023-05-12 16:00:00', 0, '2019-12-26 08:26:04', '2019-12-26 08:26:04'),
(623, 9, 240, NULL, '2023-05-14 16:00:00', 0, '2019-12-26 08:26:06', '2019-12-26 08:26:06'),
(624, 9, 243, NULL, '2023-05-15 16:00:00', 0, '2019-12-26 08:26:09', '2019-12-26 08:26:09'),
(625, 9, 241, NULL, '2023-05-16 16:00:00', 0, '2019-12-26 08:26:11', '2019-12-26 08:26:11'),
(626, 9, 243, NULL, '2023-05-18 16:00:00', 0, '2019-12-26 08:26:14', '2019-12-26 08:26:14'),
(627, 9, 242, NULL, '2023-05-19 16:00:00', 0, '2019-12-26 08:26:18', '2019-12-26 08:26:18'),
(628, 9, 244, NULL, '2023-05-21 16:00:00', 0, '2019-12-26 08:26:21', '2019-12-26 08:26:21'),
(629, 9, 246, NULL, '2023-05-22 16:00:00', 0, '2019-12-26 08:26:25', '2019-12-26 08:26:25'),
(630, 9, 245, NULL, '2023-05-23 16:00:00', 0, '2019-12-26 08:26:27', '2019-12-26 08:26:27'),
(631, 9, 246, NULL, '2023-05-25 16:00:00', 0, '2019-12-26 08:26:31', '2019-12-26 08:26:31'),
(632, 9, 247, NULL, '2023-05-28 16:00:00', 0, '2019-12-26 08:26:34', '2019-12-26 08:26:34'),
(633, 9, 250, NULL, '2023-05-29 16:00:00', 0, '2019-12-26 08:26:36', '2019-12-26 08:26:36'),
(634, 9, 248, NULL, '2023-05-30 16:00:00', 0, '2019-12-26 08:26:39', '2019-12-26 08:26:39'),
(635, 9, 250, NULL, '2023-06-01 16:00:00', 0, '2019-12-26 08:26:44', '2019-12-26 08:26:44'),
(636, 9, 249, NULL, '2023-06-02 16:00:00', 0, '2019-12-26 08:26:47', '2019-12-26 08:26:47'),
(637, 9, 251, NULL, '2023-06-04 16:00:00', 0, '2019-12-26 08:26:50', '2019-12-26 08:26:50'),
(638, 9, 253, NULL, '2023-06-05 16:00:00', 0, '2019-12-26 08:26:53', '2019-12-26 08:26:53'),
(639, 9, 252, NULL, '2023-06-06 16:00:00', 0, '2019-12-26 08:26:56', '2019-12-26 08:26:56'),
(640, 10, 254, NULL, '2023-07-26 16:00:00', 0, '2019-12-26 11:32:29', '2019-12-26 11:32:29'),
(641, 10, 255, NULL, '2023-07-30 16:00:00', 0, '2019-12-26 11:32:31', '2019-12-26 11:32:31'),
(642, 10, 254, NULL, '2023-07-28 16:00:00', 0, '2019-12-26 11:32:44', '2019-12-26 11:32:44'),
(643, 10, 254, NULL, '2023-06-21 16:00:00', 0, '2019-12-26 11:32:52', '2019-12-26 11:32:52'),
(644, 10, 254, NULL, '2023-06-28 16:00:00', 0, '2019-12-26 11:32:58', '2019-12-26 11:32:58'),
(645, 10, 254, NULL, '2023-07-05 16:00:00', 0, '2019-12-26 11:33:07', '2019-12-26 11:33:07'),
(646, 10, 254, NULL, '2023-07-10 16:00:00', 0, '2019-12-26 11:33:13', '2019-12-26 11:33:13'),
(647, 10, 254, NULL, '2023-07-24 16:00:00', 0, '2019-12-26 11:33:29', '2019-12-26 11:33:29'),
(648, 10, 258, NULL, '2023-07-31 16:00:00', 0, '2019-12-26 11:33:39', '2019-12-26 11:33:39'),
(649, 10, 256, NULL, '2023-08-01 16:00:00', 0, '2019-12-26 11:33:42', '2019-12-26 11:33:42'),
(650, 10, 258, NULL, '2023-08-02 16:00:00', 0, '2019-12-26 11:33:44', '2019-12-26 11:33:44'),
(651, 10, 257, NULL, '2023-08-04 16:00:00', 0, '2019-12-26 11:33:46', '2019-12-26 11:33:46'),
(652, 10, 258, NULL, '2023-08-05 16:00:00', 0, '2019-12-26 11:34:08', '2019-12-26 11:34:08'),
(653, 10, 259, NULL, '2023-08-06 16:00:00', 0, '2019-12-26 11:34:10', '2019-12-26 11:34:10'),
(654, 10, 262, NULL, '2023-08-07 16:00:00', 0, '2019-12-26 11:34:26', '2019-12-26 11:34:26'),
(655, 10, 260, NULL, '2023-08-08 16:00:00', 0, '2019-12-26 11:34:28', '2019-12-26 11:34:28'),
(656, 10, 262, NULL, '2023-08-09 16:00:00', 0, '2019-12-26 11:34:31', '2019-12-26 11:34:31'),
(657, 10, 261, NULL, '2023-08-11 16:00:00', 0, '2019-12-26 11:34:33', '2019-12-26 11:34:33'),
(658, 10, 262, NULL, '2023-08-12 16:00:00', 0, '2019-12-26 11:34:41', '2019-12-26 11:34:41'),
(659, 10, 263, NULL, '2023-08-13 16:00:00', 0, '2019-12-26 11:34:44', '2019-12-26 11:34:44'),
(660, 10, 266, NULL, '2023-08-14 16:00:00', 0, '2019-12-26 11:34:50', '2019-12-26 11:34:50'),
(661, 10, 264, NULL, '2023-08-15 16:00:00', 0, '2019-12-26 11:34:51', '2019-12-26 11:34:51'),
(662, 10, 266, NULL, '2023-08-16 16:00:00', 0, '2019-12-26 11:34:54', '2019-12-26 11:34:54'),
(663, 10, 265, NULL, '2023-08-18 16:00:00', 0, '2019-12-26 11:34:57', '2019-12-26 11:34:57'),
(664, 10, 266, NULL, '2023-08-19 16:00:00', 0, '2019-12-26 11:34:59', '2019-12-26 11:34:59'),
(665, 10, 267, NULL, '2023-08-20 16:00:00', 0, '2019-12-26 11:35:01', '2019-12-26 11:35:01'),
(666, 10, 270, NULL, '2023-08-21 16:00:00', 0, '2019-12-26 11:35:04', '2019-12-26 11:35:04'),
(667, 10, 268, NULL, '2023-08-22 16:00:00', 0, '2019-12-26 11:35:06', '2019-12-26 11:35:06'),
(668, 10, 270, NULL, '2023-08-23 16:00:00', 0, '2019-12-26 11:35:08', '2019-12-26 11:35:08'),
(669, 10, 269, NULL, '2023-08-25 16:00:00', 0, '2019-12-26 11:35:10', '2019-12-26 11:35:10'),
(670, 10, 271, NULL, '2023-08-27 16:00:00', 0, '2019-12-26 11:35:14', '2019-12-26 11:35:14'),
(671, 10, 274, NULL, '2023-08-28 16:00:00', 0, '2019-12-26 11:35:19', '2019-12-26 11:35:19'),
(672, 10, 272, NULL, '2023-08-29 16:00:00', 0, '2019-12-26 11:35:21', '2019-12-26 11:35:21'),
(673, 10, 274, NULL, '2023-08-30 16:00:00', 0, '2019-12-26 11:35:23', '2019-12-26 11:35:23'),
(674, 10, 273, NULL, '2023-09-01 16:00:00', 0, '2019-12-26 11:35:29', '2019-12-26 11:35:29'),
(675, 10, 274, NULL, '2023-09-02 16:00:00', 0, '2019-12-26 11:35:32', '2019-12-26 11:35:32'),
(676, 10, 275, NULL, '2023-09-03 16:00:00', 0, '2019-12-26 11:35:34', '2019-12-26 11:35:34'),
(677, 10, 278, NULL, '2023-09-04 16:00:00', 0, '2019-12-26 11:35:39', '2019-12-26 11:35:39'),
(678, 10, 276, NULL, '2023-09-05 16:00:00', 0, '2019-12-26 11:35:40', '2019-12-26 11:35:40'),
(679, 10, 278, NULL, '2023-09-06 16:00:00', 0, '2019-12-26 11:35:43', '2019-12-26 11:35:43'),
(680, 10, 277, NULL, '2023-09-08 16:00:00', 0, '2019-12-26 11:35:45', '2019-12-26 11:35:45'),
(681, 10, 278, NULL, '2023-09-09 16:00:00', 0, '2019-12-26 11:35:48', '2019-12-26 11:35:48'),
(682, 10, 279, NULL, '2023-09-10 16:00:00', 0, '2019-12-26 11:35:50', '2019-12-26 11:35:50'),
(683, 10, 282, NULL, '2023-09-11 16:00:00', 0, '2019-12-26 11:35:53', '2019-12-26 11:35:53'),
(684, 10, 280, NULL, '2023-09-12 16:00:00', 0, '2019-12-26 11:35:55', '2019-12-26 11:35:55'),
(685, 10, 282, NULL, '2023-09-13 16:00:00', 0, '2019-12-26 11:35:58', '2019-12-26 11:35:58'),
(686, 10, 281, NULL, '2023-09-15 16:00:00', 0, '2019-12-26 11:36:00', '2019-12-26 11:36:00'),
(687, 10, 282, NULL, '2023-09-16 16:00:00', 0, '2019-12-26 11:36:08', '2019-12-26 11:36:08'),
(688, 10, 283, NULL, '2023-09-17 16:00:00', 0, '2019-12-26 11:36:10', '2019-12-26 11:36:10'),
(689, 10, 286, NULL, '2023-09-18 16:00:00', 0, '2019-12-26 11:36:12', '2019-12-26 11:36:12'),
(690, 10, 284, NULL, '2023-09-19 16:00:00', 0, '2019-12-26 11:36:14', '2019-12-26 11:36:14'),
(691, 10, 286, NULL, '2023-09-20 16:00:00', 0, '2019-12-26 11:36:15', '2019-12-26 11:36:15'),
(692, 10, 285, NULL, '2023-09-22 16:00:00', 0, '2019-12-26 11:36:18', '2019-12-26 11:36:18'),
(693, 10, 286, NULL, '2023-09-23 16:00:00', 0, '2019-12-26 11:36:19', '2019-12-26 11:36:19'),
(694, 10, 287, NULL, '2023-09-24 16:00:00', 0, '2019-12-26 11:36:22', '2019-12-26 11:36:22'),
(695, 10, 290, NULL, '2023-09-25 16:00:00', 0, '2019-12-26 11:36:26', '2019-12-26 11:36:26'),
(696, 10, 288, NULL, '2023-09-26 16:00:00', 0, '2019-12-26 11:36:28', '2019-12-26 11:36:28'),
(697, 10, 290, NULL, '2023-09-27 16:00:00', 0, '2019-12-26 11:36:31', '2019-12-26 11:36:31'),
(698, 10, 289, NULL, '2023-09-29 16:00:00', 0, '2019-12-26 11:36:33', '2019-12-26 11:36:33'),
(699, 10, 290, NULL, '2023-09-30 16:00:00', 0, '2019-12-26 11:36:37', '2019-12-26 11:36:37'),
(700, 10, 291, NULL, '2023-10-01 16:00:00', 0, '2019-12-26 11:36:40', '2019-12-26 11:36:40'),
(701, 10, 293, NULL, '2023-10-02 16:00:00', 0, '2019-12-26 11:36:46', '2019-12-26 11:36:46'),
(702, 10, 293, NULL, '2023-10-03 16:00:00', 0, '2019-12-26 11:36:47', '2019-12-26 11:36:47'),
(703, 10, 292, NULL, '2023-10-04 16:00:00', 0, '2019-12-26 11:36:49', '2019-12-26 11:36:49'),
(704, 10, 293, NULL, '2023-10-06 16:00:00', 0, '2019-12-26 11:36:59', '2019-12-26 11:36:59'),
(705, 10, 294, NULL, '2023-10-08 16:00:00', 0, '2019-12-26 11:37:02', '2019-12-26 11:37:02'),
(706, 10, 297, NULL, '2023-10-09 16:00:00', 0, '2019-12-26 11:37:04', '2019-12-26 11:37:04'),
(707, 10, 295, NULL, '2023-10-10 16:00:00', 0, '2019-12-26 11:37:06', '2019-12-26 11:37:06'),
(708, 10, 297, NULL, '2023-10-11 16:00:00', 0, '2019-12-26 11:37:08', '2019-12-26 11:37:08'),
(709, 10, 296, NULL, '2023-10-13 16:00:00', 0, '2019-12-26 11:37:10', '2019-12-26 11:37:10'),
(710, 10, 297, NULL, '2023-10-14 16:00:00', 0, '2019-12-26 11:37:13', '2019-12-26 11:37:13'),
(711, 10, 298, NULL, '2023-10-15 16:00:00', 0, '2019-12-26 11:37:16', '2019-12-26 11:37:16'),
(712, 10, 301, NULL, '2023-10-16 16:00:00', 0, '2019-12-26 11:37:20', '2019-12-26 11:37:20'),
(713, 10, 299, NULL, '2023-10-17 16:00:00', 0, '2019-12-26 11:37:22', '2019-12-26 11:37:22'),
(714, 10, 301, NULL, '2023-10-18 16:00:00', 0, '2019-12-26 11:37:27', '2019-12-26 11:37:27'),
(715, 10, 300, NULL, '2023-10-20 16:00:00', 0, '2019-12-26 11:37:28', '2019-12-26 11:37:28'),
(716, 10, 301, NULL, '2023-10-21 16:00:00', 0, '2019-12-26 11:37:30', '2019-12-26 11:37:30'),
(717, 10, 302, NULL, '2023-10-22 16:00:00', 0, '2019-12-26 11:37:32', '2019-12-26 11:37:32'),
(718, 10, 305, NULL, '2023-10-23 16:00:00', 0, '2019-12-26 11:37:35', '2019-12-26 11:37:35'),
(719, 10, 303, NULL, '2023-10-24 16:00:00', 0, '2019-12-26 11:37:36', '2019-12-26 11:37:36'),
(720, 10, 305, NULL, '2023-10-25 16:00:00', 0, '2019-12-26 11:37:38', '2019-12-26 11:37:38'),
(721, 10, 304, NULL, '2023-10-27 16:00:00', 0, '2019-12-26 11:37:41', '2019-12-26 11:37:41'),
(722, 10, 305, NULL, '2023-10-28 16:00:00', 0, '2019-12-26 11:37:43', '2019-12-26 11:37:43'),
(723, 10, 306, NULL, '2023-10-29 16:00:00', 0, '2019-12-26 11:37:45', '2019-12-26 11:37:45'),
(724, 10, 309, NULL, '2023-10-30 16:00:00', 0, '2019-12-26 11:37:53', '2019-12-26 11:37:53'),
(725, 10, 307, NULL, '2023-10-31 16:00:00', 0, '2019-12-26 11:37:56', '2019-12-26 11:37:56'),
(726, 10, 309, NULL, '2023-11-01 16:00:00', 0, '2019-12-26 11:37:59', '2019-12-26 11:37:59'),
(727, 10, 308, NULL, '2023-11-03 16:00:00', 0, '2019-12-26 11:38:02', '2019-12-26 11:38:02'),
(728, 10, 309, NULL, '2023-11-04 16:00:00', 0, '2019-12-26 11:38:05', '2019-12-26 11:38:05'),
(729, 10, 310, NULL, '2023-11-05 16:00:00', 0, '2019-12-26 11:38:12', '2019-12-26 11:38:12'),
(730, 10, 312, NULL, '2023-11-06 16:00:00', 0, '2019-12-26 11:38:14', '2019-12-26 11:38:14'),
(731, 10, 312, NULL, '2023-11-07 16:00:00', 0, '2019-12-26 11:38:16', '2019-12-26 11:38:16'),
(732, 10, 311, NULL, '2023-11-08 16:00:00', 0, '2019-12-26 11:38:19', '2019-12-26 11:38:19'),
(733, 10, 312, NULL, '2023-11-10 16:00:00', 0, '2019-12-26 11:38:22', '2019-12-26 11:38:22'),
(734, 10, 313, NULL, '2023-11-12 16:00:00', 0, '2019-12-26 11:38:24', '2019-12-26 11:38:24'),
(735, 10, 315, NULL, '2023-11-13 16:00:00', 0, '2019-12-26 11:38:39', '2019-12-26 11:38:39'),
(736, 10, 315, NULL, '2023-11-14 16:00:00', 0, '2019-12-26 11:38:41', '2019-12-26 11:38:41'),
(737, 10, 314, NULL, '2023-11-15 16:00:00', 0, '2019-12-26 11:38:43', '2019-12-26 11:38:43'),
(738, 10, 315, NULL, '2023-11-17 16:00:00', 0, '2019-12-26 11:38:45', '2019-12-26 11:38:45'),
(739, 10, 316, NULL, '2023-11-19 16:00:00', 0, '2019-12-26 11:38:49', '2019-12-26 11:38:49'),
(740, 10, 318, NULL, '2023-11-20 16:00:00', 0, '2019-12-26 11:38:55', '2019-12-26 11:38:55'),
(741, 10, 318, NULL, '2023-11-21 16:00:00', 0, '2019-12-26 11:38:56', '2019-12-26 11:38:56'),
(742, 10, 317, NULL, '2023-11-22 16:00:00', 0, '2019-12-26 11:38:58', '2019-12-26 11:38:58'),
(743, 10, 318, NULL, '2023-11-24 16:00:00', 0, '2019-12-26 11:39:01', '2019-12-26 11:39:01'),
(744, 10, 319, NULL, '2023-11-26 16:00:00', 0, '2019-12-26 11:39:05', '2019-12-26 11:39:05'),
(745, 10, 320, NULL, '2023-11-27 16:00:00', 0, '2019-12-26 11:39:07', '2019-12-26 11:39:07'),
(746, 10, 321, NULL, '2023-11-28 16:00:00', 0, '2019-12-26 11:39:10', '2019-12-26 11:39:10'),
(747, 10, 322, NULL, '2023-11-29 16:00:00', 0, '2019-12-26 11:39:12', '2019-12-26 11:39:12'),
(748, 10, 323, NULL, '2023-11-30 16:00:00', 0, '2019-12-26 11:39:19', '2019-12-26 11:39:19'),
(749, 10, 324, NULL, '2023-12-01 16:00:00', 0, '2019-12-26 11:39:21', '2019-12-26 11:39:21'),
(750, 10, 254, NULL, '2023-06-23 16:00:00', 0, '2019-12-26 11:46:45', '2019-12-26 11:46:45'),
(751, 10, 254, NULL, '2023-06-24 16:00:00', 0, '2019-12-26 11:46:46', '2019-12-26 11:46:46'),
(752, 10, 254, NULL, '2023-06-26 16:00:00', 0, '2019-12-26 11:46:48', '2019-12-26 11:46:48'),
(753, 10, 254, NULL, '2023-06-27 16:00:00', 0, '2019-12-26 11:46:49', '2019-12-26 11:46:49'),
(754, 10, 254, NULL, '2023-06-30 16:00:00', 0, '2019-12-26 11:46:54', '2019-12-26 11:46:54'),
(755, 10, 254, NULL, '2023-07-01 16:00:00', 0, '2019-12-26 11:46:55', '2019-12-26 11:46:55'),
(756, 10, 254, NULL, '2023-07-03 16:00:00', 0, '2019-12-26 11:46:56', '2019-12-26 11:46:56'),
(757, 10, 254, NULL, '2023-07-04 16:00:00', 0, '2019-12-26 11:46:58', '2019-12-26 11:46:58'),
(758, 10, 254, NULL, '2023-07-07 16:00:00', 0, '2019-12-26 11:47:00', '2019-12-26 11:47:00'),
(759, 10, 254, NULL, '2023-07-08 16:00:00', 0, '2019-12-26 11:47:01', '2019-12-26 11:47:01'),
(760, 10, 254, NULL, '2023-07-11 16:00:00', 0, '2019-12-26 11:47:03', '2019-12-26 11:47:03'),
(761, 10, 254, NULL, '2023-07-12 16:00:00', 0, '2019-12-26 11:47:05', '2019-12-26 11:47:05'),
(762, 10, 254, NULL, '2023-07-14 16:00:00', 0, '2019-12-26 11:47:05', '2019-12-26 11:47:05'),
(763, 10, 254, NULL, '2023-07-15 16:00:00', 0, '2019-12-26 11:47:06', '2019-12-26 11:47:06'),
(764, 10, 254, NULL, '2023-07-19 16:00:00', 0, '2019-12-26 11:47:12', '2019-12-26 11:47:12'),
(765, 10, 254, NULL, '2023-07-21 16:00:00', 0, '2019-12-26 11:47:12', '2019-12-26 11:47:12'),
(766, 10, 254, NULL, '2023-07-18 16:00:00', 0, '2019-12-26 11:47:12', '2019-12-26 11:47:12'),
(767, 10, 254, NULL, '2023-07-22 16:00:00', 0, '2019-12-26 11:47:12', '2019-12-26 11:47:12'),
(768, 10, 254, NULL, '2023-07-25 16:00:00', 0, '2019-12-26 11:47:15', '2019-12-26 11:47:15'),
(769, 10, 254, NULL, '2023-07-29 16:00:00', 0, '2019-12-26 11:47:18', '2019-12-26 11:47:18'),
(819, 13, 254, NULL, '2023-12-31 16:00:00', 0, '2019-12-27 07:21:37', '2019-12-27 07:21:37'),
(820, 13, 254, NULL, '2024-01-05 16:00:00', 0, '2019-12-27 07:21:40', '2019-12-27 07:21:40'),
(821, 13, 254, NULL, '2024-01-01 16:00:00', 0, '2019-12-27 07:21:41', '2019-12-27 07:21:41'),
(822, 13, 254, NULL, '2024-01-07 16:00:00', 0, '2019-12-27 07:21:43', '2019-12-27 07:21:43'),
(823, 13, 254, NULL, '2024-01-14 16:00:00', 0, '2019-12-27 07:21:45', '2019-12-27 07:21:45'),
(824, 13, 254, NULL, '2024-01-21 16:00:00', 0, '2019-12-27 07:21:46', '2019-12-27 07:21:46'),
(825, 13, 254, NULL, '2024-01-28 16:00:00', 0, '2019-12-27 07:21:48', '2019-12-27 07:21:48'),
(826, 13, 254, NULL, '2024-02-04 16:00:00', 0, '2019-12-27 07:21:52', '2019-12-27 07:21:52'),
(827, 13, 255, NULL, '2024-02-11 16:00:00', 0, '2019-12-27 07:21:55', '2019-12-27 07:21:55'),
(828, 13, 258, NULL, '2024-02-12 16:00:00', 0, '2019-12-27 07:22:01', '2019-12-27 07:22:01'),
(829, 13, 256, NULL, '2024-02-13 16:00:00', 0, '2019-12-27 07:22:22', '2019-12-27 07:22:22'),
(830, 13, 258, NULL, '2024-02-12 16:00:00', 0, '2019-12-27 07:22:22', '2019-12-27 07:22:22'),
(831, 13, 258, NULL, '2024-02-16 16:00:00', 0, '2019-12-27 07:22:22', '2019-12-27 07:22:22'),
(832, 13, 257, NULL, '2024-02-17 16:00:00', 0, '2019-12-27 07:22:24', '2019-12-27 07:22:24'),
(833, 13, 259, NULL, '2024-02-18 16:00:00', 0, '2019-12-27 07:22:50', '2019-12-27 07:22:50'),
(834, 13, 262, NULL, '2024-02-19 16:00:00', 0, '2019-12-27 07:22:52', '2019-12-27 07:22:52'),
(835, 13, 260, NULL, '2024-02-20 16:00:00', 0, '2019-12-27 07:22:54', '2019-12-27 07:22:54'),
(836, 13, 262, NULL, '2024-02-23 16:00:00', 0, '2019-12-27 07:22:56', '2019-12-27 07:22:56'),
(837, 13, 261, NULL, '2024-02-24 16:00:00', 0, '2019-12-27 07:22:59', '2019-12-27 07:22:59'),
(838, 13, 263, NULL, '2024-02-25 16:00:00', 0, '2019-12-27 07:23:02', '2019-12-27 07:23:02'),
(839, 13, 266, NULL, '2024-02-26 16:00:00', 0, '2019-12-27 07:23:04', '2019-12-27 07:23:04'),
(840, 13, 264, NULL, '2024-02-27 16:00:00', 0, '2019-12-27 07:23:07', '2019-12-27 07:23:07'),
(841, 13, 266, NULL, '2024-03-01 16:00:00', 0, '2019-12-27 07:23:13', '2019-12-27 07:23:13'),
(842, 13, 265, NULL, '2024-03-02 16:00:00', 0, '2019-12-27 07:23:15', '2019-12-27 07:23:15'),
(843, 13, 267, NULL, '2024-03-03 16:00:00', 0, '2019-12-27 07:23:18', '2019-12-27 07:23:18'),
(844, 13, 270, NULL, '2024-03-04 16:00:00', 0, '2019-12-27 07:23:20', '2019-12-27 07:23:20'),
(845, 13, 268, NULL, '2024-03-05 16:00:00', 0, '2019-12-27 07:23:22', '2019-12-27 07:23:22'),
(846, 13, 269, NULL, '2024-03-08 16:00:00', 0, '2019-12-27 07:23:25', '2019-12-27 07:23:25'),
(848, 13, 271, NULL, '2024-03-10 16:00:00', 0, '2019-12-27 07:23:33', '2019-12-27 07:23:33'),
(849, 13, 274, NULL, '2024-03-11 16:00:00', 0, '2019-12-27 07:23:38', '2019-12-27 07:23:38'),
(850, 13, 272, NULL, '2024-03-12 16:00:00', 0, '2019-12-27 07:23:41', '2019-12-27 07:23:41'),
(851, 13, 274, NULL, '2024-03-15 16:00:00', 0, '2019-12-27 07:23:44', '2019-12-27 07:23:44'),
(852, 13, 273, NULL, '2024-03-16 16:00:00', 0, '2019-12-27 07:23:47', '2019-12-27 07:23:47'),
(853, 13, 275, NULL, '2024-03-17 16:00:00', 0, '2019-12-27 07:23:49', '2019-12-27 07:23:49'),
(854, 13, 278, NULL, '2024-03-18 16:00:00', 0, '2019-12-27 07:23:54', '2019-12-27 07:23:54'),
(855, 13, 276, NULL, '2024-03-19 16:00:00', 0, '2019-12-27 07:23:56', '2019-12-27 07:23:56'),
(856, 13, 278, NULL, '2024-03-22 16:00:00', 0, '2019-12-27 07:24:00', '2019-12-27 07:24:00'),
(857, 13, 277, NULL, '2024-03-23 16:00:00', 0, '2019-12-27 07:24:03', '2019-12-27 07:24:03'),
(858, 13, 279, NULL, '2024-03-24 16:00:00', 0, '2019-12-27 07:24:05', '2019-12-27 07:24:05'),
(859, 13, 282, NULL, '2024-03-25 16:00:00', 0, '2019-12-27 07:24:08', '2019-12-27 07:24:08'),
(860, 13, 280, NULL, '2024-03-26 16:00:00', 0, '2019-12-27 07:24:10', '2019-12-27 07:24:10'),
(861, 13, 282, NULL, '2024-03-29 16:00:00', 0, '2019-12-27 07:24:13', '2019-12-27 07:24:13'),
(862, 13, 281, NULL, '2024-03-30 16:00:00', 0, '2019-12-27 07:24:15', '2019-12-27 07:24:15'),
(863, 13, 283, NULL, '2024-03-31 16:00:00', 0, '2019-12-27 07:24:21', '2019-12-27 07:24:21'),
(864, 13, 286, NULL, '2024-04-01 16:00:00', 0, '2019-12-27 07:24:25', '2019-12-27 07:24:25'),
(865, 13, 284, NULL, '2024-04-02 16:00:00', 0, '2019-12-27 07:24:28', '2019-12-27 07:24:28'),
(866, 13, 286, NULL, '2024-04-05 16:00:00', 0, '2019-12-27 07:24:31', '2019-12-27 07:24:31'),
(867, 13, 285, NULL, '2024-04-06 16:00:00', 0, '2019-12-27 07:24:36', '2019-12-27 07:24:36'),
(868, 13, 287, NULL, '2024-04-07 16:00:00', 0, '2019-12-27 07:24:41', '2019-12-27 07:24:41'),
(869, 13, 290, NULL, '2024-04-08 16:00:00', 0, '2019-12-27 07:24:45', '2019-12-27 07:24:45'),
(870, 13, 288, NULL, '2024-04-09 16:00:00', 0, '2019-12-27 07:24:47', '2019-12-27 07:24:47'),
(871, 13, 290, NULL, '2024-04-12 16:00:00', 0, '2019-12-27 07:24:50', '2019-12-27 07:24:50'),
(872, 13, 289, NULL, '2024-04-13 16:00:00', 0, '2019-12-27 07:24:52', '2019-12-27 07:24:52'),
(873, 13, 291, NULL, '2024-04-14 16:00:00', 0, '2019-12-27 07:24:55', '2019-12-27 07:24:55'),
(874, 13, 293, NULL, '2024-04-15 16:00:00', 0, '2019-12-27 07:25:00', '2019-12-27 07:25:00'),
(875, 13, 292, NULL, '2024-04-16 16:00:00', 0, '2019-12-27 07:25:02', '2019-12-27 07:25:02'),
(876, 13, 293, NULL, '2024-04-19 16:00:00', 0, '2019-12-27 07:25:05', '2019-12-27 07:25:05'),
(877, 13, 294, NULL, '2024-04-21 16:00:00', 0, '2019-12-27 07:25:08', '2019-12-27 07:25:08'),
(878, 13, 297, NULL, '2024-04-22 16:00:00', 0, '2019-12-27 07:25:11', '2019-12-27 07:25:11'),
(879, 13, 295, NULL, '2024-04-23 16:00:00', 0, '2019-12-27 07:25:13', '2019-12-27 07:25:13'),
(880, 13, 297, NULL, '2024-04-26 16:00:00', 0, '2019-12-27 07:25:17', '2019-12-27 07:25:17'),
(881, 13, 296, NULL, '2024-04-27 16:00:00', 0, '2019-12-27 07:25:20', '2019-12-27 07:25:20'),
(882, 13, 298, NULL, '2024-04-28 16:00:00', 0, '2019-12-27 07:25:22', '2019-12-27 07:25:22'),
(883, 13, 301, NULL, '2024-04-29 16:00:00', 0, '2019-12-27 07:25:26', '2019-12-27 07:25:26'),
(884, 13, 301, NULL, '2024-05-03 16:00:00', 0, '2019-12-27 07:25:31', '2019-12-27 07:25:31'),
(885, 13, 299, NULL, '2024-04-30 16:00:00', 0, '2019-12-27 07:25:33', '2019-12-27 07:25:33'),
(887, 13, 300, NULL, '2024-05-04 16:00:00', 0, '2019-12-27 07:25:42', '2019-12-27 07:25:42'),
(888, 13, 302, NULL, '2024-05-05 16:00:00', 0, '2019-12-27 07:25:45', '2019-12-27 07:25:45'),
(889, 13, 305, NULL, '2024-05-06 16:00:00', 0, '2019-12-27 07:25:48', '2019-12-27 07:25:48'),
(890, 13, 303, NULL, '2024-05-07 16:00:00', 0, '2019-12-27 07:25:50', '2019-12-27 07:25:50'),
(891, 13, 305, NULL, '2024-05-10 16:00:00', 0, '2019-12-27 07:25:53', '2019-12-27 07:25:53'),
(892, 13, 304, NULL, '2024-05-11 16:00:00', 0, '2019-12-27 07:25:56', '2019-12-27 07:25:56'),
(893, 13, 306, NULL, '2024-05-12 16:00:00', 0, '2019-12-27 07:26:02', '2019-12-27 07:26:02'),
(894, 13, 309, NULL, '2024-05-13 16:00:00', 0, '2019-12-27 07:26:03', '2019-12-27 07:26:03'),
(895, 13, 307, NULL, '2024-05-14 16:00:00', 0, '2019-12-27 07:26:06', '2019-12-27 07:26:06'),
(896, 13, 309, NULL, '2024-05-17 16:00:00', 0, '2019-12-27 07:26:09', '2019-12-27 07:26:09'),
(897, 13, 308, NULL, '2024-05-18 16:00:00', 0, '2019-12-27 07:26:12', '2019-12-27 07:26:12'),
(898, 13, 310, NULL, '2024-05-19 16:00:00', 0, '2019-12-27 07:26:16', '2019-12-27 07:26:16'),
(899, 13, 312, NULL, '2024-05-20 16:00:00', 0, '2019-12-27 07:26:21', '2019-12-27 07:26:21'),
(900, 13, 311, NULL, '2024-05-21 16:00:00', 0, '2019-12-27 07:26:23', '2019-12-27 07:26:23'),
(901, 13, 312, NULL, '2024-05-24 16:00:00', 0, '2019-12-27 07:26:26', '2019-12-27 07:26:26'),
(902, 13, 313, NULL, '2024-05-26 16:00:00', 0, '2019-12-27 07:26:29', '2019-12-27 07:26:29'),
(903, 13, 315, NULL, '2024-05-27 16:00:00', 0, '2019-12-27 07:26:33', '2019-12-27 07:26:33'),
(904, 13, 314, NULL, '2024-05-28 16:00:00', 0, '2019-12-27 07:26:35', '2019-12-27 07:26:35'),
(905, 13, 315, NULL, '2024-05-31 16:00:00', 0, '2019-12-27 07:26:44', '2019-12-27 07:26:44'),
(906, 13, 316, NULL, '2024-06-02 16:00:00', 0, '2019-12-27 07:26:47', '2019-12-27 07:26:47'),
(907, 13, 318, NULL, '2024-06-03 16:00:00', 0, '2019-12-27 07:26:50', '2019-12-27 07:26:50'),
(908, 13, 317, NULL, '2024-06-04 16:00:00', 0, '2019-12-27 07:26:52', '2019-12-27 07:26:52'),
(909, 13, 318, NULL, '2024-06-07 16:00:00', 0, '2019-12-27 07:26:55', '2019-12-27 07:26:55'),
(910, 13, 319, NULL, '2024-06-09 16:00:00', 0, '2019-12-27 07:26:58', '2019-12-27 07:26:58'),
(911, 13, 320, NULL, '2024-06-10 16:00:00', 0, '2019-12-27 07:27:23', '2019-12-27 07:27:23'),
(912, 13, 321, NULL, '2024-06-11 16:00:00', 0, '2019-12-27 07:27:26', '2019-12-27 07:27:26'),
(913, 13, 322, NULL, '2024-06-12 16:00:00', 0, '2019-12-27 07:27:28', '2019-12-27 07:27:28'),
(914, 13, 323, NULL, '2024-06-13 16:00:00', 0, '2019-12-27 07:27:31', '2019-12-27 07:27:31'),
(915, 13, 324, NULL, '2024-06-14 16:00:00', 0, '2019-12-27 07:27:37', '2019-12-27 07:27:37'),
(916, 3, 8, NULL, '2021-08-16 16:00:00', 0, '2019-12-27 07:43:57', '2019-12-27 07:43:57'),
(917, 3, 64, NULL, '2021-10-04 16:00:00', 0, '2019-12-27 07:45:20', '2019-12-27 07:45:20'),
(918, 3, 66, NULL, '2021-10-07 16:00:00', 0, '2019-12-27 07:45:23', '2019-12-27 07:45:23'),
(919, 3, 68, NULL, '2021-10-09 16:00:00', 0, '2019-12-27 07:45:25', '2019-12-27 07:45:25'),
(920, 3, 72, NULL, '2021-10-11 16:00:00', 0, '2019-12-27 07:45:40', '2019-12-27 07:45:40'),
(921, 3, 78, NULL, '2021-10-13 16:00:00', 0, '2019-12-27 07:45:41', '2019-12-27 07:45:41'),
(922, 3, 78, NULL, '2021-10-15 16:00:00', 0, '2019-12-27 07:45:42', '2019-12-27 07:45:42'),
(923, 3, 74, NULL, '2021-10-14 16:00:00', 0, '2019-12-27 07:45:43', '2019-12-27 07:45:43'),
(924, 3, 40, NULL, '2021-09-13 16:00:00', 0, '2019-12-27 07:46:19', '2019-12-27 07:46:19'),
(925, 3, 46, NULL, '2021-09-15 16:00:00', 0, '2019-12-27 07:46:22', '2019-12-27 07:46:22'),
(926, 3, 42, NULL, '2021-09-16 16:00:00', 0, '2019-12-27 07:46:23', '2019-12-27 07:46:23'),
(927, 3, 86, NULL, '2021-10-18 16:00:00', 0, '2019-12-27 07:47:24', '2019-12-27 07:47:24'),
(928, 3, 92, NULL, '2021-10-20 16:00:00', 0, '2019-12-27 07:47:26', '2019-12-27 07:47:26'),
(929, 3, 88, NULL, '2021-10-21 16:00:00', 0, '2019-12-27 07:47:27', '2019-12-27 07:47:27'),
(930, 3, 92, NULL, '2021-10-22 16:00:00', 0, '2019-12-27 07:47:29', '2019-12-27 07:47:29'),
(931, 3, 90, NULL, '2021-10-23 16:00:00', 0, '2019-12-27 07:47:30', '2019-12-27 07:47:30'),
(983, 1, 80, NULL, '2020-01-01 16:00:00', 0, '2019-12-28 16:49:42', '2019-12-28 16:49:42'),
(984, 1, 84, NULL, '2020-01-30 16:00:00', 0, '2019-12-29 05:11:24', '2019-12-29 05:11:24'),
(985, 1, 72, NULL, '2020-03-31 16:00:00', 0, '2019-12-29 05:20:28', '2019-12-29 05:20:28'),
(986, 3, 70, NULL, '2021-10-06 16:00:00', 0, '2019-12-29 05:24:54', '2019-12-29 05:24:54'),
(987, 3, 70, NULL, '2021-10-08 16:00:00', 0, '2019-12-29 05:24:58', '2019-12-29 05:24:58'),
(988, 3, 14, NULL, '2021-08-18 16:00:00', 0, '2019-12-29 05:26:54', '2019-12-29 05:26:54'),
(989, 3, 10, NULL, '2021-08-19 16:00:00', 0, '2019-12-29 05:26:55', '2019-12-29 05:26:55'),
(990, 3, 34, NULL, '2021-09-09 16:00:00', 0, '2019-12-29 05:27:49', '2019-12-29 05:27:49'),
(991, 3, 46, NULL, '2021-09-17 16:00:00', 0, '2019-12-29 05:29:32', '2019-12-29 05:29:32'),
(992, 1, 106, NULL, '2020-04-22 16:00:00', 0, '2019-12-29 07:32:07', '2019-12-29 07:32:07'),
(993, 1, 106, NULL, '2020-04-24 16:00:00', 0, '2019-12-29 07:32:09', '2019-12-29 07:32:09'),
(994, 3, 79, NULL, '2021-07-07 16:00:00', 0, '2019-12-29 07:51:09', '2019-12-29 07:51:09'),
(995, 1, 78, NULL, '2020-04-03 16:00:00', 0, '2019-12-29 08:20:02', '2019-12-29 08:20:02'),
(996, 1, 62, NULL, '2020-03-20 16:00:00', 0, '2019-12-29 08:20:12', '2019-12-29 08:20:12'),
(997, 1, 58, NULL, '2020-03-19 16:00:00', 0, '2019-12-29 08:20:14', '2019-12-29 08:20:14'),
(998, 1, 62, NULL, '2020-03-18 16:00:00', 0, '2019-12-29 08:20:15', '2019-12-29 08:20:15'),
(1003, 1, 81, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":12,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-08 18:30:00', 1, '2019-12-30 10:49:01', '2020-01-09 10:00:19'),
(1199, 1, 82, NULL, '2020-01-19 16:00:00', 0, '2020-01-04 17:18:59', '2020-01-04 17:18:59'),
(1200, 1, 83, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":11,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-26 16:00:00', 1, '2020-01-04 17:19:02', '2020-01-04 17:19:25'),
(1201, 3, 80, NULL, '2021-07-14 16:00:00', 0, '2020-01-05 08:14:34', '2020-01-05 08:14:34'),
(1202, 4, 107, NULL, '2021-11-12 16:00:00', 0, '2020-01-05 08:24:09', '2020-01-05 08:24:09'),
(1203, 9, 182, NULL, '2023-01-01 16:00:00', 0, '2020-01-05 08:35:08', '2020-01-05 08:35:08'),
(1204, 9, 182, NULL, '2023-01-12 16:00:00', 0, '2020-01-05 08:38:10', '2020-01-05 08:38:10'),
(1205, 9, 182, NULL, '2023-01-16 16:00:00', 0, '2020-01-05 08:38:17', '2020-01-05 08:38:17'),
(1206, 1, 83, NULL, '2020-01-23 16:00:00', 0, '2020-01-05 09:06:58', '2020-01-05 09:06:58'),
(1207, 1, 83, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":10,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-24 16:00:00', 1, '2020-01-05 09:07:11', '2020-01-05 09:07:34'),
(1208, 13, 254, NULL, '2024-01-23 16:00:00', 0, '2020-01-05 10:08:39', '2020-01-05 10:08:39'),
(1209, 13, 254, NULL, '2024-01-20 16:00:00', 0, '2020-01-05 10:08:49', '2020-01-05 10:08:49'),
(1210, 13, 254, NULL, '2024-02-02 16:00:00', 0, '2020-01-05 10:09:01', '2020-01-05 10:09:01'),
(1211, 13, 254, NULL, '2024-02-03 16:00:00', 0, '2020-01-05 10:09:03', '2020-01-05 10:09:03'),
(1212, 13, 254, NULL, '2024-02-10 16:00:00', 0, '2020-01-05 10:09:05', '2020-01-05 10:09:05'),
(1254, 1, 81, NULL, '2020-01-07 18:30:00', 0, '2020-01-08 10:33:30', '2020-01-08 10:33:30'),
(1255, 1, 80, NULL, '2020-01-01 18:30:00', 0, '2020-01-09 03:55:43', '2020-01-09 03:55:43'),
(1256, 1, 82, NULL, '2020-01-15 18:30:00', 0, '2020-01-09 09:53:52', '2020-01-09 09:53:52'),
(1257, 1, 36, NULL, '2020-02-28 18:30:00', 0, '2020-01-09 09:54:45', '2020-01-09 09:54:45'),
(1258, 1, 54, NULL, '2020-03-12 18:30:00', 0, '2020-01-09 10:05:32', '2020-01-09 10:05:32'),
(1259, 1, 52, NULL, '2020-03-13 18:30:00', 0, '2020-01-09 10:05:39', '2020-01-09 10:05:39'),
(1260, 1, 20, '[{"common_programs_weeks_lap_id":"72","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-14 18:30:00', 1, '2020-01-09 10:12:35', '2020-01-09 11:16:25'),
(1261, 1, 28, NULL, '2020-02-21 18:30:00', 0, '2020-01-09 10:22:19', '2020-01-09 10:22:19'),
(1262, 1, 16, '[{"common_programs_weeks_lap_id":"53","is_complete":true,"completed_time":10,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"54","is_complete":true,"completed_time":4,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"55","is_complete":true,"completed_time":1,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-09 18:30:00', 0, '2020-01-09 10:23:17', '2020-01-09 10:23:46'),
(1263, 1, 14, NULL, '2020-02-06 18:30:00', 0, '2020-01-09 10:50:26', '2020-01-09 10:50:26'),
(1264, 1, 34, NULL, '2020-02-26 18:30:00', 0, '2020-01-09 10:51:48', '2020-01-09 10:51:48'),
(1265, 1, 26, '[{"common_programs_weeks_lap_id":"88","is_complete":true,"completed_time":25,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"89","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"90","is_complete":true,"completed_time":13,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"91","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"92","is_complete":true,"completed_time":40,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-19 18:30:00', 0, '2020-01-09 10:51:53', '2020-01-09 10:57:28'),
(1266, 1, 46, NULL, '2020-03-05 18:30:00', 0, '2020-01-09 10:59:52', '2020-01-09 10:59:52'),
(1267, 1, 42, '[{"common_programs_weeks_lap_id":"138","is_complete":true,"completed_time":7,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"139","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"140","is_complete":true,"completed_time":11,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"141","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"142","is_complete":true,"completed_time":4,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-04 18:30:00', 1, '2020-01-09 10:59:53', '2020-01-09 11:04:25'),
(1268, 1, 40, '[{"common_programs_weeks_lap_id":"128","is_complete":true,"completed_time":0,"updated_text":"00:01:00","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"129","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"00:03:30","updated_percentage":""},{"common_programs_weeks_lap_id":"130","is_complete":true,"completed_time":0,"updated_text":"00:01:00","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"131","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"00:03:30","updated_percentage":""},{"common_programs_weeks_lap_id":"132","is_complete":true,"completed_time":0,"updated_text":"00:00:30","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"133","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"00:03:30","updated_percentage":""},{"common_programs_weeks_lap_id":"134","is_complete":false,"updated_text":"00:01:00","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"135","is_complete":false,"updated_text":"","updated_rest":"00:01:30","updated_percentage":""},{"common_programs_weeks_lap_id":"136","is_complete":false,"updated_text":"00:00:30","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"137","is_complete":false,"updated_text":"","updated_rest":"00:01:30","updated_percentage":""}]', '2020-03-01 18:30:00', 0, '2020-01-09 11:05:19', '2020-01-09 11:11:21'),
(1269, 1, 50, NULL, '2020-03-11 18:30:00', 0, '2020-01-09 11:15:23', '2020-01-09 11:15:23'),
(1270, 1, 54, NULL, '2020-03-10 18:30:00', 0, '2020-01-09 11:15:29', '2020-01-09 11:15:29'),
(1271, 1, 30, NULL, '2020-02-18 18:30:00', 0, '2020-01-09 11:18:50', '2020-01-09 11:18:50'),
(1272, 1, 81, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":5,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-09 18:30:00', 1, '2020-01-09 11:22:09', '2020-01-10 04:23:36'),
(1274, 1, 40, NULL, '2020-03-03 16:00:00', 0, '2020-01-10 00:41:29', '2020-01-10 00:41:29'),
(1287, 1, 100, NULL, '2020-04-15 16:00:00', 0, '2020-01-11 00:12:15', '2020-01-11 00:12:15'),
(1298, 1, 81, NULL, '2020-01-10 16:00:00', 0, '2020-01-11 11:12:04', '2020-01-11 11:12:04'),
(1322, 1, 82, NULL, '2020-01-16 16:00:00', 0, '2020-01-14 14:28:03', '2020-01-14 14:28:03'),
(1326, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":2,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-14 18:30:00', 1, '2020-01-15 05:33:15', '2020-01-16 10:02:20'),
(1327, 45, 254, NULL, '2020-01-15 18:30:00', 0, '2020-01-15 05:35:53', '2020-01-15 05:35:53'),
(1328, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":10,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-16 18:30:00', 1, '2020-01-15 05:36:01', '2020-01-16 06:48:25'),
(1329, 45, 254, NULL, '2020-01-18 18:30:00', 0, '2020-01-15 05:36:05', '2020-01-15 05:36:05'),
(1330, 46, 182, NULL, '2020-01-14 18:30:00', 0, '2020-01-15 05:37:48', '2020-01-15 05:37:48'),
(1331, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":13,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-19 18:30:00', 1, '2020-01-15 05:45:56', '2020-01-20 11:30:13'),
(1332, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":3,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-21 18:30:00', 1, '2020-01-15 05:46:02', '2020-01-16 10:01:58'),
(1333, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":9,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-22 18:30:00', 1, '2020-01-15 05:46:09', '2020-01-16 10:01:47'),
(1334, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":6,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-23 18:30:00', 1, '2020-01-15 05:46:12', '2020-01-16 10:01:22'),
(1335, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":3,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-01-25 18:30:00', 1, '2020-01-15 05:46:16', '2020-01-16 10:02:08'),
(1336, 45, 254, NULL, '2020-01-26 18:30:00', 0, '2020-01-15 05:46:21', '2020-01-15 05:46:21'),
(1337, 45, 254, NULL, '2020-01-28 18:30:00', 0, '2020-01-15 05:46:26', '2020-01-15 05:46:26'),
(1338, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":11,"updated_text":"6.0km","updated_rest":"","updated_percentage":""}]', '2020-01-29 18:30:00', 1, '2020-01-15 05:46:33', '2020-01-21 04:41:04'),
(1339, 45, 254, NULL, '2020-01-30 18:30:00', 1, '2020-01-15 05:46:38', '2020-01-21 04:40:01'),
(1340, 45, 254, '[{"common_programs_weeks_lap_id":"1364","is_complete":true,"completed_time":2,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-01 18:30:00', 1, '2020-01-15 05:46:47', '2020-01-16 10:02:40'),
(1341, 45, 254, NULL, '2020-02-02 18:30:00', 0, '2020-01-15 05:46:51', '2020-01-15 05:46:51'),
(1342, 45, 254, NULL, '2020-02-04 18:30:00', 0, '2020-01-15 05:46:56', '2020-01-15 05:46:56'),
(1343, 45, 254, NULL, '2020-02-05 18:30:00', 0, '2020-01-15 05:47:00', '2020-01-15 05:47:00'),
(1344, 45, 254, NULL, '2020-02-06 18:30:00', 0, '2020-01-15 05:47:04', '2020-01-15 05:47:04'),
(1345, 45, 254, NULL, '2020-02-08 18:30:00', 0, '2020-01-15 05:47:11', '2020-01-15 05:47:11'),
(1346, 45, 254, NULL, '2020-02-09 18:30:00', 0, '2020-01-15 05:47:16', '2020-01-15 05:47:16'),
(1347, 45, 254, NULL, '2020-02-11 18:30:00', 0, '2020-01-15 05:47:19', '2020-01-15 05:47:19'),
(1348, 45, 254, NULL, '2020-02-12 18:30:00', 0, '2020-01-15 05:47:23', '2020-01-15 05:47:23'),
(1349, 45, 254, NULL, '2020-02-13 18:30:00', 0, '2020-01-15 05:47:25', '2020-01-15 05:47:25'),
(1350, 45, 254, NULL, '2020-02-15 18:30:00', 0, '2020-01-15 05:47:29', '2020-01-15 05:47:29'),
(1351, 45, 254, NULL, '2020-02-16 18:30:00', 0, '2020-01-15 05:47:36', '2020-01-15 05:47:36'),
(1352, 45, 254, NULL, '2020-02-18 18:30:00', 0, '2020-01-15 05:47:41', '2020-01-15 05:47:41'),
(1353, 45, 254, NULL, '2020-02-19 18:30:00', 0, '2020-01-15 05:47:46', '2020-01-15 05:47:46'),
(1354, 45, 254, NULL, '2020-02-20 18:30:00', 0, '2020-01-15 05:47:49', '2020-01-15 05:47:49'),
(1355, 45, 254, NULL, '2020-02-22 18:30:00', 0, '2020-01-15 05:47:54', '2020-01-15 05:47:54'),
(1356, 45, 255, '[{"common_programs_weeks_lap_id":"1365","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-23 18:30:00', 0, '2020-01-15 05:47:58', '2020-01-16 10:06:02'),
(1357, 45, 258, '[{"common_programs_weeks_lap_id":"1394","is_complete":true,"completed_time":5,"updated_text":"9.5km","updated_rest":"","updated_percentage":""}]', '2020-02-25 18:30:00', 1, '2020-01-15 05:48:14', '2020-01-16 10:06:36'),
(1358, 45, 256, NULL, '2020-02-26 18:30:00', 0, '2020-01-15 05:48:20', '2020-01-15 05:48:20'),
(1359, 45, 258, NULL, '2020-02-27 18:30:00', 0, '2020-01-15 05:48:26', '2020-01-15 05:48:26'),
(1360, 45, 257, '[{"common_programs_weeks_lap_id":"1378","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-02-29 18:30:00', 0, '2020-01-15 05:49:06', '2020-01-16 10:07:59'),
(1361, 45, 259, '[{"common_programs_weeks_lap_id":"1395","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-01 18:30:00', 0, '2020-01-15 05:49:16', '2020-01-16 10:08:14'),
(1362, 45, 262, NULL, '2020-03-03 18:30:00', 0, '2020-01-15 05:49:26', '2020-01-15 05:49:26'),
(1363, 45, 260, '[{"common_programs_weeks_lap_id":"1403","is_complete":true,"completed_time":7,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-04 18:30:00', 0, '2020-01-15 05:49:35', '2020-01-16 10:08:46'),
(1364, 45, 262, NULL, '2020-03-05 18:30:00', 0, '2020-01-15 05:49:44', '2020-01-15 05:49:44'),
(1365, 45, 261, NULL, '2020-03-07 18:30:00', 0, '2020-01-15 05:50:40', '2020-01-15 05:50:40'),
(1366, 45, 263, NULL, '2020-03-08 18:30:00', 0, '2020-01-15 05:50:53', '2020-01-15 05:50:53'),
(1367, 45, 266, '[{"common_programs_weeks_lap_id":"1457","is_complete":true,"completed_time":9,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-10 18:30:00', 1, '2020-01-15 05:51:01', '2020-01-16 10:16:54'),
(1368, 45, 264, NULL, '2020-03-11 18:30:00', 0, '2020-01-15 05:51:05', '2020-01-15 05:51:05'),
(1369, 45, 266, NULL, '2020-03-12 18:30:00', 0, '2020-01-15 05:51:13', '2020-01-15 05:51:13'),
(1370, 45, 265, NULL, '2020-03-14 18:30:00', 0, '2020-01-15 05:51:16', '2020-01-15 05:51:16'),
(1371, 45, 267, '[{"common_programs_weeks_lap_id":"1458","is_complete":true,"completed_time":54,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-15 18:30:00', 0, '2020-01-15 05:51:23', '2020-01-16 10:18:32'),
(1372, 45, 270, NULL, '2020-03-17 18:30:00', 0, '2020-01-15 05:51:29', '2020-01-15 05:51:29'),
(1373, 45, 268, NULL, '2020-03-18 18:30:00', 0, '2020-01-15 05:51:36', '2020-01-15 05:51:36'),
(1374, 45, 269, NULL, '2020-03-19 18:30:00', 0, '2020-01-15 05:51:40', '2020-01-15 05:51:40'),
(1375, 45, 271, '[{"common_programs_weeks_lap_id":"1486","is_complete":true,"completed_time":2,"updated_text":"2.5km","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1487","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1488","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1489","is_complete":true,"completed_time":1,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1490","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-22 18:30:00', 0, '2020-01-15 05:51:55', '2020-01-16 10:20:32'),
(1376, 45, 274, '[{"common_programs_weeks_lap_id":"1516","is_complete":true,"completed_time":10,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-24 18:30:00', 1, '2020-01-15 05:52:02', '2020-01-16 10:21:02'),
(1377, 45, 272, '[{"common_programs_weeks_lap_id":"1499","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-25 18:30:00', 0, '2020-01-15 05:52:37', '2020-01-16 10:23:26'),
(1378, 45, 274, '[{"common_programs_weeks_lap_id":"1516","is_complete":true,"completed_time":3,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-03-26 18:30:00', 1, '2020-01-15 05:52:53', '2020-01-16 10:23:53'),
(1379, 45, 273, NULL, '2020-03-28 18:30:00', 0, '2020-01-15 05:53:01', '2020-01-15 05:53:01'),
(1380, 45, 275, NULL, '2020-03-29 18:30:00', 0, '2020-01-15 05:53:07', '2020-01-15 05:53:07'),
(1381, 45, 278, NULL, '2020-03-31 18:30:00', 0, '2020-01-15 05:53:22', '2020-01-15 05:53:22'),
(1382, 45, 276, NULL, '2020-04-01 18:30:00', 0, '2020-01-15 05:53:27', '2020-01-15 05:53:27'),
(1383, 45, 278, NULL, '2020-04-02 18:30:00', 0, '2020-01-15 05:53:36', '2020-01-15 05:53:36'),
(1384, 45, 277, NULL, '2020-04-04 18:30:00', 0, '2020-01-15 05:53:46', '2020-01-15 05:53:46'),
(1385, 45, 279, NULL, '2020-04-05 18:30:00', 0, '2020-01-15 05:54:07', '2020-01-15 05:54:07'),
(1386, 45, 282, NULL, '2020-04-07 18:30:00', 0, '2020-01-15 05:54:13', '2020-01-15 05:54:13'),
(1387, 45, 280, '[{"common_programs_weeks_lap_id":"1571","is_complete":true,"completed_time":9,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1572","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1573","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1574","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1575","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1576","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1577","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1578","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1579","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1580","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1581","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1582","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1583","is_complete":true,"completed_time":5,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1584","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1585","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1586","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1587","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1588","is_complete":true,"completed_time":1,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1589","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1590","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1591","is_complete":true,"completed_time":3,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1592","is_complete":true,"completed_time":5,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-04-08 18:30:00', 0, '2020-01-15 05:54:19', '2020-01-16 10:29:09'),
(1388, 45, 282, NULL, '2020-04-09 18:30:00', 0, '2020-01-15 05:54:28', '2020-01-15 05:54:28'),
(1389, 45, 281, NULL, '2020-04-11 18:30:00', 0, '2020-01-15 05:54:33', '2020-01-15 05:54:33'),
(1390, 45, 283, '[{"common_programs_weeks_lap_id":"1623","is_complete":true,"completed_time":22,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1624","is_complete":true,"completed_time":2,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1625","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1626","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1627","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1628","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1629","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1630","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1631","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1632","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1633","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1634","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1635","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1636","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1637","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1638","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1639","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1640","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1641","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1642","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1643","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1644","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-04-12 18:30:00', 1, '2020-01-15 05:54:42', '2020-01-16 10:32:52'),
(1391, 45, 286, '[{"common_programs_weeks_lap_id":"1683","is_complete":true,"completed_time":5,"updated_text":"9.0km","updated_rest":"","updated_percentage":""}]', '2020-04-14 18:30:00', 1, '2020-01-15 05:54:53', '2020-01-16 10:33:36'),
(1392, 45, 284, '[{"common_programs_weeks_lap_id":"1645","is_complete":true,"completed_time":0,"updated_text":"00:15:00","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1646","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1647","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-04-15 18:30:00', 0, '2020-01-15 05:55:01', '2020-01-16 10:41:29'),
(1393, 45, 286, NULL, '2020-04-16 18:30:00', 0, '2020-01-15 05:55:07', '2020-01-15 05:55:07'),
(1394, 45, 285, NULL, '2020-04-18 18:30:00', 0, '2020-01-15 05:55:11', '2020-01-15 05:55:11'),
(1395, 45, 287, NULL, '2020-04-19 18:30:00', 0, '2020-01-15 05:55:24', '2020-01-15 05:55:24'),
(1396, 45, 290, NULL, '2020-04-21 18:30:00', 0, '2020-01-15 05:55:33', '2020-01-15 05:55:33'),
(1397, 45, 288, NULL, '2020-04-22 18:30:00', 0, '2020-01-15 05:55:37', '2020-01-15 05:55:37'),
(1398, 45, 290, NULL, '2020-04-23 18:30:00', 0, '2020-01-15 05:56:06', '2020-01-15 05:56:06');
INSERT INTO `completed_training_programs` (`id`, `program_id`, `week_wise_workout_id`, `exercise`, `date`, `is_complete`, `created_at`, `updated_at`) VALUES
(1399, 45, 289, NULL, '2020-04-25 18:30:00', 0, '2020-01-15 05:56:10', '2020-01-15 05:56:10'),
(1400, 45, 291, NULL, '2020-04-26 18:30:00', 0, '2020-01-15 05:56:16', '2020-01-15 05:56:16'),
(1401, 45, 293, NULL, '2020-04-28 18:30:00', 0, '2020-01-15 05:56:22', '2020-01-15 05:56:22'),
(1402, 45, 292, NULL, '2020-04-29 18:30:00', 0, '2020-01-15 05:56:27', '2020-01-15 05:56:27'),
(1403, 45, 293, NULL, '2020-04-30 18:30:00', 0, '2020-01-15 05:56:55', '2020-01-15 05:56:55'),
(1404, 45, 294, NULL, '2020-05-03 18:30:00', 0, '2020-01-15 05:57:06', '2020-01-15 05:57:06'),
(1405, 45, 297, NULL, '2020-05-05 18:30:00', 0, '2020-01-15 05:57:14', '2020-01-15 05:57:14'),
(1406, 45, 295, NULL, '2020-05-06 18:30:00', 0, '2020-01-15 05:57:18', '2020-01-15 05:57:18'),
(1407, 45, 297, NULL, '2020-05-07 18:30:00', 0, '2020-01-15 05:57:24', '2020-01-15 05:57:24'),
(1408, 45, 296, NULL, '2020-05-09 18:30:00', 0, '2020-01-15 05:57:31', '2020-01-15 05:57:31'),
(1409, 45, 298, NULL, '2020-05-10 18:30:00', 0, '2020-01-15 05:57:41', '2020-01-15 05:57:41'),
(1410, 45, 301, NULL, '2020-05-12 18:30:00', 0, '2020-01-15 05:57:48', '2020-01-15 05:57:48'),
(1411, 45, 299, NULL, '2020-05-13 18:30:00', 0, '2020-01-15 05:57:53', '2020-01-15 05:57:53'),
(1412, 45, 301, NULL, '2020-05-14 18:30:00', 0, '2020-01-15 05:57:59', '2020-01-15 05:57:59'),
(1413, 45, 300, NULL, '2020-05-16 18:30:00', 0, '2020-01-15 05:58:04', '2020-01-15 05:58:04'),
(1414, 45, 302, NULL, '2020-05-17 18:30:00', 0, '2020-01-15 05:58:12', '2020-01-15 05:58:12'),
(1415, 45, 305, NULL, '2020-05-19 18:30:00', 0, '2020-01-15 05:58:22', '2020-01-15 05:58:22'),
(1416, 45, 303, NULL, '2020-05-20 18:30:00', 0, '2020-01-15 05:58:26', '2020-01-15 05:58:26'),
(1417, 45, 305, NULL, '2020-05-21 18:30:00', 0, '2020-01-15 05:58:31', '2020-01-15 05:58:31'),
(1418, 45, 304, NULL, '2020-05-23 18:30:00', 0, '2020-01-15 05:58:35', '2020-01-15 05:58:35'),
(1419, 45, 306, '[{"common_programs_weeks_lap_id":"1812","is_complete":true,"completed_time":2,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1813","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1814","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1815","is_complete":true,"completed_time":1,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1816","is_complete":true,"completed_time":1,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1817","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1818","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1819","is_complete":true,"completed_time":2,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1820","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1821","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1822","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1823","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1824","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1825","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1826","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1827","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1828","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1829","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1830","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1831","is_complete":true,"completed_time":1,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-05-24 18:30:00', 0, '2020-01-15 05:58:39', '2020-01-16 11:28:55'),
(1420, 45, 309, NULL, '2020-05-26 18:30:00', 0, '2020-01-15 05:58:46', '2020-01-15 05:58:46'),
(1421, 45, 307, NULL, '2020-05-27 18:30:00', 0, '2020-01-15 05:58:50', '2020-01-15 05:58:50'),
(1422, 45, 309, '[{"common_programs_weeks_lap_id":"1841","is_complete":true,"completed_time":22,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-05-28 18:30:00', 1, '2020-01-15 05:58:57', '2020-01-16 11:30:37'),
(1423, 45, 308, '[{"common_programs_weeks_lap_id":"1838","is_complete":true,"completed_time":3,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-05-30 18:30:00', 0, '2020-01-15 05:59:01', '2020-01-16 11:52:29'),
(1424, 45, 310, '[{"common_programs_weeks_lap_id":"1842","is_complete":true,"completed_time":6,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-05-31 18:30:00', 1, '2020-01-15 05:59:16', '2020-01-16 11:53:37'),
(1425, 45, 312, NULL, '2020-06-02 18:30:00', 0, '2020-01-15 05:59:22', '2020-01-15 05:59:22'),
(1426, 45, 311, NULL, '2020-06-03 18:30:00', 0, '2020-01-15 05:59:27', '2020-01-15 05:59:27'),
(1427, 45, 312, '[{"common_programs_weeks_lap_id":"1879","is_complete":true,"completed_time":8,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-06-04 18:30:00', 1, '2020-01-15 05:59:38', '2020-01-16 11:58:51'),
(1428, 45, 313, NULL, '2020-06-07 18:30:00', 0, '2020-01-15 05:59:44', '2020-01-15 05:59:44'),
(1429, 45, 315, NULL, '2020-06-09 18:30:00', 0, '2020-01-15 05:59:50', '2020-01-15 05:59:50'),
(1430, 45, 314, NULL, '2020-06-10 18:30:00', 0, '2020-01-15 05:59:54', '2020-01-15 05:59:54'),
(1431, 45, 315, NULL, '2020-06-11 18:30:00', 0, '2020-01-15 06:00:04', '2020-01-15 06:00:04'),
(1432, 45, 316, '[{"common_programs_weeks_lap_id":"1889","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-06-14 18:30:00', 0, '2020-01-15 06:00:12', '2020-01-16 12:17:29'),
(1433, 45, 318, NULL, '2020-06-16 18:30:00', 0, '2020-01-15 06:00:18', '2020-01-15 06:00:18'),
(1434, 45, 317, NULL, '2020-06-17 18:30:00', 0, '2020-01-15 06:00:22', '2020-01-15 06:00:22'),
(1435, 45, 318, NULL, '2020-06-18 18:30:00', 0, '2020-01-15 06:00:32', '2020-01-15 06:00:32'),
(1436, 45, 319, '[{"common_programs_weeks_lap_id":"1908","is_complete":true,"completed_time":0,"updated_text":"01:15:00","updated_rest":"","updated_percentage":""}]', '2020-06-21 18:30:00', 1, '2020-01-15 06:00:46', '2020-01-16 09:40:28'),
(1437, 45, 320, NULL, '2020-06-22 18:30:00', 0, '2020-01-15 06:01:03', '2020-01-15 06:01:03'),
(1438, 45, 321, '[{"common_programs_weeks_lap_id":"1915","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1916","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1917","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1918","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1919","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""},{"common_programs_weeks_lap_id":"1920","is_complete":true,"completed_time":0,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-06-23 18:30:00', 1, '2020-01-15 06:01:12', '2020-01-16 08:47:36'),
(1439, 45, 322, NULL, '2020-06-24 18:30:00', 0, '2020-01-15 06:01:18', '2020-01-15 06:01:18'),
(1440, 45, 323, NULL, '2020-06-25 18:30:00', 0, '2020-01-15 06:01:27', '2020-01-15 06:01:27'),
(1441, 45, 324, NULL, '2020-06-26 18:30:00', 0, '2020-01-15 06:01:34', '2020-01-15 06:01:34'),
(1442, 47, 182, NULL, '2021-01-14 18:30:00', 0, '2020-01-15 06:09:52', '2020-01-15 06:09:52'),
(1443, 47, 182, NULL, '2021-01-17 18:30:00', 0, '2020-01-15 06:10:10', '2020-01-15 06:10:10'),
(1444, 47, 182, NULL, '2021-01-18 18:30:00', 0, '2020-01-15 06:10:14', '2020-01-15 06:10:14'),
(1445, 47, 182, NULL, '2021-01-19 18:30:00', 0, '2020-01-15 06:10:19', '2020-01-15 06:10:19'),
(1446, 47, 182, NULL, '2021-01-20 18:30:00', 0, '2020-01-15 06:10:23', '2020-01-15 06:10:23'),
(1447, 47, 182, NULL, '2021-01-21 18:30:00', 0, '2020-01-15 06:10:28', '2020-01-15 06:10:28'),
(1448, 47, 182, NULL, '2021-01-24 18:30:00', 0, '2020-01-15 06:10:57', '2020-01-15 06:10:57'),
(1449, 47, 182, NULL, '2021-01-25 18:30:00', 0, '2020-01-15 06:11:02', '2020-01-15 06:11:02'),
(1450, 47, 182, NULL, '2021-01-26 18:30:00', 0, '2020-01-15 06:11:06', '2020-01-15 06:11:06'),
(1451, 47, 182, NULL, '2021-01-27 18:30:00', 0, '2020-01-15 06:11:11', '2020-01-15 06:11:11'),
(1452, 47, 182, NULL, '2021-01-28 18:30:00', 0, '2020-01-15 06:11:18', '2020-01-15 06:11:18'),
(1453, 47, 182, NULL, '2021-01-31 18:30:00', 0, '2020-01-15 06:15:03', '2020-01-15 06:15:03'),
(1454, 47, 182, NULL, '2021-02-01 18:30:00', 0, '2020-01-15 06:15:26', '2020-01-15 06:15:26'),
(1455, 47, 182, NULL, '2021-02-02 18:30:00', 0, '2020-01-15 06:17:07', '2020-01-15 06:17:07'),
(1456, 47, 182, NULL, '2021-02-03 18:30:00', 0, '2020-01-15 06:17:12', '2020-01-15 06:17:12'),
(1457, 47, 182, NULL, '2021-02-04 18:30:00', 0, '2020-01-15 06:17:36', '2020-01-15 06:17:36'),
(1458, 47, 182, NULL, '2021-02-07 18:30:00', 0, '2020-01-15 06:17:42', '2020-01-15 06:17:42'),
(1459, 47, 182, NULL, '2021-02-08 18:30:00', 0, '2020-01-15 06:17:51', '2020-01-15 06:17:51'),
(1460, 47, 182, NULL, '2021-02-09 18:30:00', 0, '2020-01-15 06:17:55', '2020-01-15 06:17:55'),
(1461, 47, 182, NULL, '2021-02-10 18:30:00', 0, '2020-01-15 06:18:03', '2020-01-15 06:18:03'),
(1462, 47, 182, NULL, '2021-02-11 18:30:00', 0, '2020-01-15 06:18:08', '2020-01-15 06:18:08'),
(1463, 47, 182, NULL, '2021-02-14 18:30:00', 0, '2020-01-15 06:18:15', '2020-01-15 06:18:15'),
(1464, 47, 182, NULL, '2021-02-15 18:30:00', 0, '2020-01-15 06:18:48', '2020-01-15 06:18:48'),
(1465, 47, 182, NULL, '2021-02-16 18:30:00', 0, '2020-01-15 06:18:53', '2020-01-15 06:18:53'),
(1466, 47, 182, NULL, '2021-02-17 18:30:00', 0, '2020-01-15 06:19:01', '2020-01-15 06:19:01'),
(1467, 47, 182, NULL, '2021-02-18 18:30:00', 0, '2020-01-15 06:19:05', '2020-01-15 06:19:05'),
(1468, 47, 183, NULL, '2021-02-21 18:30:00', 0, '2020-01-15 06:19:09', '2020-01-15 06:19:09'),
(1469, 47, 187, NULL, '2021-02-22 18:30:00', 0, '2020-01-15 06:19:17', '2020-01-15 06:19:17'),
(1470, 47, 185, NULL, '2021-02-23 18:30:00', 0, '2020-01-15 06:19:25', '2020-01-15 06:19:25'),
(1471, 47, 187, NULL, '2021-02-24 18:30:00', 0, '2020-01-15 06:19:38', '2020-01-15 06:19:38'),
(1472, 47, 186, NULL, '2021-02-25 18:30:00', 0, '2020-01-15 06:19:42', '2020-01-15 06:19:42'),
(1473, 47, 188, NULL, '2021-02-28 18:30:00', 0, '2020-01-15 06:20:21', '2020-01-15 06:20:21'),
(1474, 47, 191, NULL, '2021-03-01 18:30:00', 0, '2020-01-15 06:20:30', '2020-01-15 06:20:30'),
(1475, 47, 189, NULL, '2021-03-02 18:30:00', 0, '2020-01-15 06:20:36', '2020-01-15 06:20:36'),
(1476, 47, 191, NULL, '2021-03-03 18:30:00', 0, '2020-01-15 06:20:43', '2020-01-15 06:20:43'),
(1477, 47, 190, NULL, '2021-03-04 18:30:00', 0, '2020-01-15 06:20:53', '2020-01-15 06:20:53'),
(1478, 47, 192, NULL, '2021-03-07 18:30:00', 0, '2020-01-15 06:21:00', '2020-01-15 06:21:00'),
(1479, 47, 195, NULL, '2021-03-08 18:30:00', 0, '2020-01-15 06:21:07', '2020-01-15 06:21:07'),
(1480, 47, 193, NULL, '2021-03-09 18:30:00', 0, '2020-01-15 06:21:11', '2020-01-15 06:21:11'),
(1481, 47, 195, NULL, '2021-03-10 18:30:00', 0, '2020-01-15 06:21:36', '2020-01-15 06:21:36'),
(1482, 47, 194, NULL, '2021-03-11 18:30:00', 0, '2020-01-15 06:21:42', '2020-01-15 06:21:42'),
(1483, 47, 196, NULL, '2021-03-14 18:30:00', 0, '2020-01-15 06:21:49', '2020-01-15 06:21:49'),
(1484, 47, 199, NULL, '2021-03-15 18:30:00', 0, '2020-01-15 06:22:00', '2020-01-15 06:22:00'),
(1485, 47, 197, NULL, '2021-03-16 18:30:00', 0, '2020-01-15 06:22:18', '2020-01-15 06:22:18'),
(1486, 47, 198, NULL, '2021-03-17 18:30:00', 0, '2020-01-15 06:22:49', '2020-01-15 06:22:49'),
(1487, 47, 200, NULL, '2021-03-21 18:30:00', 0, '2020-01-15 06:22:55', '2020-01-15 06:22:55'),
(1488, 47, 203, NULL, '2021-03-22 18:30:00', 0, '2020-01-15 06:23:02', '2020-01-15 06:23:02'),
(1489, 47, 201, NULL, '2021-03-23 18:30:00', 0, '2020-01-15 06:23:07', '2020-01-15 06:23:07'),
(1490, 47, 203, NULL, '2021-03-24 18:30:00', 0, '2020-01-15 06:23:14', '2020-01-15 06:23:14'),
(1491, 47, 202, NULL, '2021-03-25 18:30:00', 0, '2020-01-15 06:23:27', '2020-01-15 06:23:27'),
(1492, 47, 204, NULL, '2021-03-28 18:30:00', 0, '2020-01-15 06:23:38', '2020-01-15 06:23:38'),
(1493, 47, 207, NULL, '2021-03-29 18:30:00', 0, '2020-01-15 06:23:47', '2020-01-15 06:23:47'),
(1494, 47, 205, NULL, '2021-03-30 18:30:00', 0, '2020-01-15 06:24:02', '2020-01-15 06:24:02'),
(1495, 47, 207, NULL, '2021-03-31 18:30:00', 0, '2020-01-15 06:24:28', '2020-01-15 06:24:28'),
(1496, 47, 206, NULL, '2021-04-01 18:30:00', 0, '2020-01-15 06:24:34', '2020-01-15 06:24:34'),
(1497, 47, 208, NULL, '2021-04-04 18:30:00', 0, '2020-01-15 06:24:39', '2020-01-15 06:24:39'),
(1498, 47, 211, NULL, '2021-04-05 18:30:00', 0, '2020-01-15 06:24:48', '2020-01-15 06:24:48'),
(1499, 47, 209, NULL, '2021-04-06 18:30:00', 0, '2020-01-15 06:24:52', '2020-01-15 06:24:52'),
(1500, 47, 211, NULL, '2021-04-07 18:30:00', 0, '2020-01-15 06:25:08', '2020-01-15 06:25:08'),
(1501, 47, 210, NULL, '2021-04-08 18:30:00', 0, '2020-01-15 06:25:15', '2020-01-15 06:25:15'),
(1502, 47, 212, NULL, '2021-04-11 18:30:00', 0, '2020-01-15 06:25:28', '2020-01-15 06:25:28'),
(1503, 47, 215, NULL, '2021-04-12 18:30:00', 0, '2020-01-15 06:25:36', '2020-01-15 06:25:36'),
(1504, 47, 213, NULL, '2021-04-13 18:30:00', 0, '2020-01-15 06:25:44', '2020-01-15 06:25:44'),
(1505, 47, 215, NULL, '2021-04-14 18:30:00', 0, '2020-01-15 06:25:50', '2020-01-15 06:25:50'),
(1506, 47, 214, NULL, '2021-04-15 18:30:00', 0, '2020-01-15 06:25:56', '2020-01-15 06:25:56'),
(1507, 47, 216, NULL, '2021-04-18 18:30:00', 0, '2020-01-15 06:26:04', '2020-01-15 06:26:04'),
(1508, 47, 219, NULL, '2021-04-19 18:30:00', 0, '2020-01-15 06:26:11', '2020-01-15 06:26:11'),
(1509, 47, 217, NULL, '2021-04-20 18:30:00', 0, '2020-01-15 06:26:17', '2020-01-15 06:26:17'),
(1510, 47, 219, NULL, '2021-04-21 18:30:00', 0, '2020-01-15 06:26:23', '2020-01-15 06:26:23'),
(1511, 47, 218, NULL, '2021-04-22 18:30:00', 0, '2020-01-15 06:26:28', '2020-01-15 06:26:28'),
(1512, 47, 220, NULL, '2021-04-25 18:30:00', 0, '2020-01-15 06:26:34', '2020-01-15 06:26:34'),
(1513, 47, 223, NULL, '2021-04-26 18:30:00', 0, '2020-01-15 06:26:43', '2020-01-15 06:26:43'),
(1514, 47, 221, NULL, '2021-04-27 18:30:00', 0, '2020-01-15 06:26:51', '2020-01-15 06:26:51'),
(1515, 47, 223, NULL, '2021-04-28 18:30:00', 0, '2020-01-15 06:26:57', '2020-01-15 06:26:57'),
(1516, 47, 222, NULL, '2021-04-29 18:30:00', 0, '2020-01-15 06:27:03', '2020-01-15 06:27:03'),
(1517, 47, 224, NULL, '2021-05-02 18:30:00', 0, '2020-01-15 06:27:19', '2020-01-15 06:27:19'),
(1518, 47, 227, NULL, '2021-05-03 18:30:00', 0, '2020-01-15 06:27:25', '2020-01-15 06:27:25'),
(1519, 47, 225, NULL, '2021-05-04 18:30:00', 0, '2020-01-15 06:27:34', '2020-01-15 06:27:34'),
(1520, 47, 227, NULL, '2021-05-05 18:30:00', 0, '2020-01-15 06:27:42', '2020-01-15 06:27:42'),
(1521, 47, 226, NULL, '2021-05-06 18:30:00', 0, '2020-01-15 06:27:47', '2020-01-15 06:27:47'),
(1522, 47, 228, NULL, '2021-05-09 18:30:00', 0, '2020-01-15 06:28:04', '2020-01-15 06:28:04'),
(1523, 47, 231, NULL, '2021-05-10 18:30:00', 0, '2020-01-15 06:28:10', '2020-01-15 06:28:10'),
(1524, 47, 229, NULL, '2021-05-11 18:30:00', 0, '2020-01-15 06:28:17', '2020-01-15 06:28:17'),
(1525, 47, 231, NULL, '2021-05-12 18:30:00', 0, '2020-01-15 06:28:29', '2020-01-15 06:28:29'),
(1526, 47, 230, NULL, '2021-05-13 18:30:00', 0, '2020-01-15 06:28:44', '2020-01-15 06:28:44'),
(1527, 47, 232, NULL, '2021-05-16 18:30:00', 0, '2020-01-15 06:28:54', '2020-01-15 06:28:54'),
(1528, 47, 235, NULL, '2021-05-17 18:30:00', 0, '2020-01-15 06:29:06', '2020-01-15 06:29:06'),
(1529, 47, 233, NULL, '2021-05-18 18:30:00', 0, '2020-01-15 06:29:11', '2020-01-15 06:29:11'),
(1530, 47, 235, NULL, '2021-05-19 18:30:00', 0, '2020-01-15 06:29:18', '2020-01-15 06:29:18'),
(1531, 47, 234, NULL, '2021-05-20 18:30:00', 0, '2020-01-15 06:29:23', '2020-01-15 06:29:23'),
(1532, 47, 236, NULL, '2021-05-23 18:30:00', 0, '2020-01-15 06:29:32', '2020-01-15 06:29:32'),
(1533, 47, 239, NULL, '2021-05-24 18:30:00', 0, '2020-01-15 06:29:40', '2020-01-15 06:29:40'),
(1534, 47, 237, NULL, '2021-05-25 18:30:00', 0, '2020-01-15 06:29:47', '2020-01-15 06:29:47'),
(1535, 47, 239, NULL, '2021-05-26 18:30:00', 0, '2020-01-15 06:29:55', '2020-01-15 06:29:55'),
(1536, 47, 238, NULL, '2021-05-27 18:30:00', 0, '2020-01-15 06:30:01', '2020-01-15 06:30:01'),
(1537, 47, 240, NULL, '2021-05-30 18:30:00', 0, '2020-01-15 06:30:09', '2020-01-15 06:30:09'),
(1538, 47, 243, NULL, '2021-05-31 18:30:00', 0, '2020-01-15 06:30:32', '2020-01-15 06:30:32'),
(1539, 47, 241, NULL, '2021-06-01 18:30:00', 0, '2020-01-15 06:30:40', '2020-01-15 06:30:40'),
(1540, 47, 243, NULL, '2021-06-02 18:30:00', 0, '2020-01-15 06:31:15', '2020-01-15 06:31:15'),
(1541, 47, 242, NULL, '2021-06-03 18:30:00', 0, '2020-01-15 06:31:20', '2020-01-15 06:31:20'),
(1542, 47, 244, NULL, '2021-06-06 18:30:00', 0, '2020-01-15 06:31:26', '2020-01-15 06:31:26'),
(1543, 47, 246, NULL, '2021-06-07 18:30:00', 0, '2020-01-15 06:31:35', '2020-01-15 06:31:35'),
(1544, 47, 245, NULL, '2021-06-08 18:30:00', 0, '2020-01-15 06:31:41', '2020-01-15 06:31:41'),
(1545, 47, 246, NULL, '2021-06-09 18:30:00', 0, '2020-01-15 06:31:48', '2020-01-15 06:31:48'),
(1546, 47, 247, NULL, '2021-06-13 18:30:00', 0, '2020-01-15 06:31:56', '2020-01-15 06:31:56'),
(1547, 47, 250, NULL, '2021-06-14 18:30:00', 0, '2020-01-15 06:32:03', '2020-01-15 06:32:03'),
(1548, 47, 248, NULL, '2021-06-15 18:30:00', 0, '2020-01-15 06:32:16', '2020-01-15 06:32:16'),
(1549, 47, 250, NULL, '2021-06-16 18:30:00', 0, '2020-01-15 06:32:25', '2020-01-15 06:32:25'),
(1550, 47, 249, NULL, '2021-06-17 18:30:00', 0, '2020-01-15 06:32:39', '2020-01-15 06:32:39'),
(1551, 47, 251, NULL, '2021-06-20 18:30:00', 0, '2020-01-15 06:32:44', '2020-01-15 06:32:44'),
(1552, 47, 253, NULL, '2021-06-21 18:30:00', 0, '2020-01-15 06:32:52', '2020-01-15 06:32:52'),
(1553, 47, 252, NULL, '2021-06-22 18:30:00', 0, '2020-01-15 06:32:58', '2020-01-15 06:32:58'),
(1554, 48, 107, NULL, '2021-12-31 18:30:00', 0, '2020-01-15 06:38:52', '2020-01-15 06:38:52'),
(1555, 48, 107, NULL, '2022-01-03 18:30:00', 0, '2020-01-15 06:39:28', '2020-01-15 06:39:28'),
(1556, 48, 107, NULL, '2022-01-04 18:30:00', 0, '2020-01-15 06:39:37', '2020-01-15 06:39:37'),
(1557, 48, 107, NULL, '2022-01-05 18:30:00', 0, '2020-01-15 06:39:44', '2020-01-15 06:39:44'),
(1558, 48, 107, NULL, '2022-01-06 18:30:00', 0, '2020-01-15 06:40:01', '2020-01-15 06:40:01'),
(1559, 48, 107, NULL, '2022-01-07 18:30:00', 0, '2020-01-15 06:40:09', '2020-01-15 06:40:09'),
(1560, 48, 107, NULL, '2022-01-10 18:30:00', 0, '2020-01-15 06:40:17', '2020-01-15 06:40:17'),
(1561, 48, 107, NULL, '2022-01-11 18:30:00', 0, '2020-01-15 06:40:26', '2020-01-15 06:40:26'),
(1562, 48, 107, NULL, '2022-01-12 18:30:00', 0, '2020-01-15 06:40:38', '2020-01-15 06:40:38'),
(1563, 48, 107, NULL, '2022-01-13 18:30:00', 0, '2020-01-15 06:40:43', '2020-01-15 06:40:43'),
(1564, 48, 107, NULL, '2022-01-14 18:30:00', 0, '2020-01-15 06:40:51', '2020-01-15 06:40:51'),
(1565, 48, 107, NULL, '2022-01-17 18:30:00', 0, '2020-01-15 06:40:57', '2020-01-15 06:40:57'),
(1566, 48, 107, NULL, '2022-01-18 18:30:00', 0, '2020-01-15 06:41:04', '2020-01-15 06:41:04'),
(1567, 48, 107, NULL, '2022-01-19 18:30:00', 0, '2020-01-15 06:41:09', '2020-01-15 06:41:09'),
(1568, 48, 107, NULL, '2022-01-20 18:30:00', 0, '2020-01-15 06:41:13', '2020-01-15 06:41:13'),
(1569, 48, 107, NULL, '2022-01-21 18:30:00', 0, '2020-01-15 06:41:20', '2020-01-15 06:41:20'),
(1570, 48, 107, NULL, '2022-01-24 18:30:00', 0, '2020-01-15 06:41:26', '2020-01-15 06:41:26'),
(1571, 48, 107, NULL, '2022-01-25 18:30:00', 0, '2020-01-15 06:41:32', '2020-01-15 06:41:32'),
(1572, 48, 107, NULL, '2022-01-26 18:30:00', 0, '2020-01-15 06:41:38', '2020-01-15 06:41:38'),
(1573, 48, 107, NULL, '2022-01-27 18:30:00', 0, '2020-01-15 06:41:45', '2020-01-15 06:41:45'),
(1574, 48, 107, NULL, '2022-01-28 18:30:00', 0, '2020-01-15 06:41:51', '2020-01-15 06:41:51'),
(1575, 48, 107, NULL, '2022-01-31 18:30:00', 0, '2020-01-15 06:42:04', '2020-01-15 06:42:04'),
(1576, 48, 107, NULL, '2022-02-01 18:30:00', 0, '2020-01-15 06:42:40', '2020-01-15 06:42:40'),
(1577, 48, 107, NULL, '2022-02-02 18:30:00', 0, '2020-01-15 06:42:46', '2020-01-15 06:42:46'),
(1578, 48, 107, NULL, '2022-02-03 18:30:00', 0, '2020-01-15 06:42:52', '2020-01-15 06:42:52'),
(1579, 48, 107, NULL, '2022-02-04 18:30:00', 0, '2020-01-15 06:43:02', '2020-01-15 06:43:02'),
(1580, 48, 108, NULL, '2022-02-06 18:30:00', 0, '2020-01-15 06:43:09', '2020-01-15 06:43:09'),
(1581, 48, 111, NULL, '2022-02-07 18:30:00', 0, '2020-01-15 06:43:18', '2020-01-15 06:43:18'),
(1582, 48, 109, NULL, '2022-02-08 18:30:00', 0, '2020-01-15 06:43:24', '2020-01-15 06:43:24'),
(1583, 48, 111, NULL, '2022-02-09 18:30:00', 0, '2020-01-15 06:43:40', '2020-01-15 06:43:40'),
(1584, 48, 110, NULL, '2022-02-10 18:30:00', 0, '2020-01-15 06:43:46', '2020-01-15 06:43:46'),
(1585, 48, 111, NULL, '2022-02-11 18:30:00', 0, '2020-01-15 06:43:56', '2020-01-15 06:43:56'),
(1586, 48, 112, NULL, '2022-02-13 18:30:00', 0, '2020-01-15 06:44:02', '2020-01-15 06:44:02'),
(1587, 48, 115, NULL, '2022-02-14 18:30:00', 0, '2020-01-15 06:44:12', '2020-01-15 06:44:12'),
(1588, 48, 113, NULL, '2022-02-15 18:30:00', 0, '2020-01-15 06:44:18', '2020-01-15 06:44:18'),
(1589, 48, 115, NULL, '2022-02-16 18:30:00', 0, '2020-01-15 06:44:24', '2020-01-15 06:44:24'),
(1590, 48, 114, NULL, '2022-02-17 18:30:00', 0, '2020-01-15 06:44:32', '2020-01-15 06:44:32'),
(1591, 48, 115, NULL, '2022-02-18 18:30:00', 0, '2020-01-15 06:44:46', '2020-01-15 06:44:46'),
(1592, 48, 116, NULL, '2022-02-20 18:30:00', 0, '2020-01-15 06:44:52', '2020-01-15 06:44:52'),
(1593, 48, 119, NULL, '2022-02-21 18:30:00', 0, '2020-01-15 06:45:00', '2020-01-15 06:45:00'),
(1594, 48, 117, NULL, '2022-02-22 18:30:00', 0, '2020-01-15 06:45:08', '2020-01-15 06:45:08'),
(1595, 48, 119, NULL, '2022-02-23 18:30:00', 0, '2020-01-15 06:45:14', '2020-01-15 06:45:14'),
(1596, 48, 118, NULL, '2022-02-24 18:30:00', 0, '2020-01-15 06:45:23', '2020-01-15 06:45:23'),
(1597, 48, 119, NULL, '2022-02-25 18:30:00', 0, '2020-01-15 06:45:29', '2020-01-15 06:45:29'),
(1598, 48, 120, NULL, '2022-02-27 18:30:00', 0, '2020-01-15 06:45:43', '2020-01-15 06:45:43'),
(1599, 48, 123, NULL, '2022-02-28 18:30:00', 0, '2020-01-15 06:46:00', '2020-01-15 06:46:00'),
(1600, 48, 121, NULL, '2022-03-01 18:30:00', 0, '2020-01-15 06:46:10', '2020-01-15 06:46:10'),
(1601, 48, 123, NULL, '2022-03-02 18:30:00', 0, '2020-01-15 06:46:16', '2020-01-15 06:46:16'),
(1602, 48, 122, NULL, '2022-03-03 18:30:00', 0, '2020-01-15 06:46:47', '2020-01-15 06:46:47'),
(1603, 48, 124, NULL, '2022-03-06 18:30:00', 0, '2020-01-15 06:46:56', '2020-01-15 06:46:56'),
(1604, 48, 127, NULL, '2022-03-07 18:30:00', 0, '2020-01-15 06:47:05', '2020-01-15 06:47:05'),
(1605, 48, 125, NULL, '2022-03-08 18:30:00', 0, '2020-01-15 06:49:16', '2020-01-15 06:49:16'),
(1606, 48, 127, NULL, '2022-03-09 18:30:00', 0, '2020-01-15 06:49:35', '2020-01-15 06:49:35'),
(1607, 48, 126, NULL, '2022-03-10 18:30:00', 0, '2020-01-15 06:49:41', '2020-01-15 06:49:41'),
(1608, 48, 127, NULL, '2022-03-11 18:30:00', 0, '2020-01-15 06:50:08', '2020-01-15 06:50:08'),
(1609, 48, 128, NULL, '2022-03-13 18:30:00', 0, '2020-01-15 06:50:16', '2020-01-15 06:50:16'),
(1610, 48, 131, NULL, '2022-03-14 18:30:00', 0, '2020-01-15 06:50:51', '2020-01-15 06:50:51'),
(1611, 48, 129, NULL, '2022-03-15 18:30:00', 0, '2020-01-15 06:50:59', '2020-01-15 06:50:59'),
(1612, 48, 131, NULL, '2022-03-16 18:30:00', 0, '2020-01-15 06:51:12', '2020-01-15 06:51:12'),
(1613, 48, 130, NULL, '2022-03-17 18:30:00', 0, '2020-01-15 06:51:21', '2020-01-15 06:51:21'),
(1614, 48, 131, NULL, '2022-03-18 18:30:00', 0, '2020-01-15 06:51:28', '2020-01-15 06:51:28'),
(1615, 48, 132, NULL, '2022-03-20 18:30:00', 0, '2020-01-15 06:51:37', '2020-01-15 06:51:37'),
(1616, 48, 135, NULL, '2022-03-21 18:30:00', 0, '2020-01-15 06:51:47', '2020-01-15 06:51:47'),
(1617, 48, 133, NULL, '2022-03-22 18:30:00', 0, '2020-01-15 06:51:53', '2020-01-15 06:51:53'),
(1618, 48, 135, NULL, '2022-03-23 18:30:00', 0, '2020-01-15 06:52:01', '2020-01-15 06:52:01'),
(1619, 48, 134, NULL, '2022-03-24 18:30:00', 0, '2020-01-15 06:52:07', '2020-01-15 06:52:07'),
(1620, 48, 135, NULL, '2022-03-25 18:30:00', 0, '2020-01-15 06:52:16', '2020-01-15 06:52:16'),
(1621, 48, 136, NULL, '2022-03-27 18:30:00', 0, '2020-01-15 06:52:27', '2020-01-15 06:52:27'),
(1622, 48, 139, NULL, '2022-03-28 18:30:00', 0, '2020-01-15 06:52:35', '2020-01-15 06:52:35'),
(1623, 48, 137, NULL, '2022-03-29 18:30:00', 0, '2020-01-15 06:52:46', '2020-01-15 06:52:46'),
(1624, 48, 139, NULL, '2022-03-30 18:30:00', 0, '2020-01-15 06:52:53', '2020-01-15 06:52:53'),
(1625, 48, 138, NULL, '2022-03-31 18:30:00', 0, '2020-01-15 06:53:14', '2020-01-15 06:53:14'),
(1626, 48, 139, NULL, '2022-04-01 18:30:00', 0, '2020-01-15 06:53:25', '2020-01-15 06:53:25'),
(1627, 48, 140, NULL, '2022-04-03 18:30:00', 0, '2020-01-15 06:53:33', '2020-01-15 06:53:33'),
(1628, 48, 143, NULL, '2022-04-04 18:30:00', 0, '2020-01-15 06:53:46', '2020-01-15 06:53:46'),
(1629, 48, 141, NULL, '2022-04-05 18:30:00', 0, '2020-01-15 06:53:53', '2020-01-15 06:53:53'),
(1630, 48, 143, NULL, '2022-04-06 18:30:00', 0, '2020-01-15 06:54:03', '2020-01-15 06:54:03'),
(1631, 48, 142, NULL, '2022-04-07 18:30:00', 0, '2020-01-15 06:54:11', '2020-01-15 06:54:11'),
(1632, 48, 143, NULL, '2022-04-08 18:30:00', 0, '2020-01-15 06:54:19', '2020-01-15 06:54:19'),
(1633, 48, 144, NULL, '2022-04-10 18:30:00', 0, '2020-01-15 06:54:27', '2020-01-15 06:54:27'),
(1634, 48, 147, NULL, '2022-04-11 18:30:00', 0, '2020-01-15 06:54:38', '2020-01-15 06:54:38'),
(1635, 48, 145, NULL, '2022-04-12 18:30:00', 0, '2020-01-15 06:54:45', '2020-01-15 06:54:45'),
(1636, 48, 147, NULL, '2022-04-13 18:30:00', 0, '2020-01-15 06:55:02', '2020-01-15 06:55:02'),
(1637, 48, 146, NULL, '2022-04-14 18:30:00', 0, '2020-01-15 06:55:09', '2020-01-15 06:55:09'),
(1638, 48, 147, NULL, '2022-04-15 18:30:00', 0, '2020-01-15 06:55:20', '2020-01-15 06:55:20'),
(1639, 48, 148, NULL, '2022-04-17 18:30:00', 0, '2020-01-15 06:55:28', '2020-01-15 06:55:28'),
(1640, 48, 151, NULL, '2022-04-18 18:30:00', 0, '2020-01-15 06:55:39', '2020-01-15 06:55:39'),
(1641, 48, 149, NULL, '2022-04-19 18:30:00', 0, '2020-01-15 06:55:46', '2020-01-15 06:55:46'),
(1642, 48, 151, NULL, '2022-04-20 18:30:00', 0, '2020-01-15 06:55:52', '2020-01-15 06:55:52'),
(1643, 48, 150, NULL, '2022-04-21 18:30:00', 0, '2020-01-15 06:56:04', '2020-01-15 06:56:04'),
(1644, 48, 151, NULL, '2022-04-22 18:30:00', 0, '2020-01-15 06:56:13', '2020-01-15 06:56:13'),
(1645, 48, 152, NULL, '2022-04-24 18:30:00', 0, '2020-01-15 07:02:21', '2020-01-15 07:02:21'),
(1646, 48, 155, NULL, '2022-04-25 18:30:00', 0, '2020-01-15 07:02:38', '2020-01-15 07:02:38'),
(1647, 48, 153, NULL, '2022-04-26 18:30:00', 0, '2020-01-15 07:02:47', '2020-01-15 07:02:47'),
(1648, 48, 155, NULL, '2022-04-27 18:30:00', 0, '2020-01-15 07:02:57', '2020-01-15 07:02:57'),
(1649, 48, 154, NULL, '2022-04-28 18:30:00', 0, '2020-01-15 07:03:05', '2020-01-15 07:03:05'),
(1650, 48, 155, NULL, '2022-04-29 18:30:00', 0, '2020-01-15 07:03:12', '2020-01-15 07:03:12'),
(1651, 48, 156, NULL, '2022-05-01 18:30:00', 0, '2020-01-15 07:03:30', '2020-01-15 07:03:30'),
(1652, 48, 159, NULL, '2022-05-02 18:30:00', 0, '2020-01-15 07:03:44', '2020-01-15 07:03:44'),
(1653, 48, 157, NULL, '2022-05-03 18:30:00', 0, '2020-01-15 07:04:40', '2020-01-15 07:04:40'),
(1654, 48, 159, NULL, '2022-05-04 18:30:00', 0, '2020-01-15 07:04:52', '2020-01-15 07:04:52'),
(1655, 48, 158, NULL, '2022-05-05 18:30:00', 0, '2020-01-15 07:04:57', '2020-01-15 07:04:57'),
(1656, 48, 159, NULL, '2022-05-06 18:30:00', 0, '2020-01-15 07:05:19', '2020-01-15 07:05:19'),
(1657, 48, 160, NULL, '2022-05-08 18:30:00', 0, '2020-01-15 07:05:29', '2020-01-15 07:05:29'),
(1658, 48, 163, NULL, '2022-05-09 18:30:00', 0, '2020-01-15 07:05:37', '2020-01-15 07:05:37'),
(1659, 48, 161, NULL, '2022-05-10 18:30:00', 0, '2020-01-15 07:05:43', '2020-01-15 07:05:43'),
(1660, 48, 163, NULL, '2022-05-11 18:30:00', 0, '2020-01-15 07:05:49', '2020-01-15 07:05:49'),
(1661, 48, 162, NULL, '2022-05-12 18:30:00', 0, '2020-01-15 07:05:58', '2020-01-15 07:05:58'),
(1662, 48, 163, NULL, '2022-05-13 18:30:00', 0, '2020-01-15 07:06:06', '2020-01-15 07:06:06'),
(1663, 48, 164, NULL, '2022-05-15 18:30:00', 0, '2020-01-15 07:06:26', '2020-01-15 07:06:26'),
(1664, 48, 167, NULL, '2022-05-16 18:30:00', 0, '2020-01-15 07:06:33', '2020-01-15 07:06:33'),
(1665, 48, 165, NULL, '2022-05-17 18:30:00', 0, '2020-01-15 07:06:51', '2020-01-15 07:06:51'),
(1666, 48, 167, NULL, '2022-05-18 18:30:00', 0, '2020-01-15 07:06:58', '2020-01-15 07:06:58'),
(1667, 48, 166, NULL, '2022-05-19 18:30:00', 0, '2020-01-15 07:07:07', '2020-01-15 07:07:07'),
(1668, 48, 167, NULL, '2022-05-20 18:30:00', 0, '2020-01-15 07:07:13', '2020-01-15 07:07:13'),
(1669, 48, 168, NULL, '2022-05-22 18:30:00', 0, '2020-01-15 07:07:28', '2020-01-15 07:07:28'),
(1670, 48, 171, NULL, '2022-05-23 18:30:00', 0, '2020-01-15 07:07:40', '2020-01-15 07:07:40'),
(1671, 48, 169, NULL, '2022-05-24 18:30:00', 0, '2020-01-15 07:07:48', '2020-01-15 07:07:48'),
(1672, 48, 171, NULL, '2022-05-25 18:30:00', 0, '2020-01-15 07:07:55', '2020-01-15 07:07:55'),
(1673, 48, 170, NULL, '2022-05-26 18:30:00', 0, '2020-01-15 07:08:02', '2020-01-15 07:08:02'),
(1674, 48, 171, NULL, '2022-05-27 18:30:00', 0, '2020-01-15 07:08:11', '2020-01-15 07:08:11'),
(1675, 48, 172, NULL, '2022-05-29 18:30:00', 0, '2020-01-15 07:08:18', '2020-01-15 07:08:18'),
(1676, 48, 175, NULL, '2022-05-30 18:30:00', 0, '2020-01-15 07:08:25', '2020-01-15 07:08:25'),
(1677, 48, 173, NULL, '2022-05-31 18:30:00', 0, '2020-01-15 07:08:43', '2020-01-15 07:08:43'),
(1678, 48, 175, NULL, '2022-06-01 18:30:00', 0, '2020-01-15 07:08:57', '2020-01-15 07:08:57'),
(1679, 48, 174, NULL, '2022-06-02 18:30:00', 0, '2020-01-15 07:09:04', '2020-01-15 07:09:04'),
(1680, 48, 175, NULL, '2022-06-03 18:30:00', 0, '2020-01-15 07:09:15', '2020-01-15 07:09:15'),
(1681, 48, 177, NULL, '2022-06-05 18:30:00', 0, '2020-01-15 07:09:21', '2020-01-15 07:09:21'),
(1682, 48, 177, NULL, '2022-06-06 18:30:00', 0, '2020-01-15 07:09:31', '2020-01-15 07:09:31'),
(1683, 48, 176, NULL, '2022-06-07 18:30:00', 0, '2020-01-15 07:09:45', '2020-01-15 07:09:45'),
(1684, 48, 177, NULL, '2022-06-08 18:30:00', 0, '2020-01-15 07:09:57', '2020-01-15 07:09:57'),
(1685, 49, 79, NULL, '2022-06-30 18:30:00', 0, '2020-01-15 07:16:09', '2020-01-15 07:16:09'),
(1686, 49, 80, NULL, '2022-07-04 18:30:00', 0, '2020-01-15 07:20:07', '2020-01-15 07:20:07'),
(1687, 49, 80, NULL, '2022-07-05 18:30:00', 0, '2020-01-15 07:20:11', '2020-01-15 07:20:11'),
(1688, 49, 80, NULL, '2022-07-06 18:30:00', 0, '2020-01-15 07:20:15', '2020-01-15 07:20:15'),
(1689, 49, 80, NULL, '2022-07-07 18:30:00', 0, '2020-01-15 07:20:21', '2020-01-15 07:20:21'),
(1690, 49, 81, NULL, '2022-07-11 18:30:00', 0, '2020-01-15 07:20:26', '2020-01-15 07:20:26'),
(1691, 49, 81, NULL, '2022-07-12 18:30:00', 0, '2020-01-15 07:20:33', '2020-01-15 07:20:33'),
(1692, 49, 81, NULL, '2022-07-13 18:30:00', 0, '2020-01-15 07:20:37', '2020-01-15 07:20:37'),
(1693, 49, 81, NULL, '2022-07-14 18:30:00', 0, '2020-01-15 07:20:41', '2020-01-15 07:20:41'),
(1694, 49, 82, NULL, '2022-07-18 18:30:00', 0, '2020-01-15 07:20:45', '2020-01-15 07:20:45'),
(1695, 49, 82, NULL, '2022-07-19 18:30:00', 0, '2020-01-15 07:20:49', '2020-01-15 07:20:49'),
(1696, 49, 82, NULL, '2022-07-20 18:30:00', 0, '2020-01-15 07:20:55', '2020-01-15 07:20:55'),
(1697, 49, 82, NULL, '2022-07-21 18:30:00', 0, '2020-01-15 07:20:59', '2020-01-15 07:20:59'),
(1698, 49, 83, NULL, '2022-07-25 18:30:00', 0, '2020-01-15 07:21:05', '2020-01-15 07:21:05'),
(1699, 49, 83, NULL, '2022-07-26 18:30:00', 0, '2020-01-15 07:21:09', '2020-01-15 07:21:09'),
(1700, 49, 83, NULL, '2022-07-27 18:30:00', 0, '2020-01-15 07:21:19', '2020-01-15 07:21:19'),
(1701, 49, 83, NULL, '2022-07-28 18:30:00', 0, '2020-01-15 07:21:22', '2020-01-15 07:21:22'),
(1702, 49, 84, NULL, '2022-08-01 18:30:00', 0, '2020-01-15 07:21:32', '2020-01-15 07:21:32'),
(1703, 49, 84, NULL, '2022-08-02 18:30:00', 0, '2020-01-15 07:21:36', '2020-01-15 07:21:36'),
(1704, 49, 84, NULL, '2022-08-03 18:30:00', 0, '2020-01-15 07:21:42', '2020-01-15 07:21:42'),
(1705, 49, 84, NULL, '2022-08-04 18:30:00', 0, '2020-01-15 07:21:46', '2020-01-15 07:21:46'),
(1706, 49, 8, NULL, '2022-08-07 18:30:00', 0, '2020-01-15 07:21:52', '2020-01-15 07:21:52'),
(1707, 49, 14, NULL, '2022-08-08 18:30:00', 0, '2020-01-15 07:21:57', '2020-01-15 07:21:57'),
(1708, 49, 10, NULL, '2022-08-09 18:30:00', 0, '2020-01-15 07:22:01', '2020-01-15 07:22:01'),
(1709, 49, 14, NULL, '2022-08-10 18:30:00', 0, '2020-01-15 07:22:07', '2020-01-15 07:22:07'),
(1710, 49, 12, NULL, '2022-08-11 18:30:00', 0, '2020-01-15 07:22:11', '2020-01-15 07:22:11'),
(1711, 49, 16, NULL, '2022-08-14 18:30:00', 0, '2020-01-15 07:22:18', '2020-01-15 07:22:18'),
(1712, 49, 22, NULL, '2022-08-15 18:30:00', 0, '2020-01-15 07:22:23', '2020-01-15 07:22:23'),
(1713, 49, 18, NULL, '2022-08-16 18:30:00', 0, '2020-01-15 07:22:27', '2020-01-15 07:22:27'),
(1714, 49, 22, NULL, '2022-08-17 18:30:00', 0, '2020-01-15 07:22:32', '2020-01-15 07:22:32'),
(1715, 49, 20, NULL, '2022-08-18 18:30:00', 0, '2020-01-15 07:22:35', '2020-01-15 07:22:35'),
(1716, 49, 24, NULL, '2022-08-21 18:30:00', 0, '2020-01-15 07:22:40', '2020-01-15 07:22:40'),
(1717, 49, 30, NULL, '2022-08-22 18:30:00', 0, '2020-01-15 07:22:46', '2020-01-15 07:22:46'),
(1718, 49, 26, NULL, '2022-08-23 18:30:00', 0, '2020-01-15 07:22:51', '2020-01-15 07:22:51'),
(1719, 49, 30, NULL, '2022-08-24 18:30:00', 0, '2020-01-15 07:22:58', '2020-01-15 07:22:58'),
(1720, 49, 28, NULL, '2022-08-25 18:30:00', 0, '2020-01-15 07:23:01', '2020-01-15 07:23:01'),
(1721, 49, 32, NULL, '2022-08-28 18:30:00', 0, '2020-01-15 07:23:08', '2020-01-15 07:23:08'),
(1722, 49, 38, NULL, '2022-08-29 18:30:00', 0, '2020-01-15 07:23:13', '2020-01-15 07:23:13'),
(1723, 49, 34, NULL, '2022-08-30 18:30:00', 0, '2020-01-15 07:23:17', '2020-01-15 07:23:17'),
(1724, 49, 38, NULL, '2022-08-31 18:30:00', 0, '2020-01-15 07:23:24', '2020-01-15 07:23:24'),
(1725, 49, 36, NULL, '2022-09-01 18:30:00', 0, '2020-01-15 07:23:30', '2020-01-15 07:23:30'),
(1726, 49, 40, NULL, '2022-09-04 18:30:00', 0, '2020-01-15 07:23:35', '2020-01-15 07:23:35'),
(1727, 49, 46, NULL, '2022-09-05 18:30:00', 0, '2020-01-15 07:23:45', '2020-01-15 07:23:45'),
(1728, 49, 42, NULL, '2022-09-06 18:30:00', 0, '2020-01-15 07:23:48', '2020-01-15 07:23:48'),
(1729, 49, 46, NULL, '2022-09-07 18:30:00', 0, '2020-01-15 07:23:52', '2020-01-15 07:23:52'),
(1730, 49, 44, NULL, '2022-09-08 18:30:00', 0, '2020-01-15 07:23:56', '2020-01-15 07:23:56'),
(1731, 49, 48, NULL, '2022-09-11 18:30:00', 0, '2020-01-15 07:24:04', '2020-01-15 07:24:04'),
(1732, 49, 54, NULL, '2022-09-12 18:30:00', 0, '2020-01-15 07:24:07', '2020-01-15 07:24:07'),
(1733, 49, 50, NULL, '2022-09-13 18:30:00', 0, '2020-01-15 07:24:11', '2020-01-15 07:24:11'),
(1734, 49, 54, NULL, '2022-09-14 18:30:00', 0, '2020-01-15 07:24:16', '2020-01-15 07:24:16'),
(1735, 49, 52, NULL, '2022-09-15 18:30:00', 0, '2020-01-15 07:24:20', '2020-01-15 07:24:20'),
(1736, 49, 56, NULL, '2022-09-18 18:30:00', 0, '2020-01-15 07:24:24', '2020-01-15 07:24:24'),
(1737, 49, 62, NULL, '2022-09-19 18:30:00', 0, '2020-01-15 07:24:30', '2020-01-15 07:24:30'),
(1738, 49, 58, NULL, '2022-09-20 18:30:00', 0, '2020-01-15 07:24:34', '2020-01-15 07:24:34'),
(1739, 49, 62, NULL, '2022-09-21 18:30:00', 0, '2020-01-15 07:24:39', '2020-01-15 07:24:39'),
(1740, 49, 60, NULL, '2022-09-22 18:30:00', 0, '2020-01-15 07:24:43', '2020-01-15 07:24:43'),
(1741, 49, 64, NULL, '2022-09-25 18:30:00', 0, '2020-01-15 07:24:51', '2020-01-15 07:24:51'),
(1742, 49, 70, NULL, '2022-09-26 18:30:00', 0, '2020-01-15 07:24:55', '2020-01-15 07:24:55'),
(1743, 49, 66, NULL, '2022-09-27 18:30:00', 0, '2020-01-15 07:24:59', '2020-01-15 07:24:59'),
(1744, 49, 70, NULL, '2022-09-28 18:30:00', 0, '2020-01-15 07:25:07', '2020-01-15 07:25:07'),
(1745, 49, 68, NULL, '2022-09-29 18:30:00', 0, '2020-01-15 07:25:11', '2020-01-15 07:25:11'),
(1746, 49, 72, NULL, '2022-10-02 18:30:00', 0, '2020-01-15 07:25:23', '2020-01-15 07:25:23'),
(1747, 49, 78, NULL, '2022-10-03 18:30:00', 0, '2020-01-15 07:25:34', '2020-01-15 07:25:34'),
(1748, 49, 74, NULL, '2022-10-04 18:30:00', 0, '2020-01-15 07:25:38', '2020-01-15 07:25:38'),
(1749, 49, 78, NULL, '2022-10-05 18:30:00', 0, '2020-01-15 07:25:43', '2020-01-15 07:25:43'),
(1750, 49, 76, NULL, '2022-10-06 18:30:00', 0, '2020-01-15 07:25:56', '2020-01-15 07:25:56'),
(1751, 49, 86, NULL, '2022-10-09 18:30:00', 0, '2020-01-15 07:26:01', '2020-01-15 07:26:01'),
(1752, 49, 92, NULL, '2022-10-10 18:30:00', 0, '2020-01-15 07:26:08', '2020-01-15 07:26:08'),
(1753, 49, 88, NULL, '2022-10-11 18:30:00', 0, '2020-01-15 07:26:11', '2020-01-15 07:26:11'),
(1754, 49, 92, NULL, '2022-10-12 18:30:00', 0, '2020-01-15 07:26:17', '2020-01-15 07:26:17'),
(1755, 49, 90, NULL, '2022-10-13 18:30:00', 0, '2020-01-15 07:26:21', '2020-01-15 07:26:21'),
(1756, 49, 94, NULL, '2022-10-16 18:30:00', 0, '2020-01-15 07:26:27', '2020-01-15 07:26:27'),
(1757, 49, 100, NULL, '2022-10-17 18:30:00', 0, '2020-01-15 07:26:55', '2020-01-15 07:26:55'),
(1758, 49, 96, NULL, '2022-10-18 18:30:00', 0, '2020-01-15 07:27:02', '2020-01-15 07:27:02'),
(1759, 49, 100, NULL, '2022-10-19 18:30:00', 0, '2020-01-15 07:27:06', '2020-01-15 07:27:06'),
(1760, 49, 98, NULL, '2022-10-20 18:30:00', 0, '2020-01-15 07:27:10', '2020-01-15 07:27:10'),
(1761, 49, 102, NULL, '2022-10-23 18:30:00', 0, '2020-01-15 07:27:16', '2020-01-15 07:27:16'),
(1762, 49, 106, NULL, '2022-10-24 18:30:00', 0, '2020-01-15 07:27:20', '2020-01-15 07:27:20'),
(1763, 49, 104, NULL, '2022-10-25 18:30:00', 0, '2020-01-15 07:27:25', '2020-01-15 07:27:25'),
(1764, 49, 106, NULL, '2022-10-26 18:30:00', 0, '2020-01-15 07:27:29', '2020-01-15 07:27:29'),
(1765, 1, 82, NULL, '2020-01-17 18:30:00', 0, '2020-01-15 08:54:52', '2020-01-15 08:54:52'),
(1766, 1, 83, NULL, '2020-01-24 18:30:00', 0, '2020-01-15 08:55:55', '2020-01-15 08:55:55'),
(1767, 1, 84, NULL, '2020-01-30 18:30:00', 0, '2020-01-15 08:56:32', '2020-01-15 08:56:32'),
(1768, 1, 72, NULL, '2020-03-29 18:30:00', 0, '2020-01-15 08:57:43', '2020-01-15 08:57:43'),
(1769, 1, 46, NULL, '2020-03-03 18:30:00', 0, '2020-01-15 08:57:57', '2020-01-15 08:57:57'),
(1770, 1, 44, NULL, '2020-03-06 18:30:00', 0, '2020-01-15 08:58:43', '2020-01-15 08:58:43'),
(1771, 1, 48, NULL, '2020-03-08 18:30:00', 0, '2020-01-15 08:59:01', '2020-01-15 08:59:01'),
(1772, 1, 56, NULL, '2020-03-15 18:30:00', 0, '2020-01-15 08:59:29', '2020-01-15 08:59:29'),
(1773, 1, 60, NULL, '2020-03-20 18:30:00', 0, '2020-01-15 08:59:51', '2020-01-15 08:59:51'),
(1774, 1, 64, NULL, '2020-03-22 18:30:00', 0, '2020-01-15 08:59:57', '2020-01-15 08:59:57'),
(1775, 1, 70, NULL, '2020-03-24 18:30:00', 0, '2020-01-15 09:00:03', '2020-01-15 09:00:03'),
(1776, 1, 78, NULL, '2020-03-31 18:30:00', 0, '2020-01-15 09:00:39', '2020-01-15 09:00:39'),
(1777, 1, 76, NULL, '2020-04-03 18:30:00', 0, '2020-01-15 09:00:54', '2020-01-15 09:00:54'),
(1778, 1, 86, NULL, '2020-04-05 18:30:00', 0, '2020-01-15 09:01:01', '2020-01-15 09:01:01'),
(1779, 1, 92, NULL, '2020-04-07 18:30:00', 0, '2020-01-15 09:01:07', '2020-01-15 09:01:07'),
(1780, 1, 88, NULL, '2020-04-08 18:30:00', 0, '2020-01-15 09:01:11', '2020-01-15 09:01:11'),
(1781, 1, 92, '[{"common_programs_weeks_lap_id":"269","is_complete":true,"completed_time":2,"updated_text":"3.0km","updated_rest":"","updated_percentage":""}]', '2020-04-09 18:30:00', 1, '2020-01-15 09:01:18', '2020-04-26 01:27:44'),
(1782, 1, 90, NULL, '2020-04-10 18:30:00', 0, '2020-01-15 09:01:25', '2020-01-15 09:01:25'),
(1783, 1, 94, NULL, '2020-04-12 18:30:00', 0, '2020-01-15 09:01:31', '2020-01-15 09:01:31'),
(1784, 1, 96, NULL, '2020-04-15 18:30:00', 1, '2020-01-15 09:01:40', '2020-04-22 16:29:49'),
(1785, 1, 98, NULL, '2020-04-17 18:30:00', 0, '2020-01-15 09:01:54', '2020-01-15 09:01:54'),
(1786, 1, 104, NULL, '2020-04-22 18:30:00', 1, '2020-01-15 09:02:10', '2020-04-27 04:12:40'),
(1787, 8, 182, NULL, '2020-04-25 18:30:00', 0, '2020-01-15 09:02:21', '2020-01-15 09:02:21'),
(1788, 8, 182, NULL, '2020-04-28 18:30:00', 0, '2020-01-15 09:02:35', '2020-01-15 09:02:35'),
(1789, 8, 182, NULL, '2020-05-02 18:30:00', 0, '2020-01-15 09:02:58', '2020-01-15 09:02:58'),
(1790, 8, 182, NULL, '2020-05-05 18:30:00', 0, '2020-01-15 09:03:13', '2020-01-15 09:03:13'),
(1791, 8, 182, NULL, '2020-05-09 18:30:00', 0, '2020-01-15 09:03:30', '2020-01-15 09:03:30'),
(1792, 8, 182, NULL, '2020-05-12 18:30:00', 0, '2020-01-15 09:03:42', '2020-01-15 09:03:42'),
(1793, 8, 182, NULL, '2020-05-16 18:30:00', 0, '2020-01-15 09:03:57', '2020-01-15 09:03:57'),
(1794, 8, 182, NULL, '2020-05-19 18:30:00', 0, '2020-01-15 09:06:36', '2020-01-15 09:06:36'),
(1849, 8, 182, NULL, '2020-05-23 18:30:00', 0, '2020-01-15 09:17:56', '2020-01-15 09:17:56'),
(1856, 8, 182, NULL, '2020-05-26 18:30:00', 0, '2020-01-15 09:18:09', '2020-01-15 09:18:09'),
(1862, 8, 182, NULL, '2020-05-30 18:30:00', 0, '2020-01-15 09:18:25', '2020-01-15 09:18:25'),
(1873, 8, 187, NULL, '2020-06-02 18:30:00', 0, '2020-01-15 09:18:53', '2020-01-15 09:18:53'),
(1880, 8, 191, NULL, '2020-06-09 18:30:00', 0, '2020-01-15 09:19:38', '2020-01-15 09:19:38'),
(1881, 8, 195, NULL, '2020-06-16 18:30:00', 0, '2020-01-15 09:20:10', '2020-01-15 09:20:10'),
(1886, 8, 199, NULL, '2020-06-23 18:30:00', 0, '2020-01-15 09:23:29', '2020-01-15 09:23:29'),
(1894, 8, 203, NULL, '2020-06-30 18:30:00', 0, '2020-01-15 09:24:01', '2020-01-15 09:24:01'),
(1897, 8, 203, NULL, '2020-07-03 18:30:00', 0, '2020-01-15 09:24:11', '2020-01-15 09:24:11'),
(1905, 8, 207, NULL, '2020-07-07 18:30:00', 0, '2020-01-15 09:24:34', '2020-01-15 09:24:34'),
(1917, 8, 211, NULL, '2020-07-14 18:30:00', 0, '2020-01-15 09:27:55', '2020-01-15 09:27:55'),
(1930, 8, 215, NULL, '2020-07-21 18:30:00', 0, '2020-01-15 09:28:35', '2020-01-15 09:28:35'),
(1945, 8, 219, NULL, '2020-07-28 18:30:00', 0, '2020-01-15 09:29:12', '2020-01-15 09:29:12'),
(1952, 8, 223, NULL, '2020-08-04 18:30:00', 0, '2020-01-15 09:30:05', '2020-01-15 09:30:05'),
(1968, 8, 227, NULL, '2020-08-11 18:30:00', 0, '2020-01-15 09:30:48', '2020-01-15 09:30:48'),
(1994, 8, 231, NULL, '2020-08-18 18:30:00', 0, '2020-01-15 09:35:26', '2020-01-15 09:35:26'),
(1995, 8, 235, NULL, '2020-08-25 18:30:00', 0, '2020-01-15 09:36:05', '2020-01-15 09:36:05'),
(2005, 8, 239, NULL, '2020-09-01 18:30:00', 0, '2020-01-15 09:37:06', '2020-01-15 09:37:06'),
(2028, 8, 243, NULL, '2020-09-08 18:30:00', 0, '2020-01-15 09:38:06', '2020-01-15 09:38:06'),
(2039, 8, 244, NULL, '2020-09-15 18:30:00', 0, '2020-01-15 09:40:15', '2020-01-15 09:40:15'),
(2054, 8, 250, NULL, '2020-09-22 18:30:00', 0, '2020-01-15 09:40:46', '2020-01-15 09:40:46'),
(2063, 8, 250, NULL, '2020-09-25 18:30:00', 0, '2020-01-15 09:41:01', '2020-01-15 09:41:01'),
(2081, 8, 253, NULL, '2020-09-29 18:30:00', 0, '2020-01-15 09:41:36', '2020-01-15 09:41:36'),
(2167, 2, 1, NULL, '2021-02-28 18:30:00', 0, '2020-01-15 09:51:18', '2020-01-15 09:51:18'),
(2168, 52, 254, NULL, '2020-04-16 18:30:00', 0, '2020-01-15 09:51:32', '2020-01-15 09:51:32'),
(2169, 52, 254, NULL, '2020-04-17 18:30:00', 0, '2020-01-15 09:51:36', '2020-01-15 09:51:36'),
(2170, 52, 254, NULL, '2020-04-18 18:30:00', 0, '2020-01-15 09:51:37', '2020-01-15 09:51:37'),
(2171, 52, 254, NULL, '2020-04-21 18:30:00', 0, '2020-01-15 09:51:40', '2020-01-15 09:51:40'),
(2172, 52, 254, NULL, '2020-04-22 18:30:00', 0, '2020-01-15 09:51:42', '2020-01-15 09:51:42'),
(2173, 52, 254, NULL, '2020-04-23 18:30:00', 0, '2020-01-15 09:51:47', '2020-01-15 09:51:47'),
(2174, 52, 254, NULL, '2020-04-24 18:30:00', 0, '2020-01-15 09:51:48', '2020-01-15 09:51:48'),
(2175, 52, 254, NULL, '2020-04-25 18:30:00', 0, '2020-01-15 09:51:49', '2020-01-15 09:51:49'),
(2176, 52, 254, NULL, '2020-04-28 18:30:00', 0, '2020-01-15 09:51:51', '2020-01-15 09:51:51'),
(2177, 52, 254, NULL, '2020-04-29 18:30:00', 0, '2020-01-15 09:51:52', '2020-01-15 09:51:52'),
(2178, 52, 254, NULL, '2020-04-30 18:30:00', 0, '2020-01-15 09:51:59', '2020-01-15 09:51:59'),
(2179, 52, 254, NULL, '2020-05-01 18:30:00', 0, '2020-01-15 09:52:01', '2020-01-15 09:52:01'),
(2180, 52, 254, NULL, '2020-05-02 18:30:00', 0, '2020-01-15 09:52:04', '2020-01-15 09:52:04'),
(2181, 52, 254, NULL, '2020-05-05 18:30:00', 0, '2020-01-15 09:52:06', '2020-01-15 09:52:06'),
(2182, 52, 254, NULL, '2020-05-06 18:30:00', 0, '2020-01-15 09:52:08', '2020-01-15 09:52:08'),
(2183, 52, 254, NULL, '2020-05-07 18:30:00', 0, '2020-01-15 09:52:09', '2020-01-15 09:52:09'),
(2184, 52, 254, NULL, '2020-05-08 18:30:00', 0, '2020-01-15 09:52:11', '2020-01-15 09:52:11'),
(2185, 52, 254, NULL, '2020-05-09 18:30:00', 0, '2020-01-15 09:52:13', '2020-01-15 09:52:13'),
(2186, 52, 254, NULL, '2020-05-12 18:30:00', 0, '2020-01-15 09:52:14', '2020-01-15 09:52:14'),
(2187, 52, 254, NULL, '2020-05-13 18:30:00', 0, '2020-01-15 09:52:16', '2020-01-15 09:52:16'),
(2188, 52, 254, NULL, '2020-05-14 18:30:00', 0, '2020-01-15 09:52:17', '2020-01-15 09:52:17'),
(2189, 52, 254, NULL, '2020-05-15 18:30:00', 0, '2020-01-15 09:52:18', '2020-01-15 09:52:18'),
(2190, 52, 254, NULL, '2020-05-16 18:30:00', 0, '2020-01-15 09:52:19', '2020-01-15 09:52:19'),
(2191, 52, 254, NULL, '2020-05-19 18:30:00', 0, '2020-01-15 09:52:21', '2020-01-15 09:52:21'),
(2192, 52, 254, NULL, '2020-05-20 18:30:00', 0, '2020-01-15 09:52:23', '2020-01-15 09:52:23'),
(2193, 52, 254, NULL, '2020-05-21 18:30:00', 0, '2020-01-15 09:52:24', '2020-01-15 09:52:24'),
(2194, 52, 254, NULL, '2020-05-22 18:30:00', 0, '2020-01-15 09:52:25', '2020-01-15 09:52:25'),
(2195, 52, 254, NULL, '2020-05-23 18:30:00', 0, '2020-01-15 09:52:27', '2020-01-15 09:52:27'),
(2196, 52, 255, NULL, '2020-05-24 18:30:00', 0, '2020-01-15 09:52:29', '2020-01-15 09:52:29'),
(2197, 52, 258, NULL, '2020-05-26 18:30:00', 0, '2020-01-15 09:52:31', '2020-01-15 09:52:31'),
(2198, 52, 256, NULL, '2020-05-27 18:30:00', 0, '2020-01-15 09:52:32', '2020-01-15 09:52:32'),
(2199, 52, 258, NULL, '2020-05-28 18:30:00', 0, '2020-01-15 09:52:34', '2020-01-15 09:52:34'),
(2200, 52, 257, NULL, '2020-05-29 18:30:00', 0, '2020-01-15 09:52:35', '2020-01-15 09:52:35'),
(2201, 52, 258, NULL, '2020-05-30 18:30:00', 0, '2020-01-15 09:52:36', '2020-01-15 09:52:36'),
(2202, 52, 259, NULL, '2020-05-31 18:30:00', 0, '2020-01-15 09:52:40', '2020-01-15 09:52:40'),
(2203, 52, 262, NULL, '2020-06-02 18:30:00', 0, '2020-01-15 09:52:42', '2020-01-15 09:52:42'),
(2204, 52, 260, NULL, '2020-06-03 18:30:00', 0, '2020-01-15 09:52:45', '2020-01-15 09:52:45'),
(2205, 52, 262, NULL, '2020-06-04 18:30:00', 0, '2020-01-15 09:52:48', '2020-01-15 09:52:48'),
(2206, 52, 261, NULL, '2020-06-05 18:30:00', 0, '2020-01-15 09:52:50', '2020-01-15 09:52:50'),
(2207, 52, 262, NULL, '2020-06-06 18:30:00', 0, '2020-01-15 09:52:52', '2020-01-15 09:52:52'),
(2208, 52, 263, NULL, '2020-06-07 18:30:00', 0, '2020-01-15 09:52:56', '2020-01-15 09:52:56'),
(2209, 52, 266, NULL, '2020-06-09 18:30:00', 0, '2020-01-15 09:52:58', '2020-01-15 09:52:58'),
(2210, 52, 264, NULL, '2020-06-10 18:30:00', 0, '2020-01-15 09:53:00', '2020-01-15 09:53:00'),
(2211, 52, 266, NULL, '2020-06-11 18:30:00', 0, '2020-01-15 09:53:01', '2020-01-15 09:53:01'),
(2212, 52, 265, NULL, '2020-06-12 18:30:00', 0, '2020-01-15 09:53:03', '2020-01-15 09:53:03'),
(2213, 52, 266, NULL, '2020-06-13 18:30:00', 0, '2020-01-15 09:53:04', '2020-01-15 09:53:04'),
(2214, 52, 267, NULL, '2020-06-14 18:30:00', 0, '2020-01-15 09:53:05', '2020-01-15 09:53:05'),
(2215, 52, 270, NULL, '2020-06-16 18:30:00', 0, '2020-01-15 09:53:07', '2020-01-15 09:53:07'),
(2216, 52, 268, NULL, '2020-06-17 18:30:00', 0, '2020-01-15 09:53:08', '2020-01-15 09:53:08'),
(2217, 52, 270, NULL, '2020-06-18 18:30:00', 0, '2020-01-15 09:53:09', '2020-01-15 09:53:09'),
(2218, 52, 269, NULL, '2020-06-19 18:30:00', 0, '2020-01-15 09:53:10', '2020-01-15 09:53:10'),
(2219, 52, 271, NULL, '2020-06-21 18:30:00', 0, '2020-01-15 09:53:12', '2020-01-15 09:53:12'),
(2220, 52, 274, NULL, '2020-06-23 18:30:00', 0, '2020-01-15 09:53:14', '2020-01-15 09:53:14'),
(2221, 52, 272, NULL, '2020-06-24 18:30:00', 0, '2020-01-15 09:53:15', '2020-01-15 09:53:15'),
(2222, 52, 274, NULL, '2020-06-25 18:30:00', 0, '2020-01-15 09:53:16', '2020-01-15 09:53:16'),
(2223, 52, 273, NULL, '2020-06-26 18:30:00', 0, '2020-01-15 09:53:17', '2020-01-15 09:53:17'),
(2224, 52, 274, NULL, '2020-06-27 18:30:00', 0, '2020-01-15 09:53:19', '2020-01-15 09:53:19'),
(2225, 52, 275, NULL, '2020-06-28 18:30:00', 0, '2020-01-15 09:53:21', '2020-01-15 09:53:21'),
(2226, 52, 278, NULL, '2020-06-30 18:30:00', 0, '2020-01-15 09:53:26', '2020-01-15 09:53:26'),
(2227, 52, 276, NULL, '2020-07-01 18:30:00', 0, '2020-01-15 09:53:28', '2020-01-15 09:53:28'),
(2228, 52, 278, NULL, '2020-07-02 18:30:00', 0, '2020-01-15 09:53:31', '2020-01-15 09:53:31'),
(2229, 52, 277, NULL, '2020-07-03 18:30:00', 0, '2020-01-15 09:53:33', '2020-01-15 09:53:33'),
(2230, 52, 278, NULL, '2020-07-04 18:30:00', 0, '2020-01-15 09:53:34', '2020-01-15 09:53:34'),
(2231, 52, 279, NULL, '2020-07-05 18:30:00', 0, '2020-01-15 09:53:35', '2020-01-15 09:53:35'),
(2232, 52, 282, NULL, '2020-07-07 18:30:00', 0, '2020-01-15 09:53:36', '2020-01-15 09:53:36'),
(2233, 52, 280, NULL, '2020-07-08 18:30:00', 0, '2020-01-15 09:53:38', '2020-01-15 09:53:38'),
(2234, 52, 282, NULL, '2020-07-09 18:30:00', 0, '2020-01-15 09:53:39', '2020-01-15 09:53:39'),
(2235, 52, 281, NULL, '2020-07-10 18:30:00', 0, '2020-01-15 09:53:40', '2020-01-15 09:53:40');
INSERT INTO `completed_training_programs` (`id`, `program_id`, `week_wise_workout_id`, `exercise`, `date`, `is_complete`, `created_at`, `updated_at`) VALUES
(2236, 52, 282, NULL, '2020-07-11 18:30:00', 0, '2020-01-15 09:53:42', '2020-01-15 09:53:42'),
(2237, 52, 283, NULL, '2020-07-12 18:30:00', 0, '2020-01-15 09:53:43', '2020-01-15 09:53:43'),
(2238, 52, 286, NULL, '2020-07-14 18:30:00', 0, '2020-01-15 09:53:45', '2020-01-15 09:53:45'),
(2239, 52, 284, NULL, '2020-07-15 18:30:00', 0, '2020-01-15 09:53:46', '2020-01-15 09:53:46'),
(2240, 52, 286, NULL, '2020-07-16 18:30:00', 0, '2020-01-15 09:53:48', '2020-01-15 09:53:48'),
(2241, 52, 285, NULL, '2020-07-17 18:30:00', 0, '2020-01-15 09:53:49', '2020-01-15 09:53:49'),
(2242, 52, 286, NULL, '2020-07-18 18:30:00', 0, '2020-01-15 09:53:50', '2020-01-15 09:53:50'),
(2243, 52, 287, NULL, '2020-07-19 18:30:00', 0, '2020-01-15 09:53:52', '2020-01-15 09:53:52'),
(2244, 52, 290, NULL, '2020-07-21 18:30:00', 0, '2020-01-15 09:53:54', '2020-01-15 09:53:54'),
(2245, 52, 288, NULL, '2020-07-22 18:30:00', 0, '2020-01-15 09:53:55', '2020-01-15 09:53:55'),
(2246, 52, 290, NULL, '2020-07-23 18:30:00', 0, '2020-01-15 09:53:56', '2020-01-15 09:53:56'),
(2247, 52, 289, NULL, '2020-07-24 18:30:00', 0, '2020-01-15 09:53:58', '2020-01-15 09:53:58'),
(2248, 52, 290, NULL, '2020-07-25 18:30:00', 0, '2020-01-15 09:53:59', '2020-01-15 09:53:59'),
(2249, 52, 291, NULL, '2020-07-26 18:30:00', 0, '2020-01-15 09:54:01', '2020-01-15 09:54:01'),
(2250, 52, 293, NULL, '2020-07-28 18:30:00', 0, '2020-01-15 09:54:03', '2020-01-15 09:54:03'),
(2251, 52, 293, NULL, '2020-07-29 18:30:00', 0, '2020-01-15 09:54:04', '2020-01-15 09:54:04'),
(2252, 52, 292, NULL, '2020-07-30 18:30:00', 0, '2020-01-15 09:54:06', '2020-01-15 09:54:06'),
(2253, 52, 293, NULL, '2020-07-31 18:30:00', 0, '2020-01-15 09:54:10', '2020-01-15 09:54:10'),
(2254, 52, 294, NULL, '2020-08-02 18:30:00', 0, '2020-01-15 09:54:13', '2020-01-15 09:54:13'),
(2255, 52, 297, NULL, '2020-08-04 18:30:00', 0, '2020-01-15 09:54:14', '2020-01-15 09:54:14'),
(2256, 52, 295, NULL, '2020-08-05 18:30:00', 0, '2020-01-15 09:54:16', '2020-01-15 09:54:16'),
(2257, 52, 297, NULL, '2020-08-06 18:30:00', 0, '2020-01-15 09:54:17', '2020-01-15 09:54:17'),
(2258, 52, 296, NULL, '2020-08-07 18:30:00', 0, '2020-01-15 09:54:19', '2020-01-15 09:54:19'),
(2259, 52, 297, NULL, '2020-08-08 18:30:00', 0, '2020-01-15 09:54:20', '2020-01-15 09:54:20'),
(2260, 52, 298, NULL, '2020-08-09 18:30:00', 0, '2020-01-15 09:54:22', '2020-01-15 09:54:22'),
(2261, 52, 301, NULL, '2020-08-11 18:30:00', 0, '2020-01-15 09:54:24', '2020-01-15 09:54:24'),
(2262, 52, 299, NULL, '2020-08-12 18:30:00', 0, '2020-01-15 09:54:26', '2020-01-15 09:54:26'),
(2263, 52, 301, NULL, '2020-08-13 18:30:00', 0, '2020-01-15 09:54:27', '2020-01-15 09:54:27'),
(2264, 52, 300, NULL, '2020-08-14 18:30:00', 0, '2020-01-15 09:54:28', '2020-01-15 09:54:28'),
(2265, 52, 301, NULL, '2020-08-15 18:30:00', 0, '2020-01-15 09:54:29', '2020-01-15 09:54:29'),
(2266, 52, 302, NULL, '2020-08-16 18:30:00', 0, '2020-01-15 09:54:31', '2020-01-15 09:54:31'),
(2267, 52, 305, NULL, '2020-08-18 18:30:00', 0, '2020-01-15 09:54:33', '2020-01-15 09:54:33'),
(2268, 52, 303, NULL, '2020-08-19 18:30:00', 0, '2020-01-15 09:54:34', '2020-01-15 09:54:34'),
(2269, 52, 305, NULL, '2020-08-20 18:30:00', 0, '2020-01-15 09:54:36', '2020-01-15 09:54:36'),
(2270, 52, 304, NULL, '2020-08-21 18:30:00', 0, '2020-01-15 09:54:37', '2020-01-15 09:54:37'),
(2271, 52, 305, NULL, '2020-08-22 18:30:00', 0, '2020-01-15 09:54:38', '2020-01-15 09:54:38'),
(2272, 52, 306, NULL, '2020-08-23 18:30:00', 0, '2020-01-15 09:54:40', '2020-01-15 09:54:40'),
(2273, 52, 309, NULL, '2020-08-25 18:30:00', 0, '2020-01-15 09:54:42', '2020-01-15 09:54:42'),
(2274, 52, 307, NULL, '2020-08-26 18:30:00', 0, '2020-01-15 09:54:43', '2020-01-15 09:54:43'),
(2275, 52, 309, NULL, '2020-08-27 18:30:00', 0, '2020-01-15 09:54:44', '2020-01-15 09:54:44'),
(2276, 52, 308, NULL, '2020-08-28 18:30:00', 0, '2020-01-15 09:54:46', '2020-01-15 09:54:46'),
(2277, 52, 309, NULL, '2020-08-29 18:30:00', 0, '2020-01-15 09:54:47', '2020-01-15 09:54:47'),
(2278, 52, 310, NULL, '2020-08-30 18:30:00', 0, '2020-01-15 09:54:48', '2020-01-15 09:54:48'),
(2279, 52, 312, NULL, '2020-09-01 18:30:00', 0, '2020-01-15 09:54:55', '2020-01-15 09:54:55'),
(2280, 52, 312, NULL, '2020-09-02 18:30:00', 0, '2020-01-15 09:54:56', '2020-01-15 09:54:56'),
(2281, 52, 311, NULL, '2020-09-03 18:30:00', 0, '2020-01-15 09:54:57', '2020-01-15 09:54:57'),
(2282, 52, 312, NULL, '2020-09-04 18:30:00', 0, '2020-01-15 09:54:59', '2020-01-15 09:54:59'),
(2283, 52, 313, NULL, '2020-09-06 18:30:00', 0, '2020-01-15 09:55:00', '2020-01-15 09:55:00'),
(2284, 52, 315, NULL, '2020-09-08 18:30:00', 0, '2020-01-15 09:55:02', '2020-01-15 09:55:02'),
(2285, 52, 315, NULL, '2020-09-09 18:30:00', 0, '2020-01-15 09:55:03', '2020-01-15 09:55:03'),
(2286, 52, 314, NULL, '2020-09-10 18:30:00', 0, '2020-01-15 09:55:05', '2020-01-15 09:55:05'),
(2287, 52, 315, NULL, '2020-09-11 18:30:00', 0, '2020-01-15 09:55:06', '2020-01-15 09:55:06'),
(2288, 52, 316, NULL, '2020-09-13 18:30:00', 0, '2020-01-15 09:55:46', '2020-01-15 09:55:46'),
(2289, 52, 318, NULL, '2020-09-15 18:30:00', 0, '2020-01-15 09:55:48', '2020-01-15 09:55:48'),
(2290, 52, 318, NULL, '2020-09-16 18:30:00', 0, '2020-01-15 09:55:49', '2020-01-15 09:55:49'),
(2291, 52, 317, NULL, '2020-09-17 18:30:00', 0, '2020-01-15 09:55:51', '2020-01-15 09:55:51'),
(2292, 52, 318, NULL, '2020-09-18 18:30:00', 0, '2020-01-15 09:55:52', '2020-01-15 09:55:52'),
(2293, 52, 319, NULL, '2020-09-20 18:30:00', 0, '2020-01-15 09:55:56', '2020-01-15 09:55:56'),
(2294, 52, 320, NULL, '2020-09-21 18:30:00', 0, '2020-01-15 09:55:58', '2020-01-15 09:55:58'),
(2295, 52, 321, NULL, '2020-09-22 18:30:00', 0, '2020-01-15 09:56:00', '2020-01-15 09:56:00'),
(2296, 52, 322, NULL, '2020-09-23 18:30:00', 0, '2020-01-15 09:56:02', '2020-01-15 09:56:02'),
(2297, 52, 323, NULL, '2020-09-24 18:30:00', 0, '2020-01-15 09:56:03', '2020-01-15 09:56:03'),
(2298, 52, 324, NULL, '2020-09-25 18:30:00', 0, '2020-01-15 09:56:27', '2020-01-15 09:56:27'),
(2299, 2, 6, NULL, '2021-03-30 18:30:00', 0, '2020-01-15 11:19:31', '2020-01-15 11:19:31'),
(2300, 2, 7, NULL, '2021-04-06 18:30:00', 0, '2020-01-15 11:19:43', '2020-01-15 11:19:43'),
(2301, 2, 11, NULL, '2021-04-11 18:30:00', 0, '2020-01-15 11:19:51', '2020-01-15 11:19:51'),
(2302, 2, 15, NULL, '2021-04-13 18:30:00', 0, '2020-01-15 11:19:54', '2020-01-15 11:19:54'),
(2303, 2, 19, NULL, '2021-04-18 18:30:00', 0, '2020-01-15 11:19:59', '2020-01-15 11:19:59'),
(2304, 2, 23, NULL, '2021-04-20 18:30:00', 0, '2020-01-15 11:20:01', '2020-01-15 11:20:01'),
(2305, 2, 27, NULL, '2021-04-25 18:30:00', 0, '2020-01-15 11:20:06', '2020-01-15 11:20:06'),
(2306, 2, 31, NULL, '2021-04-27 18:30:00', 0, '2020-01-15 11:20:08', '2020-01-15 11:20:08'),
(2307, 2, 35, NULL, '2021-05-02 18:30:00', 0, '2020-01-15 11:20:17', '2020-01-15 11:20:17'),
(2308, 2, 39, NULL, '2021-05-04 18:30:00', 0, '2020-01-15 11:20:18', '2020-01-15 11:20:18'),
(2309, 2, 43, NULL, '2021-05-09 18:30:00', 0, '2020-01-15 11:20:25', '2020-01-15 11:20:25'),
(2310, 2, 47, NULL, '2021-05-11 18:30:00', 0, '2020-01-15 11:20:26', '2020-01-15 11:20:26'),
(2311, 2, 51, NULL, '2021-05-16 18:30:00', 0, '2020-01-15 11:20:31', '2020-01-15 11:20:31'),
(2312, 2, 55, NULL, '2021-05-18 18:30:00', 0, '2020-01-15 11:20:32', '2020-01-15 11:20:32'),
(2313, 2, 59, NULL, '2021-05-23 18:30:00', 0, '2020-01-15 11:20:37', '2020-01-15 11:20:37'),
(2314, 2, 63, NULL, '2021-05-25 18:30:00', 0, '2020-01-15 11:20:38', '2020-01-15 11:20:38'),
(2315, 2, 67, NULL, '2021-05-30 18:30:00', 0, '2020-01-15 11:20:43', '2020-01-15 11:20:43'),
(2316, 2, 71, NULL, '2021-06-01 18:30:00', 0, '2020-01-15 11:20:52', '2020-01-15 11:20:52'),
(2317, 2, 75, NULL, '2021-06-06 18:30:00', 0, '2020-01-15 11:21:02', '2020-01-15 11:21:02'),
(2318, 2, 85, NULL, '2021-06-08 18:30:00', 0, '2020-01-15 11:21:04', '2020-01-15 11:21:04'),
(2319, 2, 89, NULL, '2021-06-13 18:30:00', 0, '2020-01-15 11:21:10', '2020-01-15 11:21:10'),
(2320, 2, 93, NULL, '2021-06-15 18:30:00', 0, '2020-01-15 11:21:11', '2020-01-15 11:21:11'),
(2321, 2, 97, NULL, '2021-06-20 18:30:00', 0, '2020-01-15 11:21:17', '2020-01-15 11:21:17'),
(2322, 2, 101, NULL, '2021-06-22 18:30:00', 0, '2020-01-15 11:21:18', '2020-01-15 11:21:18'),
(2323, 3, 79, NULL, '2021-07-03 18:30:00', 0, '2020-01-15 11:21:41', '2020-01-15 11:21:41'),
(2324, 3, 80, NULL, '2021-07-05 18:30:00', 0, '2020-01-15 11:21:50', '2020-01-15 11:21:50'),
(2325, 3, 80, NULL, '2021-07-08 18:30:00', 0, '2020-01-15 11:21:52', '2020-01-15 11:21:52'),
(2326, 3, 80, NULL, '2021-07-10 18:30:00', 0, '2020-01-15 11:21:54', '2020-01-15 11:21:54'),
(2327, 3, 80, NULL, '2021-07-09 18:30:00', 0, '2020-01-15 11:21:58', '2020-01-15 11:21:58'),
(2328, 3, 81, NULL, '2021-07-12 18:30:00', 0, '2020-01-15 11:22:02', '2020-01-15 11:22:02'),
(2329, 3, 81, NULL, '2021-07-15 18:30:00', 0, '2020-01-15 11:22:17', '2020-01-15 11:22:17'),
(2330, 3, 81, NULL, '2021-07-16 18:30:00', 0, '2020-01-15 11:22:17', '2020-01-15 11:22:17'),
(2331, 3, 81, NULL, '2021-07-17 18:30:00', 0, '2020-01-15 11:22:17', '2020-01-15 11:22:17'),
(2332, 3, 82, NULL, '2021-07-19 18:30:00', 0, '2020-01-15 11:22:21', '2020-01-15 11:22:21'),
(2333, 3, 82, NULL, '2021-07-24 18:30:00', 0, '2020-01-15 11:22:21', '2020-01-15 11:22:21'),
(2334, 3, 82, NULL, '2021-07-22 18:30:00', 0, '2020-01-15 11:22:21', '2020-01-15 11:22:21'),
(2335, 3, 82, NULL, '2021-07-23 18:30:00', 0, '2020-01-15 11:22:21', '2020-01-15 11:22:21'),
(2336, 3, 83, NULL, '2021-07-26 18:30:00', 0, '2020-01-15 11:22:22', '2020-01-15 11:22:22'),
(2337, 3, 83, NULL, '2021-07-29 18:30:00', 0, '2020-01-15 11:22:23', '2020-01-15 11:22:23'),
(2338, 3, 83, NULL, '2021-07-30 18:30:00', 0, '2020-01-15 11:22:25', '2020-01-15 11:22:25'),
(2339, 3, 83, NULL, '2021-07-31 18:30:00', 0, '2020-01-15 11:22:32', '2020-01-15 11:22:32'),
(2340, 3, 84, NULL, '2021-08-02 18:30:00', 0, '2020-01-15 11:22:49', '2020-01-15 11:22:49'),
(2341, 3, 84, NULL, '2021-08-05 18:30:00', 0, '2020-01-15 11:22:50', '2020-01-15 11:22:50'),
(2342, 3, 84, NULL, '2021-08-06 18:30:00', 0, '2020-01-15 11:23:15', '2020-01-15 11:23:15'),
(2343, 3, 22, NULL, '2021-08-19 18:30:00', 0, '2020-01-15 11:23:23', '2020-01-15 11:23:23'),
(2344, 3, 18, NULL, '2021-08-20 18:30:00', 0, '2020-01-15 11:23:26', '2020-01-15 11:23:26'),
(2345, 3, 22, NULL, '2021-08-21 18:30:00', 0, '2020-01-15 11:23:27', '2020-01-15 11:23:27'),
(2346, 3, 24, NULL, '2021-08-25 18:30:00', 0, '2020-01-15 11:23:31', '2020-01-15 11:23:31'),
(2347, 3, 30, NULL, '2021-08-26 18:30:00', 0, '2020-01-15 11:23:33', '2020-01-15 11:23:33'),
(2348, 3, 26, NULL, '2021-08-27 18:30:00', 0, '2020-01-15 11:23:35', '2020-01-15 11:23:35'),
(2349, 3, 30, NULL, '2021-08-28 18:30:00', 0, '2020-01-15 11:23:36', '2020-01-15 11:23:36'),
(2410, 1, 26, NULL, '2020-02-20 16:00:00', 0, '2020-02-04 16:02:45', '2020-02-04 16:02:45'),
(2413, 1, 34, NULL, '2020-02-27 16:00:00', 0, '2020-02-08 17:40:56', '2020-02-08 17:40:56'),
(2466, 61, 80, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":12,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-04-05 18:30:00', 1, '2020-04-02 06:51:54', '2020-04-02 06:52:23'),
(2467, 61, 81, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":6,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-04-12 18:30:00', 1, '2020-04-02 10:25:34', '2020-04-29 10:38:54'),
(2468, 61, 82, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":18,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-04-19 18:30:00', 1, '2020-04-20 05:19:49', '2020-04-29 08:53:43'),
(2469, 61, 83, '[{"common_programs_weeks_lap_id":"1","is_complete":true,"completed_time":2,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-04-26 18:30:00', 1, '2020-04-20 05:19:50', '2020-04-29 05:46:06'),
(2470, 61, 84, NULL, '2020-05-03 18:30:00', 0, '2020-05-02 04:31:30', '2020-05-02 04:31:30'),
(2471, 61, 8, '[{"common_programs_weeks_lap_id":"7","is_complete":true,"completed_time":12,"updated_text":"","updated_rest":"","updated_percentage":""}]', '2020-05-10 18:30:00', 0, '2020-05-02 04:31:31', '2020-05-02 04:32:02'),
(2472, 61, 16, NULL, '2020-05-17 18:30:00', 0, '2020-05-12 10:56:35', '2020-05-12 10:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name/title',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code for country',
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mobile prefix code',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `country_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'India', 'IN', '+91', 1, NULL, NULL),
(2, 'Albania', 'AL', '+355', 1, NULL, NULL),
(3, 'Algeria', 'DZ', '+213', 1, NULL, NULL),
(4, 'American Samoa', 'DS', '+1', 1, NULL, NULL),
(5, 'Andorra', 'AD', '+376', 1, NULL, NULL),
(6, 'Angola', 'AO', NULL, 1, NULL, NULL),
(7, 'Anguilla', 'AI', NULL, 1, NULL, NULL),
(8, 'Antarctica', 'AQ', NULL, 1, NULL, NULL),
(9, 'Antigua and Barbuda', 'AG', NULL, 1, NULL, NULL),
(10, 'Argentina', 'AR', '91', 0, NULL, '2019-07-24 07:28:11'),
(11, 'Armenia', 'AM', NULL, 1, NULL, NULL),
(12, 'Aruba', 'AW', NULL, 0, NULL, '2019-07-09 04:42:39'),
(13, 'Ads', 'GA', '99', 0, '2019-07-24 06:20:02', '2019-07-24 07:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of Currency',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code of Currency',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is currency is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Singapore', 'SGD', 1, NULL, '2019-08-19 11:21:27'),
(2, 'USD', 'USD', 1, NULL, NULL),
(3, 'India', 'INR', 1, NULL, '2019-08-19 11:20:50'),
(4, 'Europe', 'EUR', 1, NULL, '2019-08-19 11:20:40'),
(5, 'Austria', 'AUT', 1, '2019-08-19 10:39:51', '2019-08-19 11:14:41'),
(6, 'Monaco', 'MCO', 1, '2019-08-19 10:41:43', '2019-08-19 11:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `custom_common_libraries_details`
--

DROP TABLE IF EXISTS `custom_common_libraries_details`;
CREATE TABLE IF NOT EXISTS `custom_common_libraries_details` (
  `id` bigint(20) unsigned NOT NULL,
  `common_libraries_id` bigint(20) NOT NULL COMMENT 'Relation Common libraries to user custom libraries',
  `user_id` bigint(20) NOT NULL COMMENT 'User created id',
  `selected_rm` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'custom selected_rm',
  `repetition_max` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'custom repetition_max details.',
  `is_show_again_message` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'for show alert message',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_common_libraries_details`
--

INSERT INTO `custom_common_libraries_details` (`id`, `common_libraries_id`, `user_id`, `selected_rm`, `repetition_max`, `is_show_again_message`, `created_at`, `updated_at`) VALUES
(6, 1, 34, '', '[{"name":"11 RM","est_weight":"11","act_weight":"11"},{"name":"2 RM","est_weight":"20","act_weight":"30"}]', 0, '2020-01-07 09:26:26', '2020-02-22 04:51:35'),
(7, 39, 3, '1', '[{"name":"1 RM","est_weight":"10.0","act_weight":"30"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.3","act_weight":"0"},{"name":"4 RM","est_weight":"9.0","act_weight":"0"},{"name":"5 RM","est_weight":"8.7","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.3","act_weight":"0"},{"name":"8 RM","est_weight":"8.0","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"30"},{"name":"10 RM","est_weight":"7.5","act_weight":"25"},{"name":"11 RM","est_weight":"7.0","act_weight":"0"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, '2020-01-08 04:37:54', '2020-02-18 09:59:10'),
(8, 142, 6, '', '[{"name":"1 RM","est_weight":"10","act_weight":"0"},{"name":"2 RM","est_weight":"20","act_weight":"0"},{"name":"3 RM","est_weight":"30","act_weight":"0"},{"name":"4 RM","est_weight":"40","act_weight":"0"},{"name":"5 RM","est_weight":"50","act_weight":"0"},{"name":"6 RM","est_weight":"60","act_weight":"0"},{"name":"7 RM","est_weight":"70","act_weight":"0"},{"name":"8 RM","est_weight":"80","act_weight":"0"},{"name":"9 RM","est_weight":"90","act_weight":"0"},{"name":"10 RM","est_weight":"100","act_weight":"0"},{"name":"11 RM","est_weight":"110","act_weight":"0"},{"name":"12 RM","est_weight":"120","act_weight":"0"},{"name":"15 RM","est_weight":"150","act_weight":"0"}]', 0, '2020-01-16 09:21:28', '2020-01-16 09:21:28'),
(9, 60, 6, '', '[{"name":"1 RM","est_weight":"","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-01-20 11:35:23', '2020-01-20 11:35:23'),
(10, 29, 6, '1', '[{"name":"1 RM","est_weight":"0.0","act_weight":""},{"name":"2 RM","est_weight":"0.0","act_weight":""},{"name":"3 RM","est_weight":"0.0","act_weight":""},{"name":"4 RM","est_weight":"0.0","act_weight":""},{"name":"5 RM","est_weight":"0.0","act_weight":""},{"name":"6 RM","est_weight":"0.0","act_weight":""},{"name":"7 RM","est_weight":"0.0","act_weight":""},{"name":"8 RM","est_weight":"0.0","act_weight":""},{"name":"9 RM","est_weight":"0.0","act_weight":""},{"name":"10 RM","est_weight":"0.0","act_weight":""},{"name":"11 RM","est_weight":"0.0","act_weight":""},{"name":"12 RM","est_weight":"0.0","act_weight":""},{"name":"15 RM","est_weight":"0.0","act_weight":""}]', 0, '2020-01-20 11:35:43', '2020-02-22 10:39:19'),
(11, 34, 6, '', '[{"name":"1 RM","est_weight":"","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-01-20 11:36:15', '2020-01-20 11:36:15'),
(12, 110, 6, '', '[{"name":"1 RM","est_weight":"","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-01-20 11:37:15', '2020-01-20 11:37:15'),
(13, 29, 3, '10', '[{"name":"1 RM","est_weight":"21.3","act_weight":"0.0"},{"name":"2 RM","est_weight":"20.3","act_weight":"13.9"},{"name":"3 RM","est_weight":"19.8","act_weight":"12.7"},{"name":"4 RM","est_weight":"19.2","act_weight":"0.0"},{"name":"5 RM","est_weight":"18.6","act_weight":"25"},{"name":"6 RM","est_weight":"18.1","act_weight":"49.1"},{"name":"7 RM","est_weight":"17.7","act_weight":"23.1"},{"name":"8 RM","est_weight":"17.1","act_weight":"17.9"},{"name":"9 RM","est_weight":"16.4","act_weight":"23.1"},{"name":"10 RM","est_weight":"16.0","act_weight":"50"},{"name":"11 RM","est_weight":"14.9","act_weight":"11.7"},{"name":"12 RM","est_weight":"14.3","act_weight":"11.0"},{"name":"15 RM","est_weight":"13.9","act_weight":"5.0"}]', 1, '2020-01-22 06:45:51', '2020-03-21 05:51:00'),
(14, 40, 3, '', '[{"name":"1 RM","est_weight":"10.0","act_weight":"25"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.3","act_weight":"0"},{"name":"4 RM","est_weight":"9.0","act_weight":"0"},{"name":"5 RM","est_weight":"8.7","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.3","act_weight":"0"},{"name":"8 RM","est_weight":"8.0","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"0"},{"name":"10 RM","est_weight":"7.5","act_weight":"0"},{"name":"11 RM","est_weight":"7.0","act_weight":"0"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, '2020-01-22 06:52:57', '2020-01-22 06:52:57'),
(15, 30, 3, '1', '[{"name":"1 RM","est_weight":"25.0","act_weight":"50"},{"name":"2 RM","est_weight":"23.8","act_weight":"10.9"},{"name":"3 RM","est_weight":"23.3","act_weight":"0.0"},{"name":"4 RM","est_weight":"22.5","act_weight":"0.4"},{"name":"5 RM","est_weight":"21.8","act_weight":"11.0"},{"name":"6 RM","est_weight":"21.3","act_weight":"0"},{"name":"7 RM","est_weight":"20.8","act_weight":"10.0"},{"name":"8 RM","est_weight":"20.0","act_weight":"33.1"},{"name":"9 RM","est_weight":"19.3","act_weight":"14.0"},{"name":"10 RM","est_weight":"18.8","act_weight":"0"},{"name":"11 RM","est_weight":"17.5","act_weight":"2.9"},{"name":"12 RM","est_weight":"16.8","act_weight":"10.1"},{"name":"15 RM","est_weight":"16.3","act_weight":"36.9"}]', 1, '2020-01-22 06:53:35', '2020-03-11 06:51:00'),
(16, 2, 34, '121', '[{"name":"1 RM","est_weight":"10","act_weight":"0"},{"name":"2 RM","est_weight":"20","act_weight":"30"}]', 0, '2020-01-22 08:56:42', '2020-01-22 08:56:42'),
(17, 34, 3, '1', '[{"name":"1 RM","est_weight":"10.0","act_weight":"0"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.3","act_weight":"0"},{"name":"4 RM","est_weight":"9.0","act_weight":"0"},{"name":"5 RM","est_weight":"8.7","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.3","act_weight":"0"},{"name":"8 RM","est_weight":"8.0","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"0"},{"name":"10 RM","est_weight":"7.5","act_weight":"0"},{"name":"11 RM","est_weight":"7.0","act_weight":"0.12"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, '2020-01-22 09:00:49', '2020-02-29 06:34:53'),
(18, 29, 34, '10', '[{"name":"1 RM","est_weight":"40.0","act_weight":"8.9"},{"name":"2 RM","est_weight":"38.0","act_weight":"61.9"},{"name":"3 RM","est_weight":"37.2","act_weight":"3.4"},{"name":"4 RM","est_weight":"36.0","act_weight":"14.5"},{"name":"5 RM","est_weight":"34.8","act_weight":"10.9"},{"name":"6 RM","est_weight":"34.0","act_weight":"16.9"},{"name":"7 RM","est_weight":"33.2","act_weight":"11.5"},{"name":"8 RM","est_weight":"32.0","act_weight":"14.9"},{"name":"9 RM","est_weight":"30.8","act_weight":""},{"name":"10 RM","est_weight":"30.0","act_weight":"32.1"},{"name":"11 RM","est_weight":"28.0","act_weight":"0085"},{"name":"12 RM","est_weight":"26.8","act_weight":""},{"name":"15 RM","est_weight":"26.0","act_weight":""}]', 1, '2020-01-26 07:19:50', '2020-03-12 07:46:33'),
(19, 65, 3, '1', '[{"name":"1 RM","est_weight":"10.0","act_weight":"0"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.3","act_weight":"25"},{"name":"4 RM","est_weight":"9.0","act_weight":"0"},{"name":"5 RM","est_weight":"8.7","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.3","act_weight":"0"},{"name":"8 RM","est_weight":"8.0","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"0"},{"name":"10 RM","est_weight":"7.5","act_weight":"0"},{"name":"11 RM","est_weight":"7.0","act_weight":"0"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, '2020-01-28 05:26:07', '2020-01-28 05:26:07'),
(20, 72, 3, '1', '[{"name":"1 RM","est_weight":"10.0","act_weight":"0"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.3","act_weight":"0"},{"name":"4 RM","est_weight":"9.0","act_weight":"0"},{"name":"5 RM","est_weight":"8.7","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.3","act_weight":"0"},{"name":"8 RM","est_weight":"8.0","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"0"},{"name":"10 RM","est_weight":"7.5","act_weight":"0"},{"name":"11 RM","est_weight":"7.0","act_weight":"0"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, '2020-01-30 06:26:31', '2020-01-30 06:26:31'),
(21, 55, 3, '1', '[{"name":"1 RM","est_weight":"72.0","act_weight":"0"},{"name":"2 RM","est_weight":"68.4","act_weight":"0"},{"name":"3 RM","est_weight":"67.0","act_weight":"0"},{"name":"4 RM","est_weight":"64.8","act_weight":"0"},{"name":"5 RM","est_weight":"150","act_weight":"0"},{"name":"6 RM","est_weight":"61.2","act_weight":"0"},{"name":"7 RM","est_weight":"59.8","act_weight":"0"},{"name":"8 RM","est_weight":"57.6","act_weight":"0"},{"name":"9 RM","est_weight":"55.4","act_weight":"0"},{"name":"10 RM","est_weight":"54.0","act_weight":"0"},{"name":"11 RM","est_weight":"50.4","act_weight":"0"},{"name":"12 RM","est_weight":"48.2","act_weight":"0"},{"name":"15 RM","est_weight":"46.8","act_weight":"49.1"}]', 0, '2020-02-12 11:58:09', '2020-02-27 04:34:57'),
(22, 53, 3, '1', '[{"name":"1 RM","est_weight":"10.0","act_weight":"0"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.3","act_weight":"0"},{"name":"4 RM","est_weight":"9.0","act_weight":"0"},{"name":"5 RM","est_weight":"8.7","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.3","act_weight":"0"},{"name":"8 RM","est_weight":"8.0","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"0"},{"name":"10 RM","est_weight":"7.5","act_weight":"0"},{"name":"11 RM","est_weight":"7.0","act_weight":"0"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, '2020-02-12 12:15:34', '2020-02-12 12:15:34'),
(23, 67, 3, '1', '[{"name":"1 RM","est_weight":"50.0","act_weight":""},{"name":"2 RM","est_weight":"47.5","act_weight":""},{"name":"3 RM","est_weight":"46.5","act_weight":"50"},{"name":"4 RM","est_weight":"45.0","act_weight":""},{"name":"5 RM","est_weight":"43.5","act_weight":""},{"name":"6 RM","est_weight":"42.5","act_weight":""},{"name":"7 RM","est_weight":"41.5","act_weight":""},{"name":"8 RM","est_weight":"40.0","act_weight":""},{"name":"9 RM","est_weight":"38.5","act_weight":""},{"name":"10 RM","est_weight":"37.5","act_weight":""},{"name":"11 RM","est_weight":"35.0","act_weight":""},{"name":"12 RM","est_weight":"33.5","act_weight":""},{"name":"15 RM","est_weight":"32.5","act_weight":""}]', 0, '2020-02-22 10:43:55', '2020-03-02 06:19:34'),
(24, 1, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"5 RM","est_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"7 RM"},{"act_weight":"0","est_weight":"0","name":"8 RM"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"10 RM","est_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"18.1"},{"act_weight":"0","name":"12 RM","est_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-02-26 06:58:56', '2020-02-28 10:56:55'),
(25, 13, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"500"},{"name":"12 RM","est_weight":"0","act_weight":"43.1"},{"name":"15 RM","est_weight":"0","act_weight":"35.1"}]', 1, '2020-02-26 08:59:30', '2020-02-26 09:48:39'),
(26, 12, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"53.1"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"31.1"},{"name":"12 RM","est_weight":"0","act_weight":"71.9"},{"name":"15 RM","est_weight":"0","act_weight":"43.1"}]', 1, '2020-02-26 09:52:18', '2020-02-26 09:55:42'),
(27, 38, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"27.1"},{"name":"12 RM","est_weight":"0","act_weight":"38.1"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-02-26 09:56:37', '2020-02-26 12:07:19'),
(28, 37, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"30"},{"name":"12 RM","est_weight":"0","act_weight":"57.1"},{"name":"15 RM","est_weight":"0","act_weight":"282.1"}]', 1, '2020-02-26 10:11:10', '2020-02-26 10:18:37'),
(29, 28, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"22.1"},{"name":"12 RM","est_weight":"0","act_weight":"18.1"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-02-26 10:52:17', '2020-02-27 06:56:54'),
(30, 4, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"9.1"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"24.1"}]', 1, '2020-02-26 11:18:56', '2020-02-29 09:59:42'),
(31, 23, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"2 RM","est_weight":"0"},{"est_weight":"0","name":"3 RM","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"4 RM"},{"est_weight":"0","name":"5 RM","act_weight":"0"},{"est_weight":"0","name":"6 RM","act_weight":"0"},{"name":"7 RM","act_weight":"0","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"8 RM"},{"name":"9 RM","act_weight":"0","est_weight":"0"},{"act_weight":"0","name":"10 RM","est_weight":"0"},{"act_weight":"0","name":"11 RM","est_weight":"0"},{"act_weight":"0","name":"12 RM","est_weight":"0"},{"est_weight":"0","name":"15 RM","act_weight":"15.1"}]', 0, '2020-02-26 11:34:36', '2020-02-26 11:34:36'),
(32, 54, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"13.1"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-02-26 12:14:29', '2020-02-26 12:14:36'),
(33, 50, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"30.1"}]', 1, '2020-02-26 12:22:33', '2020-02-26 12:24:20'),
(34, 5, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"19.1"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-02-26 12:25:06', '2020-02-26 12:25:10'),
(35, 10, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","est_weight":"0","name":"6 RM"},{"name":"7 RM","act_weight":"0","est_weight":"0"},{"est_weight":"0","name":"8 RM","act_weight":"0"},{"est_weight":"0","name":"9 RM","act_weight":"0"},{"name":"10 RM","act_weight":"0","est_weight":"0"},{"act_weight":"23.1","name":"11 RM","est_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","name":"15 RM","act_weight":"0"}]', 0, '2020-02-27 04:05:25', '2020-02-27 04:05:25'),
(36, 52, 3, '1', '[{"name":"1 RM","est_weight":"76.0","act_weight":"0"},{"name":"2 RM","est_weight":"72.2","act_weight":"0"},{"name":"3 RM","est_weight":"70.7","act_weight":"0"},{"name":"4 RM","est_weight":"68.4","act_weight":"0"},{"name":"5 RM","est_weight":"66.1","act_weight":"0"},{"name":"6 RM","est_weight":"64.6","act_weight":"0"},{"name":"7 RM","est_weight":"63.1","act_weight":"0"},{"name":"8 RM","est_weight":"60.8","act_weight":"0"},{"name":"9 RM","est_weight":"58.5","act_weight":"0"},{"name":"10 RM","est_weight":"57.0","act_weight":"0"},{"name":"11 RM","est_weight":"53.2","act_weight":"19.1"},{"name":"12 RM","est_weight":"50.9","act_weight":"0"},{"name":"15 RM","est_weight":"49.4","act_weight":"0"}]', 0, '2020-02-27 04:15:37', '2020-03-02 06:22:48'),
(37, 11, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","act_weight":"0","est_weight":"0"},{"act_weight":"0","est_weight":"0","name":"3 RM"},{"act_weight":"0","est_weight":"0","name":"4 RM"},{"act_weight":"0","name":"5 RM","est_weight":"0"},{"est_weight":"0","name":"6 RM","act_weight":"0"},{"name":"7 RM","act_weight":"0","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"8 RM"},{"est_weight":"0","act_weight":"0","name":"9 RM"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"act_weight":"1520","name":"11 RM","est_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"15 RM","est_weight":"0"}]', 0, '2020-02-27 04:59:06', '2020-02-27 04:59:06'),
(38, 25, 3, NULL, '[{"act_weight":"0","name":"1 RM","est_weight":"0"},{"name":"2 RM","act_weight":"0","est_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","name":"4 RM","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"6 RM"},{"act_weight":"0","name":"7 RM","est_weight":"0"},{"act_weight":"0","est_weight":"0","name":"8 RM"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","name":"10 RM","act_weight":"0"},{"act_weight":"0","est_weight":"0","name":"11 RM"},{"est_weight":"0","act_weight":"0","name":"12 RM"},{"act_weight":"13.1","name":"15 RM","est_weight":"0"}]', 0, '2020-02-27 05:09:30', '2020-02-27 05:09:30'),
(39, 9, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"68.1"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"16.1"}]', 1, '2020-02-27 06:05:02', '2020-02-27 07:18:39'),
(40, 6, 3, NULL, '[{"name":"1 RM","act_weight":"0","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"2 RM"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"5 RM","est_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"7 RM","est_weight":"0"},{"act_weight":"0","name":"8 RM","est_weight":"0"},{"name":"9 RM","act_weight":"0","est_weight":"0"},{"act_weight":"0","est_weight":"0","name":"10 RM"},{"name":"11 RM","est_weight":"0","act_weight":"19.1"},{"act_weight":"0","name":"12 RM","est_weight":"0"},{"act_weight":"0","name":"15 RM","est_weight":"0"}]', 0, '2020-02-27 07:25:02', '2020-02-27 07:25:02'),
(41, 61, 3, '1', '[{"name":"1 RM","est_weight":"5.0","act_weight":""},{"name":"2 RM","est_weight":"4.8","act_weight":""},{"name":"3 RM","est_weight":"4.7","act_weight":""},{"name":"4 RM","est_weight":"4.5","act_weight":""},{"name":"5 RM","est_weight":"4.4","act_weight":""},{"name":"6 RM","est_weight":"4.3","act_weight":""},{"name":"7 RM","est_weight":"4.1","act_weight":""},{"name":"8 RM","est_weight":"4.0","act_weight":""},{"name":"9 RM","est_weight":"3.9","act_weight":""},{"name":"10 RM","est_weight":"3.8","act_weight":""},{"name":"11 RM","est_weight":"3.5","act_weight":""},{"name":"12 RM","est_weight":"3.4","act_weight":""},{"name":"15 RM","est_weight":"3.3","act_weight":""}]', 0, '2020-02-27 08:48:11', '2020-02-29 10:38:12'),
(42, 64, 3, NULL, '[{"act_weight":"0","name":"1 RM","est_weight":"0"},{"act_weight":"0","name":"2 RM","est_weight":"0"},{"est_weight":"0","name":"3 RM","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"4 RM"},{"est_weight":"0","act_weight":"0","name":"5 RM"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"7 RM","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"8 RM"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"14.1"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","est_weight":"0","name":"15 RM"}]', 0, '2020-02-27 08:50:40', '2020-02-27 08:50:40'),
(43, 45, 3, NULL, '[{"est_weight":"0","name":"1 RM","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"4 RM","est_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","est_weight":"0","name":"8 RM"},{"est_weight":"0","act_weight":"0","name":"9 RM"},{"act_weight":"0","name":"10 RM","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"11 RM"},{"act_weight":"33.1","name":"12 RM","est_weight":"0"},{"act_weight":"0","name":"15 RM","est_weight":"0"}]', 0, '2020-02-27 09:15:00', '2020-02-27 09:15:00'),
(44, 42, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"52.1"},{"name":"12 RM","est_weight":"0","act_weight":"8.1"},{"name":"15 RM","est_weight":"0","act_weight":"27.1"}]', 1, '2020-02-27 09:44:42', '2020-02-29 09:25:40'),
(45, 7, 3, NULL, '[{"act_weight":"0","name":"1 RM","est_weight":"0"},{"name":"2 RM","act_weight":"0","est_weight":"0"},{"name":"3 RM","act_weight":"0","est_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"6 RM","est_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","act_weight":"0","est_weight":"0"},{"name":"10 RM","act_weight":"0","est_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"act_weight":"20.1","name":"12 RM","est_weight":"0"},{"act_weight":"0","est_weight":"0","name":"15 RM"}]', 0, '2020-02-27 09:49:08', '2020-02-27 09:49:08'),
(46, 32, 3, NULL, '[{"est_weight":"0","name":"1 RM","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"2 RM"},{"act_weight":"0","name":"3 RM","est_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","name":"5 RM","act_weight":"0"},{"act_weight":"0","est_weight":"0","name":"6 RM"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","name":"8 RM","act_weight":"0"},{"act_weight":"0","name":"9 RM","est_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"act_weight":"37.1","est_weight":"0","name":"11 RM"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"15 RM"}]', 0, '2020-02-27 10:08:23', '2020-02-27 10:08:23'),
(47, 20, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"53.1"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"35.1"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-02-27 11:19:05', '2020-02-27 11:20:17'),
(48, 31, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"21.2"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-02-27 11:28:04', '2020-02-27 11:29:50'),
(49, 26, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"98"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0.9"},{"name":"15 RM","est_weight":"0","act_weight":"20.1"}]', 0, '2020-02-27 11:32:11', '2020-02-27 11:33:36'),
(50, 126, 34, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"38.9"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 1, '2020-02-27 17:10:43', '2020-02-27 17:10:55'),
(51, 31, 34, '1', '[{"name":"1 RM","est_weight":"60.0","act_weight":"65"},{"name":"2 RM","est_weight":"57.0","act_weight":"55"},{"name":"3 RM","est_weight":"55.8","act_weight":""},{"name":"4 RM","est_weight":"54.0","act_weight":"56"},{"name":"5 RM","est_weight":"52.2","act_weight":"55"},{"name":"6 RM","est_weight":"51.0","act_weight":""},{"name":"7 RM","est_weight":"49.8","act_weight":""},{"name":"8 RM","est_weight":"48.0","act_weight":""},{"name":"9 RM","est_weight":"46.2","act_weight":""},{"name":"10 RM","est_weight":"45.0","act_weight":""},{"name":"11 RM","est_weight":"42.0","act_weight":""},{"name":"12 RM","est_weight":"40.2","act_weight":""},{"name":"15 RM","est_weight":"39.0","act_weight":""}]', 0, '2020-02-28 02:58:31', '2020-02-28 03:08:58'),
(52, 34, 34, NULL, '[{"est_weight":"0","act_weight":"0","name":"1 RM"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"10.9"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"act_weight":"0","name":"5 RM","est_weight":"0"},{"name":"6 RM","act_weight":"0","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"7 RM"},{"name":"8 RM","act_weight":"0","est_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","name":"10 RM","act_weight":"0"},{"est_weight":"0","name":"11 RM","act_weight":"0"},{"act_weight":"0","name":"12 RM","est_weight":"0"},{"act_weight":"0","name":"15 RM","est_weight":"0"}]', 0, '2020-02-28 03:27:26', '2020-02-28 03:27:26'),
(53, 30, 34, '1', '[{"name":"1 RM","est_weight":"60.0","act_weight":"55"},{"name":"2 RM","est_weight":"57.0","act_weight":"55"},{"name":"3 RM","est_weight":"55.8","act_weight":"055"},{"name":"4 RM","est_weight":"54.0","act_weight":"060"},{"name":"5 RM","est_weight":"52.2","act_weight":"13.5"},{"name":"6 RM","est_weight":"51.0","act_weight":"13.9"},{"name":"7 RM","est_weight":"49.8","act_weight":"9.5"},{"name":"8 RM","est_weight":"48.0","act_weight":"10.8"},{"name":"9 RM","est_weight":"46.2","act_weight":""},{"name":"10 RM","est_weight":"45.0","act_weight":""},{"name":"11 RM","est_weight":"42.0","act_weight":""},{"name":"12 RM","est_weight":"40.2","act_weight":""},{"name":"15 RM","est_weight":"39.0","act_weight":""}]', 0, '2020-02-28 03:42:57', '2020-03-12 07:48:50'),
(54, 33, 34, NULL, '[{"act_weight":"0","est_weight":"0","name":"1 RM"},{"act_weight":"0","name":"2 RM","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"3 RM"},{"est_weight":"0","name":"4 RM","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"5 RM"},{"act_weight":"0","name":"6 RM","est_weight":"0"},{"name":"7 RM","act_weight":"0","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"8 RM"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","name":"10 RM","act_weight":"0"},{"name":"11 RM","act_weight":"0","est_weight":"0"},{"est_weight":"0","name":"12 RM","act_weight":"0"},{"name":"15 RM","act_weight":"0","est_weight":"0"}]', 0, '2020-02-28 04:06:53', '2020-02-28 04:06:53'),
(55, 22, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"12.1"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"20.1"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"18.1"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, '2020-02-28 09:20:19', '2020-02-28 09:25:13'),
(56, 14, 3, NULL, '[{"est_weight":"0","act_weight":"0","name":"1 RM"},{"est_weight":"0","name":"2 RM","act_weight":"0"},{"name":"3 RM","act_weight":"0","est_weight":"0"},{"act_weight":"0","est_weight":"0","name":"4 RM"},{"est_weight":"0","name":"5 RM","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"6 RM"},{"est_weight":"0","act_weight":"0","name":"7 RM"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"est_weight":"0","act_weight":"0","name":"9 RM"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"act_weight":"13.9","name":"11 RM","est_weight":"0"},{"act_weight":"0","name":"12 RM","est_weight":"0"},{"est_weight":"0","act_weight":"0","name":"15 RM"}]', 0, '2020-02-28 10:25:40', '2020-02-28 10:25:40'),
(57, 38, 34, '1', '[{"name":"1 RM","est_weight":"50.0","act_weight":"0"},{"name":"2 RM","est_weight":"47.5","act_weight":"0"},{"name":"3 RM","est_weight":"46.5","act_weight":"10.5"},{"name":"4 RM","est_weight":"45.0","act_weight":"0"},{"name":"5 RM","est_weight":"43.5","act_weight":"0"},{"name":"6 RM","est_weight":"42.5","act_weight":"0"},{"name":"7 RM","est_weight":"41.5","act_weight":"0"},{"name":"8 RM","est_weight":"40.0","act_weight":"0"},{"name":"9 RM","est_weight":"38.5","act_weight":"0"},{"name":"10 RM","est_weight":"37.5","act_weight":"0"},{"name":"11 RM","est_weight":"35.0","act_weight":"0"},{"name":"12 RM","est_weight":"33.5","act_weight":"0"},{"name":"15 RM","est_weight":"32.5","act_weight":"0"}]', 0, '2020-03-02 08:10:18', '2020-03-02 08:11:04'),
(58, 35, 3, NULL, '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0.9"},{"name":"12 RM","est_weight":"0","act_weight":"12.0"},{"name":"15 RM","est_weight":"0","act_weight":"0.8"}]', 1, '2020-04-28 08:59:30', '2020-04-28 09:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `custom_training_programs`
--

DROP TABLE IF EXISTS `custom_training_programs`;
CREATE TABLE IF NOT EXISTS `custom_training_programs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL COMMENT 'Phase title',
  `code` varchar(200) DEFAULT NULL COMMENT 'from title',
  `is_active` tinyint(1) DEFAULT '1' COMMENT 'Phase is active or not',
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'Parant id from this table',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_training_programs`
--

INSERT INTO `custom_training_programs` (`id`, `title`, `code`, `is_active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Preparatory Phase(General Preparatory)', 'PREPARATORY_PHASE(GENERAL_PREPARATORY)', 1, NULL, NULL, NULL),
(2, 'Preparatory Phase (Specific Preparatory)', 'PREPARATORY_PHASE(SPECIFIC_PREPARATORY)', 1, NULL, NULL, NULL),
(3, 'Competitive Phase (Precompetitive)', 'COMPETITIVE_PHASE(PRECOMPETITIVE)', 1, NULL, NULL, NULL),
(4, 'Competitive Phase (Competitive)', 'COMPETITIVE_PHASE(COMPETITIVE)', 1, NULL, NULL, NULL),
(5, 'Transition Phase', 'TRANSITION_PHASE', 1, NULL, NULL, NULL),
(6, 'Base run', 'BASE_RUN', 1, 1, NULL, NULL),
(7, 'Long slow run', 'LONG_SLOW_RUN', 1, 2, NULL, NULL),
(8, 'Pace/ Tempo run', 'PACE/TEMPO_RUN', 1, 2, NULL, NULL),
(9, 'Aerobic Intervals run', 'AEROBIC_INTERVALS_RUN', 1, 2, NULL, NULL),
(10, 'Speed Intervals run', 'SPEED_INTERVALS_RUN', 1, 2, NULL, NULL),
(11, 'Hill run', 'HILL RUN', 1, 2, NULL, NULL),
(12, 'Fartlek run', 'FARTLEK_RUN', 1, 2, NULL, NULL),
(13, 'Maintenance', 'MAINTENANCE', 1, 3, NULL, NULL),
(14, 'Tapering', 'TAPERING', 1, 4, NULL, NULL),
(15, 'Active Rest', 'ACTIVE_REST', 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
CREATE TABLE IF NOT EXISTS `equipments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'Name of Equipment',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'this is active or not',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COMMENT='use in Library ';

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `name`, `code`, `is_active`, `updated_at`, `created_at`) VALUES
(1, 'Bodyweight', 'Bodyweight', 1, '2019-07-09 06:09:03', NULL),
(2, 'Machine', 'Machine', 1, NULL, NULL),
(3, 'Dumbbell', 'Dumbbell', 1, NULL, NULL),
(4, 'Kettlebell', 'Kettlebell', 1, NULL, NULL),
(5, 'Exercise Bell', 'Exercise Bell', 1, NULL, NULL),
(6, 'Agillity Ladder', 'Agillity Ladder', 1, NULL, NULL),
(7, 'Cable', 'CABLE', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(8, 'Weighted', 'WEIGHTED', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(9, 'Barbell', 'BARBELL', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(10, 'Suspended', 'SUSPENDED', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(11, 'T-bar', 'T_BAR', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(12, 'Resistance Band', 'RESISTANCE_BAND', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(13, 'EZ bar', 'EZ_BAR', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(14, 'Rack', 'RACK', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(15, 'Roman chair', 'ROMAN_CHAIR', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00'),
(16, 'Suspension Trainer', 'SUSPENSION_TRAINER', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(17, 'Bench', 'BENCH', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(18, 'Swiss Ball', 'SWISS_BALL', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
CREATE TABLE IF NOT EXISTS `event_types` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Event name',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'for unique check',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Aerobic', 'AEROBIC', 1, '2019-12-24 18:30:00', '2019-12-24 18:30:00'),
(2, 'Aerial yoga', 'AERIAL_YOGA', 1, '2019-12-24 18:30:00', '2019-12-24 18:30:00'),
(3, 'Boxing', 'BOXING', 1, '2019-12-24 18:30:00', '2019-12-24 18:30:00'),
(4, 'Cross-country runner', 'CROSS_COUNTRY_RUNNER', 1, '2019-12-24 18:30:00', '2019-12-24 18:30:00'),
(5, 'Decathion', 'DECATHION', 1, '2019-12-24 18:30:00', '2019-12-24 18:30:00'),
(6, 'Cycling', 'CYCLING', 1, '2019-12-24 18:30:00', '2019-12-24 18:30:00'),
(7, 'Bodybuilding', 'BODYBUILDING', 1, '2019-12-24 18:30:00', '2019-12-24 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `feed_comments`
--

DROP TABLE IF EXISTS `feed_comments`;
CREATE TABLE IF NOT EXISTS `feed_comments` (
  `id` bigint(20) unsigned NOT NULL,
  `feed_id` bigint(20) NOT NULL COMMENT 'feed id ',
  `user_id` bigint(20) NOT NULL COMMENT 'who entry this comment',
  `comment` text COLLATE utf8mb4_unicode_ci COMMENT 'Comment text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feed_comments`
--

INSERT INTO `feed_comments` (`id`, `feed_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 'First Comment', '2019-08-22 05:28:29', '2019-08-22 05:28:29'),
(2, 14, 1, '2 Comment', '2019-08-22 05:28:35', '2019-08-22 05:28:35'),
(3, 1, 1, '3 Comment', '2019-08-22 05:28:37', '2019-08-22 05:28:37'),
(4, 1, 1, '4 Comment', '2019-08-22 05:28:39', '2019-08-22 05:28:39'),
(5, 14, 1, '5 Comment', '2019-08-22 05:28:39', '2019-08-22 05:28:39'),
(6, 14, 1, '6 Comment', '2019-08-22 05:28:41', '2019-08-22 05:28:41'),
(7, 14, 1, '7 Comment', '2019-08-22 05:28:42', '2019-08-22 05:28:42'),
(8, 14, 1, '8 Comment', '2019-08-22 05:28:44', '2019-08-22 05:28:44'),
(9, 14, 1, '9 Comment', '2019-08-22 05:28:45', '2019-08-22 05:28:45'),
(10, 14, 1, '10 Comment', '2019-08-22 05:28:48', '2019-08-22 05:28:48'),
(11, 14, 1, '11 Comment', '2019-08-22 05:28:49', '2019-08-22 05:28:49'),
(12, 14, 1, '12 Comment', '2019-08-22 05:28:50', '2019-08-22 05:28:50'),
(13, 14, 1, '13 Comment', '2019-08-22 05:28:52', '2019-08-22 05:28:52'),
(14, 14, 1, '14 Comment', '2019-08-22 05:28:54', '2019-08-22 05:28:54'),
(15, 14, 1, '15 Comment', '2019-08-22 05:28:55', '2019-08-22 05:28:55'),
(16, 14, 1, '16 Comment', '2019-08-22 05:28:57', '2019-08-22 05:28:57'),
(17, 14, 1, '17 Comment', '2019-08-22 05:28:58', '2019-08-22 05:28:58'),
(18, 14, 1, '18 Comment', '2019-08-22 05:29:00', '2019-08-22 05:29:00'),
(19, 8, 1, '19 Comment', '2019-08-22 05:29:02', '2019-08-22 05:29:02'),
(20, 14, 1, '20 Comment', '2019-08-22 05:29:04', '2019-08-22 05:29:04'),
(21, 14, 1, '22 Comment', '2019-08-22 05:29:08', '2019-08-22 05:29:08'),
(22, 14, 1, '23 Comment', '2019-08-22 05:29:13', '2019-08-22 05:29:13'),
(23, 14, 1, '24 Comment', '2019-08-22 05:29:14', '2019-08-22 05:29:14'),
(24, 14, 1, '25 Comment', '2019-08-22 05:29:15', '2019-08-22 05:29:15'),
(25, 14, 1, '26 Comment', '2019-08-22 05:29:16', '2019-08-22 05:29:16'),
(26, 14, 1, '27 Comment', '2019-08-22 05:29:18', '2019-08-22 05:29:18'),
(27, 14, 1, '28 Comment', '2019-08-22 05:29:19', '2019-08-22 05:29:19'),
(28, 14, 1, '29 Comment', '2019-08-22 05:29:20', '2019-08-22 05:29:20'),
(29, 14, 1, '30 Comment', '2019-08-22 05:29:24', '2019-08-22 05:29:24'),
(30, 8, 1, '31 Comment', '2019-08-22 05:29:26', '2019-08-22 05:29:26'),
(31, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:18:40', '2019-08-22 11:18:40'),
(32, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:18:55', '2019-08-22 11:18:55'),
(33, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:19:05', '2019-08-22 11:19:05'),
(34, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:19:12', '2019-08-22 11:19:12'),
(35, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:19:17', '2019-08-22 11:19:17'),
(36, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:20:01', '2019-08-22 11:20:01'),
(37, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:20:09', '2019-08-22 11:20:09'),
(38, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:21:08', '2019-08-22 11:21:08'),
(39, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:21:34', '2019-08-22 11:21:34'),
(40, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:21:44', '2019-08-22 11:21:44'),
(41, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:22:34', '2019-08-22 11:22:34'),
(42, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:23:12', '2019-08-22 11:23:12'),
(43, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:23:27', '2019-08-22 11:23:27'),
(44, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:23:39', '2019-08-22 11:23:39'),
(45, 14, 1, 'hi', '2019-08-22 11:23:48', '2019-08-22 11:23:48'),
(46, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:24:02', '2019-08-22 11:24:02'),
(47, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:30:00', '2019-08-22 11:30:00'),
(48, 14, 1, 'hello', '2019-08-22 11:30:09', '2019-08-22 11:30:09'),
(49, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:30:19', '2019-08-22 11:30:19'),
(50, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:30:26', '2019-08-22 11:30:26'),
(51, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:31:37', '2019-08-22 11:31:37'),
(52, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:31:44', '2019-08-22 11:31:44'),
(53, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:31:57', '2019-08-22 11:31:57'),
(54, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:32:13', '2019-08-22 11:32:13'),
(55, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:32:19', '2019-08-22 11:32:19'),
(56, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:32:34', '2019-08-22 11:32:34'),
(57, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:33:18', '2019-08-22 11:33:18'),
(58, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:33:23', '2019-08-22 11:33:23'),
(59, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:33:35', '2019-08-22 11:33:35'),
(60, 14, 1, 'hi', '2019-08-22 11:34:01', '2019-08-22 11:34:01'),
(61, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:34:44', '2019-08-22 11:34:44'),
(62, 14, 1, 'hi1', '2019-08-22 11:35:12', '2019-08-22 11:35:12'),
(63, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:35:54', '2019-08-22 11:35:54'),
(64, 14, 1, 'LOL Comment', '2019-08-22 11:36:09', '2019-08-22 11:36:09'),
(65, 14, 1, 'LOL Comment', '2019-08-22 11:36:31', '2019-08-22 11:36:31'),
(66, 14, 1, 'LOL Comment', '2019-08-22 11:36:47', '2019-08-22 11:36:47'),
(67, 14, 1, 'hi2', '2019-08-22 11:38:22', '2019-08-22 11:38:22'),
(68, 14, 1, 'LOL Comment', '2019-08-22 11:40:24', '2019-08-22 11:40:24'),
(69, 14, 1, 'LOL Comment', '2019-08-22 11:40:58', '2019-08-22 11:40:58'),
(70, 14, 1, '1', '2019-08-22 11:43:29', '2019-08-22 11:43:29'),
(71, 14, 1, '2', '2019-08-22 11:43:46', '2019-08-22 11:43:46'),
(72, 14, 1, '3', '2019-08-22 11:43:50', '2019-08-22 11:43:50'),
(73, 14, 1, '4', '2019-08-22 11:43:51', '2019-08-22 11:43:51'),
(74, 14, 1, '5', '2019-08-22 11:43:52', '2019-08-22 11:43:52'),
(75, 14, 1, '6', '2019-08-22 11:43:53', '2019-08-22 11:43:53'),
(76, 14, 1, 'LLLL Comment', '2019-08-22 11:44:03', '2019-08-22 11:44:03'),
(77, 14, 1, '3', '2019-08-22 11:56:00', '2019-08-22 11:56:00'),
(78, 14, 1, 'hello', '2019-08-22 11:59:03', '2019-08-22 11:59:03'),
(79, 7, 1, 'hi', '2019-08-22 12:15:39', '2019-08-22 12:15:39'),
(80, 7, 1, 'hello', '2019-08-22 12:15:43', '2019-08-22 12:15:43'),
(81, 7, 1, '5', '2019-08-22 12:21:42', '2019-08-22 12:21:42'),
(82, 8, 1, '3', '2019-08-22 12:30:13', '2019-08-22 12:30:13'),
(83, 7, 1, '1', '2019-08-22 13:04:08', '2019-08-22 13:04:08'),
(84, 7, 1, '2', '2019-08-22 13:04:09', '2019-08-22 13:04:09'),
(85, 7, 1, '3', '2019-08-22 13:04:10', '2019-08-22 13:04:10'),
(86, 7, 1, '4', '2019-08-22 13:04:10', '2019-08-22 13:04:10'),
(87, 7, 1, '5', '2019-08-22 13:04:11', '2019-08-22 13:04:11'),
(88, 7, 1, '6', '2019-08-22 13:04:11', '2019-08-22 13:04:11'),
(89, 14, 3, 'hi', '2019-09-04 11:52:13', '2019-09-04 11:52:13'),
(90, 7, 22, 'a', '2019-09-05 04:38:14', '2019-09-05 04:38:14'),
(91, 7, 22, 'zxc', '2019-09-05 04:38:23', '2019-09-05 04:38:23'),
(92, 14, 3, 'kjdhnfjklndfgkl l jdfhkljhn ldkfghndfgkln lodge hkldfgn hkldfgnhkldfgnklh iohjtiohj silken ouhenighnerdfjkikj3 iowahft q2;e pi whispering Oruro Jeep pjuyeo90rty34', '2019-09-27 05:50:52', '2019-09-27 05:50:52'),
(93, 14, 3, 'KSU bjkdsjksnjkndfs sdfioghdfs gbefirbg sdibgidfsbg gbidfsbgsbg gojdfogfds sng ognoe jr gopejgoergergerhyerth rtjhrryeikuhiuhewiuhgeirwhgeiuhriouewrhiuehr iuehriuherghergiouwhiorhgoqaiohioghwaoihoghrohgeowhjaeobnioqw ugebghraibfwg qaehsheahr wt hergh er e hr gehaq', '2019-09-27 05:51:58', '2019-09-27 05:51:58'),
(94, 8, 3, 'hi', '2019-12-05 12:06:56', '2019-12-05 12:06:56'),
(95, 2, 34, 'test comment', '2019-12-29 04:31:43', '2019-12-29 04:31:43'),
(96, 2, 34, 'great', '2020-01-04 17:06:33', '2020-01-04 17:06:33'),
(97, 2, 6, 'comments', '2020-01-16 08:50:53', '2020-01-16 08:50:53'),
(98, 1, 6, 'request for training', '2020-01-16 10:55:14', '2020-01-16 10:55:14'),
(99, 31, 3, 'hi', '2020-01-28 09:03:33', '2020-01-28 09:03:33'),
(100, 49, 34, 'hii test', '2020-02-28 05:16:30', '2020-02-28 05:16:30'),
(101, 46, 34, 'good job', '2020-03-08 13:28:57', '2020-03-08 13:28:57'),
(102, 45, 3, 'tesr', '2020-03-14 10:38:00', '2020-03-14 10:38:00'),
(103, 46, 34, 'good job', '2020-03-18 02:58:29', '2020-03-18 02:58:29'),
(104, 12, 34, 'good job', '2020-03-22 17:10:23', '2020-03-22 17:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `feed_likes`
--

DROP TABLE IF EXISTS `feed_likes`;
CREATE TABLE IF NOT EXISTS `feed_likes` (
  `id` bigint(20) unsigned NOT NULL,
  `feed_id` bigint(20) NOT NULL COMMENT 'Training Log id as feed_id ',
  `user_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'liked user ids as array',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feed_likes`
--

INSERT INTO `feed_likes` (`id`, `feed_id`, `user_ids`, `created_at`, `updated_at`) VALUES
(1, 14, '1,2,3,4', '2019-08-21 09:24:49', '2019-08-22 07:25:37'),
(2, 8, '1', '2019-08-22 07:23:43', '2019-08-22 07:23:43'),
(3, 8, '1', '2019-08-22 07:24:41', '2019-08-22 07:24:41'),
(4, 8, '1', '2019-08-22 07:26:00', '2019-08-22 07:26:00'),
(5, 8, '4', '2019-08-22 07:26:41', '2019-08-22 07:26:41'),
(6, 8, '4', '2019-08-22 07:27:17', '2019-08-22 07:27:17'),
(7, 8, '4', '2019-08-22 07:28:18', '2019-08-22 08:36:39'),
(8, 8, '4,3', '2019-08-22 07:28:47', '2019-12-09 06:02:10'),
(9, 41, '4', '2019-08-22 07:29:06', '2019-08-22 07:29:06'),
(10, 14, '1', '2019-08-22 07:48:38', '2019-08-22 07:48:38'),
(11, 14, '1,22', '2019-08-22 07:48:45', '2019-12-05 11:47:03'),
(12, 41, '4', '2019-08-22 09:43:18', '2019-08-22 09:43:18'),
(13, 41, '4', '2019-08-22 09:43:23', '2019-08-22 09:43:23'),
(14, 41, '4', '2019-08-22 09:43:28', '2019-08-22 09:43:28'),
(15, 41, '4', '2019-08-22 09:43:31', '2019-08-22 09:43:31'),
(16, 41, '4', '2019-08-22 09:43:39', '2019-08-22 09:47:05'),
(17, 7, '1,3,22', '2019-08-22 12:53:49', '2019-09-24 14:47:07'),
(18, 2, '34,3', '2019-12-29 04:31:19', '2020-01-16 10:57:28'),
(20, 1, '', '2020-01-16 10:58:54', '2020-01-16 11:03:08'),
(21, 12, '3,34', '2020-01-22 11:26:12', '2020-04-22 16:17:11'),
(22, 10, '3', '2020-01-22 11:26:13', '2020-01-22 11:26:13'),
(23, 31, '3', '2020-01-28 09:03:23', '2020-01-28 09:03:23'),
(25, 46, '3', '2020-02-26 06:16:06', '2020-04-22 16:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'From name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or deactivate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'English', 'ENGLISH', 1, NULL, NULL),
(2, 'Gujarati', 'GUJARATI', 1, NULL, NULL),
(3, 'Maray', 'Maray', 0, '2019-07-09 06:31:18', '2019-07-09 06:32:18'),
(4, 'Spenish', 'Spenish', 1, '2019-07-09 06:32:10', '2019-07-09 06:32:12'),
(5, 'Test', 'test', 0, '2019-07-18 04:28:10', '2019-07-18 04:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

DROP TABLE IF EXISTS `libraries`;
CREATE TABLE IF NOT EXISTS `libraries` (
  `id` bigint(20) unsigned NOT NULL,
  `exercise_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Exercise name',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'From users table',
  `category_id` bigint(20) NOT NULL COMMENT 'Main Body Part.',
  `regions_ids` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'From Sub Body parts table ids,',
  `mechanics_id` bigint(20) DEFAULT NULL COMMENT 'From mechanics table',
  `targeted_muscle` text COLLATE utf8mb4_unicode_ci COMMENT 'From targeted_muscles table',
  `action_force_id` bigint(20) DEFAULT NULL COMMENT 'From action_force table',
  `equipment_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'From equipment table',
  `repetition_max` text COLLATE utf8mb4_unicode_ci COMMENT 'Store array object',
  `is_show_again_message` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'for show alert message',
  `exercise_link` text COLLATE utf8mb4_unicode_ci COMMENT 'link url.',
  `selected_rm` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User selected RM',
  `is_favorite` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'show in favorite list',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `libraries`
--

INSERT INTO `libraries` (`id`, `exercise_name`, `user_id`, `category_id`, `regions_ids`, `mechanics_id`, `targeted_muscle`, `action_force_id`, `equipment_ids`, `repetition_max`, `is_show_again_message`, `exercise_link`, `selected_rm`, `is_favorite`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Test', 23, 2, '21,25', 2, '26,29', 7, '14', '[{"name":"1 RM","est_weight":"10","act_weight":"5"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.300000000000001","act_weight":"0"},{"name":"4 RM","est_weight":"9","act_weight":"0"},{"name":"5 RM","est_weight":"8.699999999999999","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.300000000000001","act_weight":"0"},{"name":"8 RM","est_weight":"8","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"0"},{"name":"10 RM","est_weight":"7.5","act_weight":"0"},{"name":"11 RM","est_weight":"7","act_weight":"0"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, 'Test', NULL, 1, 0, '2019-11-28 06:01:33', '2019-11-28 08:40:34'),
(5, 'Testy', 23, 1, '15,6', 3, '38,27', 7, '15', '[{"name":"1 RM","est_weight":"10","act_weight":"36"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.300000000000001","act_weight":"0"},{"name":"4 RM","est_weight":"9","act_weight":"0"},{"name":"5 RM","est_weight":"8.699999999999999","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.300000000000001","act_weight":"0"},{"name":"8 RM","est_weight":"8","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"0"},{"name":"10 RM","est_weight":"7.5","act_weight":"0"},{"name":"11 RM","est_weight":"7","act_weight":"0"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, 'Test1', NULL, 1, 0, '2019-11-28 08:42:08', '2019-11-29 04:02:18'),
(9, 'Fdfd', 23, 2, '21', NULL, NULL, NULL, NULL, '[{"name":"1 RM","est_weight":"25","act_weight":"0"},{"name":"2 RM","est_weight":"23.8","act_weight":"0"},{"name":"3 RM","est_weight":"23.3","act_weight":"0"},{"name":"4 RM","est_weight":"22.5","act_weight":"0"},{"name":"5 RM","est_weight":"21.8","act_weight":"0"},{"name":"6 RM","est_weight":"21.3","act_weight":"0"},{"name":"7 RM","est_weight":"20.8","act_weight":"0"},{"name":"8 RM","est_weight":"20","act_weight":"0"},{"name":"9 RM","est_weight":"19.3","act_weight":"0"},{"name":"10 RM","est_weight":"18.8","act_weight":"0"},{"name":"11 RM","est_weight":"17.5","act_weight":"0"},{"name":"12 RM","est_weight":"16.8","act_weight":"0"},{"name":"15 RM","est_weight":"16.3","act_weight":"0"}]', 0, NULL, NULL, 0, 0, '2019-12-03 04:44:06', '2019-12-03 04:44:06'),
(10, 'Gaff', 23, 3, '33,15', 3, 'test', 3, '14', '[{"name":"1 RM","est_weight":"40.0","act_weight":"0"},{"name":"2 RM","est_weight":"38.0","act_weight":"0"},{"name":"3 RM","est_weight":"37.2","act_weight":"0"},{"name":"4 RM","est_weight":"36.0","act_weight":"0"},{"name":"5 RM","est_weight":"34.8","act_weight":"0"},{"name":"6 RM","est_weight":"34.0","act_weight":"0"},{"name":"7 RM","est_weight":"33.2","act_weight":"0"},{"name":"8 RM","est_weight":"32.0","act_weight":"0"},{"name":"9 RM","est_weight":"30.8","act_weight":"0"},{"name":"10 RM","est_weight":"30.0","act_weight":"0"},{"name":"11 RM","est_weight":"28.0","act_weight":"0"},{"name":"12 RM","est_weight":"26.8","act_weight":"0"},{"name":"15 RM","est_weight":"26.0","act_weight":"0"}]', 0, 'Test', '10', 0, 0, '2019-12-03 05:57:31', '2019-12-03 06:32:41'),
(11, 'Test', 23, 2, '30,25', 2, 'test', 6, '16', '[{"name":"1 RM","est_weight":"26.7","act_weight":"0"},{"name":"2 RM","est_weight":"25.3","act_weight":"0"},{"name":"3 RM","est_weight":"24.8","act_weight":"0"},{"name":"4 RM","est_weight":"24","act_weight":"0"},{"name":"5 RM","est_weight":"23.2","act_weight":"0"},{"name":"6 RM","est_weight":"22.7","act_weight":"0"},{"name":"7 RM","est_weight":"22.1","act_weight":"0"},{"name":"8 RM","est_weight":"21.3","act_weight":"0"},{"name":"9 RM","est_weight":"20.5","act_weight":"0"},{"name":"10 RM","est_weight":"20","act_weight":"0"},{"name":"11 RM","est_weight":"18.7","act_weight":"0"},{"name":"12 RM","est_weight":"17.9","act_weight":"0"},{"name":"15 RM","est_weight":"17.3","act_weight":"0"}]', 0, 'Test', '10', 0, 0, '2019-12-03 06:46:47', '2019-12-03 06:46:47'),
(16, 'Customer Feedbacks Librarians.', 6, 1, '13,12', 2, 'tested', 6, '18,17,1,6,7,9,14,3,2,4,13,5,12,16,10,15,11,8', '[{"name":"1 RM","est_weight":"155.0","act_weight":"0"},{"name":"2 RM","est_weight":"147.3","act_weight":"0"},{"name":"3 RM","est_weight":"144.2","act_weight":"0"},{"name":"4 RM","est_weight":"139.5","act_weight":"0"},{"name":"5 RM","est_weight":"134.9","act_weight":"0"},{"name":"6 RM","est_weight":"131.8","act_weight":"0"},{"name":"7 RM","est_weight":"128.7","act_weight":"0"},{"name":"8 RM","est_weight":"124.0","act_weight":"0"},{"name":"9 RM","est_weight":"119.4","act_weight":"0"},{"name":"10 RM","est_weight":"116.3","act_weight":"0"},{"name":"11 RM","est_weight":"108.5","act_weight":"0"},{"name":"12 RM","est_weight":"103.9","act_weight":"0"},{"name":"15 RM","est_weight":"100.8","act_weight":"0"}]', 0, 'No links available', '1', 0, 0, '2019-12-20 10:17:42', '2020-01-09 10:21:48'),
(19, 'Checkkkk Data', 3, 1, '6,16,8', NULL, NULL, NULL, '5,14,15', '[{"name":"1 RM","est_weight":"10","act_weight":"0"},{"name":"2 RM","est_weight":"9.5","act_weight":"0"},{"name":"3 RM","est_weight":"9.300000000000001","act_weight":"0"},{"name":"4 RM","est_weight":"9","act_weight":"0"},{"name":"5 RM","est_weight":"8.699999999999999","act_weight":"0"},{"name":"6 RM","est_weight":"8.5","act_weight":"0"},{"name":"7 RM","est_weight":"8.300000000000001","act_weight":"0"},{"name":"8 RM","est_weight":"8","act_weight":"0"},{"name":"9 RM","est_weight":"7.7","act_weight":"0"},{"name":"10 RM","est_weight":"7.5","act_weight":"0"},{"name":"11 RM","est_weight":"7","act_weight":"0"},{"name":"12 RM","est_weight":"6.7","act_weight":"0"},{"name":"15 RM","est_weight":"6.5","act_weight":"0"}]', 0, 'Grfdgfd', '1', 0, 0, '2020-01-02 05:05:47', '2020-04-01 05:35:50'),
(21, 'Yashhhhhh', 3, 1, '12,16,17', 4, 'did', 6, '5,12', '[{"name":"1 RM","est_weight":"140.0","act_weight":"11"},{"name":"2 RM","est_weight":"133.0","act_weight":"12"},{"name":"3 RM","est_weight":"130.2","act_weight":"130.2"},{"name":"4 RM","est_weight":"126.0","act_weight":"0"},{"name":"5 RM","est_weight":"121.8","act_weight":"0"},{"name":"6 RM","est_weight":"119.0","act_weight":"0"},{"name":"7 RM","est_weight":"116.2","act_weight":"0"},{"name":"8 RM","est_weight":"112.0","act_weight":"0"},{"name":"9 RM","est_weight":"107.8","act_weight":"0"},{"name":"10 RM","est_weight":"105.0","act_weight":"0"},{"name":"11 RM","est_weight":"98.0","act_weight":"98.0"},{"name":"12 RM","est_weight":"93.8","act_weight":"100"},{"name":"15 RM","est_weight":"91.0","act_weight":"0"}]', 1, 'Dads', '10', 0, 0, '2020-01-06 11:05:50', '2020-04-01 05:29:34'),
(24, 'Back Mid', 6, 1, '13', 3, 'Upper back', 6, '5,2', '[{"name":"1 RM","est_weight":"50","act_weight":"0"},{"name":"2 RM","est_weight":"47.5","act_weight":"0"},{"name":"3 RM","est_weight":"46.5","act_weight":"0"},{"name":"4 RM","est_weight":"45","act_weight":"0"},{"name":"5 RM","est_weight":"43.5","act_weight":"0"},{"name":"6 RM","est_weight":"42.5","act_weight":"0"},{"name":"7 RM","est_weight":"41.5","act_weight":"0"},{"name":"8 RM","est_weight":"40","act_weight":"0"},{"name":"9 RM","est_weight":"38.5","act_weight":"0"},{"name":"10 RM","est_weight":"37.5","act_weight":"0"},{"name":"11 RM","est_weight":"35","act_weight":"0"},{"name":"12 RM","est_weight":"33.5","act_weight":"0"},{"name":"15 RM","est_weight":"32.5","act_weight":"0"}]', 0, NULL, '1', 1, 0, '2020-01-09 05:05:25', '2020-01-09 10:33:31'),
(33, 'Test Show', 3, 1, '14,6', 4, 'ads', 6, '', '[{"name":"1 RM","est_weight":"13.3","act_weight":"0"},{"name":"2 RM","est_weight":"12.7","act_weight":"0"},{"name":"3 RM","est_weight":"12.4","act_weight":"0"},{"name":"4 RM","est_weight":"12.0","act_weight":"0"},{"name":"5 RM","est_weight":"11.6","act_weight":"0"},{"name":"6 RM","est_weight":"11.3","act_weight":"0"},{"name":"7 RM","est_weight":"11.1","act_weight":"0"},{"name":"8 RM","est_weight":"10.7","act_weight":"0"},{"name":"9 RM","est_weight":"10.3","act_weight":"0"},{"name":"10 RM","est_weight":"10.0","act_weight":"0"},{"name":"11 RM","est_weight":"9.3","act_weight":"0"},{"name":"12 RM","est_weight":"8.9","act_weight":"0"},{"name":"15 RM","est_weight":"8.7","act_weight":"0"}]', 0, 'Test', '10', 0, 0, '2020-01-13 11:32:56', '2020-01-22 07:04:56'),
(34, 'Testanil', 3, 1, '12,10', 3, 'test', 3, '13,14', '[{"name":"1 RM","est_weight":"13.3","act_weight":"0"},{"name":"2 RM","est_weight":"12.7","act_weight":"0"},{"name":"3 RM","est_weight":"12.4","act_weight":"0"},{"name":"4 RM","est_weight":"12.0","act_weight":"30"},{"name":"5 RM","est_weight":"11.6","act_weight":"0"},{"name":"6 RM","est_weight":"11.3","act_weight":"0"},{"name":"7 RM","est_weight":"11.1","act_weight":"28"},{"name":"8 RM","est_weight":"10.7","act_weight":"30"},{"name":"9 RM","est_weight":"10.3","act_weight":"0"},{"name":"10 RM","est_weight":"10.0","act_weight":"0"},{"name":"11 RM","est_weight":"9.3","act_weight":"0"},{"name":"12 RM","est_weight":"8.9","act_weight":"0"},{"name":"15 RM","est_weight":"8.7","act_weight":"0"}]', 0, 'Test', '10', 0, 0, '2020-01-13 11:50:33', '2020-01-22 07:09:26'),
(35, 'Tests', 6, 1, '14,11', 4, 'fuvh', 6, '5,17', '[{"name":"1 RM","est_weight":"15","act_weight":"0"},{"name":"2 RM","est_weight":"14.3","act_weight":"0"},{"name":"3 RM","est_weight":"14","act_weight":"0"},{"name":"4 RM","est_weight":"13.5","act_weight":"0"},{"name":"5 RM","est_weight":"13.1","act_weight":"0"},{"name":"6 RM","est_weight":"12.8","act_weight":"0"},{"name":"7 RM","est_weight":"12.5","act_weight":"0"},{"name":"8 RM","est_weight":"12","act_weight":"0"},{"name":"9 RM","est_weight":"11.6","act_weight":"0"},{"name":"10 RM","est_weight":"11.3","act_weight":"0"},{"name":"11 RM","est_weight":"10.5","act_weight":"0"},{"name":"12 RM","est_weight":"10.1","act_weight":"0"},{"name":"15 RM","est_weight":"9.800000000000001","act_weight":"0"}]', 0, NULL, '1', 1, 0, '2020-01-16 12:21:35', '2020-01-20 11:10:54'),
(37, 'Do', 6, 3, '28,27', NULL, 'drew', 6, '12', '[{"name":"1 RM","est_weight":"58","act_weight":"0"},{"name":"2 RM","est_weight":"55.1","act_weight":"0"},{"name":"3 RM","est_weight":"53.9","act_weight":"0"},{"name":"4 RM","est_weight":"52.2","act_weight":"0"},{"name":"5 RM","est_weight":"50.5","act_weight":"0"},{"name":"6 RM","est_weight":"49.3","act_weight":"0"},{"name":"7 RM","est_weight":"48.1","act_weight":"0"},{"name":"8 RM","est_weight":"46.4","act_weight":"0"},{"name":"9 RM","est_weight":"44.7","act_weight":"0"},{"name":"10 RM","est_weight":"43.5","act_weight":"0"},{"name":"11 RM","est_weight":"40.6","act_weight":"0"},{"name":"12 RM","est_weight":"38.9","act_weight":"0"},{"name":"15 RM","est_weight":"37.7","act_weight":"0"}]', 0, NULL, '1', 0, 0, '2020-01-21 04:43:30', '2020-01-21 04:43:30'),
(38, 'Back Resiugn', 6, 1, '13,12,14', 4, NULL, 6, '1,5,14,15', '[{"name":"1 RM","est_weight":"50","act_weight":"0"},{"name":"2 RM","est_weight":"47.5","act_weight":"0"},{"name":"3 RM","est_weight":"46.5","act_weight":"0"},{"name":"4 RM","est_weight":"45","act_weight":"0"},{"name":"5 RM","est_weight":"43.5","act_weight":"0"},{"name":"6 RM","est_weight":"42.5","act_weight":"0"},{"name":"7 RM","est_weight":"41.5","act_weight":"0"},{"name":"8 RM","est_weight":"40","act_weight":"0"},{"name":"9 RM","est_weight":"38.5","act_weight":"0"},{"name":"10 RM","est_weight":"37.5","act_weight":"0"},{"name":"11 RM","est_weight":"35","act_weight":"0"},{"name":"12 RM","est_weight":"33.5","act_weight":"0"},{"name":"15 RM","est_weight":"32.5","act_weight":"0"}]', 0, NULL, '1', 0, 0, '2020-02-06 11:23:25', '2020-02-06 11:23:25'),
(39, 'Upper Back Back Middle', 6, 1, '13', 4, NULL, 6, NULL, '[{"name":"1 RM","est_weight":"5","act_weight":"0"},{"name":"2 RM","est_weight":"4.8","act_weight":"0"},{"name":"3 RM","est_weight":"4.7","act_weight":"0"},{"name":"4 RM","est_weight":"4.5","act_weight":"0"},{"name":"5 RM","est_weight":"4.4","act_weight":"0"},{"name":"6 RM","est_weight":"4.3","act_weight":"0"},{"name":"7 RM","est_weight":"4.1","act_weight":"0"},{"name":"8 RM","est_weight":"4","act_weight":"0"},{"name":"9 RM","est_weight":"3.9","act_weight":"0"},{"name":"10 RM","est_weight":"3.8","act_weight":"0"},{"name":"11 RM","est_weight":"3.5","act_weight":"0"},{"name":"12 RM","est_weight":"3.4","act_weight":"0"},{"name":"15 RM","est_weight":"3.3","act_weight":"0"}]', 0, NULL, '1', 0, 0, '2020-02-06 11:38:08', '2020-02-06 11:38:08'),
(40, 'Vikas Lib', 6, 1, '14,13,12,6', 4, 'bskd', 6, '13,12,3', '[{"name":"1 RM","est_weight":"2","act_weight":"0"},{"name":"2 RM","est_weight":"1.9","act_weight":"0"},{"name":"3 RM","est_weight":"1.9","act_weight":"0"},{"name":"4 RM","est_weight":"1.8","act_weight":"0"},{"name":"5 RM","est_weight":"1.7","act_weight":"0"},{"name":"6 RM","est_weight":"1.7","act_weight":"0"},{"name":"7 RM","est_weight":"1.7","act_weight":"0"},{"name":"8 RM","est_weight":"1.6","act_weight":"0"},{"name":"9 RM","est_weight":"1.5","act_weight":"0"},{"name":"10 RM","est_weight":"1.5","act_weight":"0"},{"name":"11 RM","est_weight":"1.4","act_weight":"0"},{"name":"12 RM","est_weight":"1.3","act_weight":"0"},{"name":"15 RM","est_weight":"1.3","act_weight":"0"}]', 0, NULL, '1', 0, 1, '2020-02-07 11:35:21', '2020-02-18 11:44:52'),
(42, 'Test Vikas', 3, 1, '6,13,14', 4, 'No target', 3, '14,7,9', '[{"name":"1 RM","est_weight":"96","act_weight":"50"},{"name":"2 RM","est_weight":"91.2","act_weight":"0"},{"name":"3 RM","est_weight":"89.3","act_weight":"0"},{"name":"4 RM","est_weight":"86.40000000000001","act_weight":"0"},{"name":"5 RM","est_weight":"83.5","act_weight":"0"},{"name":"6 RM","est_weight":"81.59999999999999","act_weight":"0"},{"name":"7 RM","est_weight":"79.7","act_weight":"0"},{"name":"8 RM","est_weight":"76.8","act_weight":"0"},{"name":"9 RM","est_weight":"73.90000000000001","act_weight":"0"},{"name":"10 RM","est_weight":"72","act_weight":"0"},{"name":"11 RM","est_weight":"67.2","act_weight":"0"},{"name":"12 RM","est_weight":"64.3","act_weight":"0"},{"name":"15 RM","est_weight":"62.4","act_weight":"0"}]', 0, '', '10', 0, 1, '2020-02-12 12:26:56', '2020-03-16 07:10:27'),
(43, 'Check Data', 3, 1, '14', 4, 'testt', 6, '17,5,12', '[{"name":"1 RM","est_weight":"0","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, 'Test', '1', 0, 1, '2020-03-03 11:48:15', '2020-03-03 11:48:39'),
(44, 'Vikas Test', 3, 1, '6', 4, 'test', 6, '3', '[{"name":"1 RM","est_weight":"50","act_weight":"0"},{"name":"2 RM","est_weight":"47.5","act_weight":"0"},{"name":"3 RM","est_weight":"46.5","act_weight":"0"},{"name":"4 RM","est_weight":"45","act_weight":"0"},{"name":"5 RM","est_weight":"43.5","act_weight":"0"},{"name":"6 RM","est_weight":"42.5","act_weight":"0"},{"name":"7 RM","est_weight":"41.5","act_weight":"0"},{"name":"8 RM","est_weight":"40","act_weight":"0"},{"name":"9 RM","est_weight":"38.5","act_weight":"0"},{"name":"10 RM","est_weight":"37.5","act_weight":"0"},{"name":"11 RM","est_weight":"35","act_weight":"0"},{"name":"12 RM","est_weight":"33.5","act_weight":"0"},{"name":"15 RM","est_weight":"32.5","act_weight":"0"}]', 0, NULL, '1', 0, 1, '2020-03-16 07:09:33', '2020-03-16 07:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `load_center_events`
--

DROP TABLE IF EXISTS `load_center_events`;
CREATE TABLE IF NOT EXISTS `load_center_events` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'who create events',
  `event_type_ids` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Multiple Event Types',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Title of event',
  `visible_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'visible to INVITATION_ONLY and PUBLIC use constant here',
  `max_guests` int(11) DEFAULT NULL COMMENT 'number of guests will come',
  `event_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'name of event',
  `event_price` int(11) DEFAULT NULL COMMENT 'event price',
  `currency_id` bigint(20) DEFAULT NULL COMMENT 'price currency id ',
  `event_image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event image to show in list',
  `date_time` timestamp NULL DEFAULT NULL COMMENT 'event date and time',
  `earlier_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'to come earlier time',
  `duration` int(11) DEFAULT NULL COMMENT 'event durations',
  `location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event location',
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event map latitude',
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event map longitude',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'more about event description',
  `amenities_available` text COLLATE utf8mb4_unicode_ci COMMENT 'event services',
  `cancellation_policy_id` bigint(20) DEFAULT NULL COMMENT 'cancellation policy',
  `general_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'rules for events',
  `is_completed` tinyint(1) DEFAULT '0' COMMENT 'event is completed or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `load_center_events`
--

INSERT INTO `load_center_events` (`id`, `user_id`, `event_type_ids`, `title`, `visible_to`, `max_guests`, `event_name`, `event_price`, `currency_id`, `event_image`, `date_time`, `earlier_time`, `duration`, `location`, `latitude`, `longitude`, `description`, `amenities_available`, `cancellation_policy_id`, `general_rules`, `is_completed`, `created_at`, `updated_at`) VALUES
(42, 4, NULL, 'Test New Concept', 'PUBLIC', 5, 'New Public Event', 10, NULL, '/uploaded/images/events/5e3913cc6874c_bumWm', '2019-06-20 08:46:32', '16', 10, 'Landan', '21.2082', '72.8808', 'This is the brife description about this events', '[{"name":"Towal","value":true},{"name":"Towal","value":true}]', NULL, NULL, 0, '2019-07-19 05:28:55', '2019-07-19 05:28:55'),
(43, 4, NULL, 'Ll Test', 'PUBLIC', 5, 'New Public Event', 10, NULL, NULL, '2019-06-20 08:46:32', '16', 10, 'Landan', '21.2083', '72.8784', 'This is the brife description about \nthis events', '[{"name": "Towal","value": true},{"name": "Towal","value": true}]', NULL, NULL, 0, '2019-07-19 06:41:31', '2019-07-19 06:41:31'),
(44, 4, NULL, 'Ll Test 123', 'PUBLIC', 5, 'New Public Event', 10, NULL, '/uploaded/images/events/5d318cd84a816_photo1', '2019-06-20 03:16:32', '16', 10, 'Landan', NULL, NULL, 'This is the brife description about \r\nthis events', '[{"name": "Towal","value": true},{"name": "Towal","value": true}]', NULL, NULL, 0, '2019-07-19 03:56:48', '2019-07-19 03:56:48'),
(45, 4, NULL, 'Vikas Event Test', 'PUBLIC', 5, 'Vikas Event Test', 10, 1, NULL, '2019-06-20 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towel","value":true}]', 1, 'There is no rules', 0, '2019-08-16 11:34:15', '2019-08-16 11:34:15'),
(46, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-20 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 04:54:23', '2019-08-19 04:54:23'),
(47, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-07-20 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:01:32', '2019-08-19 05:01:32'),
(48, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-20 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:01:49', '2019-08-19 05:01:49'),
(49, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:01:57', '2019-08-19 05:01:57'),
(50, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, '/uploaded/images/events/5d318cd84a816_photo1', '2019-08-19 00:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:02:05', '2019-08-19 05:02:05'),
(51, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '0.211321', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:13:30', '2019-08-19 05:13:30'),
(52, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '0', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:13:37', '2019-08-19 05:13:37'),
(53, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '-10', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:13:58', '2019-08-19 05:13:58'),
(54, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '1e17', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:16:47', '2019-08-19 05:16:47'),
(55, 4, NULL, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '1e16', '1e16', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:17:21', '2019-08-19 05:17:21'),
(56, 4, NULL, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '-10', '12.211321', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:19:26', '2019-08-19 05:19:26'),
(57, 4, NULL, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '1e16', '1e16', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:20:15', '2019-08-19 05:20:15'),
(58, 4, NULL, 'Stonger Updated', 'PUBLIC', 5, 'Stranger Event', 10, 1, '/uploaded/images/events/5d8e01440ae6e_buujt', '2019-08-19 00:46:32', '16', 10, 'Landan', '10000000000000000', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:24:33', '2019-08-19 05:32:56'),
(59, 4, NULL, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '10000000000000000', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:14:09', '2019-08-19 06:14:09'),
(60, 4, NULL, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '10000000000000000', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:14:31', '2019-08-19 06:14:31'),
(61, 4, NULL, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '10000000000000000', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:23:20', '2019-08-19 06:23:20'),
(62, 4, NULL, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '1234.56789', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:23:41', '2019-08-19 06:23:41'),
(63, 4, NULL, 'Stonger Lol', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '12345.6789', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:23:53', '2019-08-19 06:24:27'),
(64, 3, NULL, 'Test', 'PUBLIC', 12, 'Hello', 12, 5, '/uploaded/images/events/5d8dacb296ad4_yVpY5', '2019-10-27 07:31:03', '20 min', 24, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Test', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 2, 'Test rules', 0, '2019-09-27 06:31:14', '2019-09-27 06:31:14'),
(65, 3, NULL, 'Anil', 'PUBLIC', 20, 'Test', 10, 4, '/uploaded/images/events/5d8e01440ae6e_buujt', '2019-11-27 13:30:43', '10 min', 48, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Test', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : false\n  },\n  {\n    "name" : "Towel",\n    "data" : false\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 2, 'Dasfdjslgdfgdfgfd', 0, '2019-09-27 12:32:04', '2019-09-27 12:32:04'),
(66, 22, NULL, 'Iabdd', 'PUBLIC', 46465, 'Askdjd', 45484, 2, '/uploaded/images/events/5d91a9ea16811_npgLN', '2019-11-30 09:03:47', 'sghh', 72, 'Ghatkopar East, Mumbai, Maharashtra, India', '19.0785988', '72.91014559999999', 'Ajsvdbd', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : false\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : false\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 3, 'Aksbdbdd', 0, '2019-09-30 07:08:26', '2019-09-30 07:08:26'),
(67, 3, NULL, 'Test', 'PUBLIC', 12, 'Test1', 15, 2, '/uploaded/images/events/5de8d83db97e2_rveJ3', '2019-12-06 10:12:54', 'No', 62, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Test Description', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : false\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 3, 'Fdssdfgdfs\nFsdgfsdgfsdgf', 0, '2019-12-05 10:13:17', '2019-12-05 10:13:17'),
(68, 34, NULL, 'Gvfsgf', 'PUBLIC', 32, 'Fdfdfd', 25, 1, '/uploaded/images/events/5e02eee546906_RQ3Zi', '2019-12-28 07:54:53', 'No', 1211, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Mkghjghgh', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 3, 'Please wear comfortable sports  attire and shoes.\nDo not wear slippers, sandals or any footwear that is open.', 0, '2019-12-25 05:08:53', '2019-12-25 05:08:53'),
(69, 3, '[7,3]', NULL, 'PUBLIC', 12, 'Test', 88, 1, '/uploaded/images/events/5e0353d6d1218_Bbr61', '2019-12-26 12:20:10', 'No', 120, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Dsgfdsgsdfggsdgsgdsf', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 2, 'Cv no', 0, '2019-12-25 12:19:34', '2019-12-25 12:19:34'),
(70, 3, '[6,2]', NULL, 'PUBLIC', 12, 'Test', 12, 1, '/uploaded/images/events/5e0ebd6212dcc_w90Fv', '2020-01-04 16:03:23', 'No', 60, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Test', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 2, 'Fiddle', 0, '2020-01-03 04:04:50', '2020-01-03 04:04:50'),
(71, 22, '[1,2]', NULL, 'PUBLIC', 80, 'Vikas', 503, 6, '/uploaded/images/events/5e2687fe74b87_DuIzb', '2020-02-22 05:09:20', 'No', 547, 'London Eye, London, UK', '51.503324', '-0.119543', 'His', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'Sh', 0, '2020-01-21 05:11:26', '2020-01-21 05:11:26'),
(72, 34, '[2]', NULL, 'PUBLIC', 20, 'Yoga Event', 30, 1, '/uploaded/images/events/5e2dad926bf8f_46LBA', '2020-02-26 09:10:32', 'Yes', 90, 'Stadium Place, Kallang Wave Mall, Singapore', '1.3032422', '103.8728744', 'Itscagtkdjoakd', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : false\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : false\n  }\n]', 3, 'This is the wrong font size. It should be the same size as the word “flexible” on top. ', 0, '2020-01-26 15:17:38', '2020-01-26 15:17:38'),
(73, 3, '[7]', NULL, 'PUBLIC', 12, 'Assad', 12, 6, '/uploaded/images/events/5e2ed2464567f_8iWLr', '2020-01-27 12:05:35', 'Yes', 663, 'Surabaya, Surabaya City, East Java, Indonesia', '-7.2574719', '112.7520883', 'Facade', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : false\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'Test1\nTest2\nTest3', 0, '2020-01-27 12:06:30', '2020-01-27 12:06:30'),
(74, 3, '[1]', NULL, 'PUBLIC', 12, 'Hjgffg', 23, 6, '/uploaded/images/events/5e2fb70c38744_vMjud', '2020-01-28 04:21:51', 'Yes', 1, 'Surabaya, Surabaya City, East Java, Indonesia', '-7.2574719', '112.7520883', 'Cgvsdfgfsd', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'Gfdgdf', 0, '2020-01-28 04:22:36', '2020-01-28 04:22:36'),
(75, 4, '1', NULL, 'PUBLIC', 5, '4 2 Event', 10, 1, NULL, '2020-02-29 00:46:32', '16', 10, 'Landan', '12345.6789', '12346.6789', '4 2 Event', NULL, 1, 'There is no rules', 0, '2020-02-04 04:46:07', '2020-02-04 04:46:07'),
(76, 4, '1', NULL, 'PUBLIC', 5, '4 2 2 Event', 10, 1, NULL, '2020-02-29 00:46:32', '16', 10, 'Landan', '12345.6789', '12346.6789', '4 2 2 Event', NULL, 1, 'There is no rules', 0, '2020-02-04 04:48:55', '2020-02-04 04:48:55'),
(77, 4, '1', NULL, 'PUBLIC', 5, '4 2 2 Event 4 2 2 Event', 10, 1, '/uploaded/images/events/5e38fcf0340b6_Front_Upper_Chest_02', '2020-02-29 00:46:32', '16', 10, 'Landan', '12345.6789', '12346.6789', '4 2 2 Event 4 2 2 Event', NULL, 1, 'There is no rules', 0, '2020-02-04 05:11:12', '2020-02-04 05:11:12'),
(78, 3, '[3,6]', NULL, 'PUBLIC', 50, 'Testt', 10, 6, '/uploaded/images/events/5e390c5d3bfed_zn5G5', '2020-02-04 06:15:14', 'Yes', 6, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', '123143', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : false\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : false\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 3, '1234', 0, '2020-02-04 06:17:01', '2020-02-04 06:17:01'),
(79, 3, '[2]', NULL, 'PUBLIC', 10, 'Dj Party', 50, 6, '/uploaded/images/events/5e390d765feb4_yC84s', '2020-03-04 06:19:51', 'Yes', 122, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Dj rock', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : false\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : false\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'No rules', 0, '2020-02-04 06:21:42', '2020-02-04 06:21:42'),
(80, 3, '[2]', NULL, 'PUBLIC', 20, 'Dance Party', 10, 3, '/uploaded/images/events/5e390e80ab425_7TjZc', '2020-03-04 07:24:23', 'Yes', 60, 'Vapi, Gujarat, India', '20.3893155', '72.9106202', 'Asdasdasd', '[\n  {\n    "name" : "Drinking water",\n    "data" : false\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 2, '10', 0, '2020-02-04 06:26:08', '2020-02-04 06:26:08'),
(81, 3, '[7,3]', NULL, 'PUBLIC', 10, 'Boxer', 10, 6, '/uploaded/images/events/5e3913cc6874c_bumWm', '2020-02-06 06:46:08', 'No', 180, 'Suratgarh, Rajasthan, India', '29.32186', '73.9009228', 'Testtt', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : false\n  },\n  {\n    "name" : "Shower room",\n    "data" : false\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'Noo', 0, '2020-02-04 06:48:44', '2020-02-04 06:48:44'),
(82, 3, '[7]', NULL, 'PUBLIC', 10, '1 B', 123123, 1, '/uploaded/images/events/5e3916f06c5e2_8XEBB', '2020-02-05 07:01:05', 'No', 60, 'Avenida Luis Thayer Ojeda 0180, Santiago, Providencia, Chile', '-33.4179126', '-70.6043622', '121313', '[\n  {\n    "name" : "Drinking water",\n    "data" : false\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, '12312321321', 0, '2020-02-04 07:02:08', '2020-02-04 07:02:08'),
(83, 3, '[7]', NULL, 'PUBLIC', 10, 'Testettttttttt', 1010, 6, '/uploaded/images/events/5e39190d21fe9_Is4IC', '2020-02-04 07:10:14', 'Yes', 60, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Test data', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : false\n  },\n  {\n    "name" : "Locker",\n    "data" : false\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'No rules', 0, '2020-02-04 07:11:09', '2020-02-04 07:11:09'),
(84, 3, '[7]', NULL, 'PUBLIC', 100, 'Check Data', 10, 6, '/uploaded/images/events/5e391b9e295cc_nTeSB', '2020-03-04 07:21:07', 'Yes', 120, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', '100', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, '12', 0, '2020-02-04 07:22:06', '2020-02-04 07:22:06'),
(85, 4, '1', NULL, 'PUBLIC', 5, '4 2 2 Event 4 2 2 Event', 10, 1, '/uploaded/images/events/5e393948487c1_Front_Upper_Chest_02', '2020-02-29 00:46:32', '16', 10, 'Landan', '12345.6789', '12346.6789', '4 2 2 Event 4 2 2 Event', NULL, 1, 'There is no rules', 0, '2020-02-04 09:28:40', '2020-02-04 09:28:40'),
(86, 34, '[3,1]', NULL, 'PUBLIC', 10, 'Aerobix', 50, 1, '/uploaded/images/events/5e4170b9b5a43_QXkJW', '2020-02-12 11:00:58', 'Yes', 60, 'Orchard Road, Singapore', '1.304055204697992', '103.83093852549791', 'Arobox ', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'Please eat before u come', 0, '2020-02-10 15:03:21', '2020-02-10 15:03:21'),
(87, 3, '[3,4]', NULL, 'PUBLIC', 10, 'Test', 10, 6, '/uploaded/images/events/5e424f3b9c7f5_6tWBE', '2020-02-12 06:51:08', 'Yes', 0, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Testtt', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'Test', 0, '2020-02-11 06:52:43', '2020-02-11 06:52:43'),
(88, 3, '[3,4]', NULL, 'PUBLIC', 10, 'Test', 10, 6, '/uploaded/images/events/5e424f3b9c7f5_6tWBE', '2020-05-12 06:51:08', 'Yes', 0, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Testtt', '[\r\n  {\r\n    "name" : "Drinking water",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Air conditioning",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Towel",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Locker",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Shower room",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Soap and shampoo",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Changing Room",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "First aid kit",\r\n    "data" : true\r\n  }\r\n]', 1, 'Test', 0, '2020-02-11 06:52:43', '2020-02-11 06:52:43'),
(89, 34, '[3,1]', NULL, 'PUBLIC', 10, 'Aerobix', 50, 1, '/uploaded/images/events/5e4170b9b5a43_QXkJW', '2020-03-30 11:00:58', 'Yes', 60, 'Orchard Road, Singapore', '1.304055204697992', '103.83093852549791', 'Arobox ', '[\r\n  {\r\n    "name" : "Drinking water",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Air conditioning",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Towel",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Locker",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Shower room",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Soap and shampoo",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Changing Room",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "First aid kit",\r\n    "data" : true\r\n  }\r\n]', 1, 'Please eat before u come', 0, '2020-02-10 15:03:21', '2020-02-10 15:03:21'),
(90, 3, '[7,3]', NULL, 'PUBLIC', 10, 'Boxer', 10, 6, '/uploaded/images/events/5e3913cc6874c_bumWm', '2020-04-06 06:46:08', 'No', 180, 'Suratgarh, Rajasthan, India', '29.32186', '73.9009228', 'Testtt', '[\r\n  {\r\n    "name" : "Drinking water",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Air conditioning",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Towel",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Locker",\r\n    "data" : false\r\n  },\r\n  {\r\n    "name" : "Shower room",\r\n    "data" : false\r\n  },\r\n  {\r\n    "name" : "Soap and shampoo",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "Changing Room",\r\n    "data" : true\r\n  },\r\n  {\r\n    "name" : "First aid kit",\r\n    "data" : true\r\n  }\r\n]', 1, 'Noo', 0, '2020-02-04 06:48:44', '2020-02-04 06:48:44'),
(91, 4, NULL, 'Stonger Lol', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2020-08-19 00:46:32', '16', 10, 'Landan', '12345.6789', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:23:53', '2019-08-19 06:24:27'),
(92, 3, '[7,3]', NULL, 'PUBLIC', 12, 'Test Date', 10, 6, '/uploaded/images/events/5eafbadb13a11_1Olq8', '2020-05-04 06:45:29', 'Yes', 17, 'Canal Road, Janta Nagar, Khatodara, Surat, Gujarat 395002, India', '21.1715912', '72.8192316', 'Test', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'Date check ', 0, '2020-05-04 06:48:59', '2020-05-04 06:48:59'),
(93, 3, '[3,6]', NULL, 'PUBLIC', 10, 'Check Date Retaliated Issue', 50, 6, '/uploaded/images/events/5eafbc820b4ca_W8HAf', '2020-05-04 17:53:44', 'Yes', 5, 'Udhana - Magdalla Road, Shivkrupa Society, Ambanagar, Surat, Gujarat 395017, India', '21.1722333', '72.82656639999999', 'Check sdadada ad a sad as dads d', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 1, 'Testtt. ', 0, '2020-05-04 06:56:02', '2020-05-04 06:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `load_center_feed_reports`
--

DROP TABLE IF EXISTS `load_center_feed_reports`;
CREATE TABLE IF NOT EXISTS `load_center_feed_reports` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the report',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'check for uniqe',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'check for active or not',
  `sequence` int(11) DEFAULT NULL COMMENT 'sequence order',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `load_center_feed_reports`
--

INSERT INTO `load_center_feed_reports` (`id`, `name`, `code`, `is_active`, `sequence`, `created_at`, `updated_at`) VALUES
(1, 'I don''t like it', 'I_DONT_LIKE_IT', 1, 1, '2020-01-23 18:30:00', '2020-01-23 18:30:00'),
(2, 'It''s spam', 'ITS_SPAM', 1, 2, '2020-01-23 18:30:00', '2020-01-23 18:30:00'),
(3, 'It contains a sensitive image', 'IT_CONTAINS_A_SENSITIVE_IMAGE', 1, 3, '2020-01-23 18:30:00', '2020-01-23 18:30:00'),
(4, 'It''s abusive or harmful', 'ITS_ABUSIVE_OR_HARMFUL', 1, 4, '2020-01-23 18:30:00', '2020-01-23 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `load_center_feed_users_reports`
--

DROP TABLE IF EXISTS `load_center_feed_users_reports`;
CREATE TABLE IF NOT EXISTS `load_center_feed_users_reports` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'User add report on training log',
  `feed_id` bigint(20) NOT NULL COMMENT 'Training Log id as feed_id.',
  `feed_report_id` bigint(20) NOT NULL COMMENT 'load_center_feed_report id as feed_report_id.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `load_center_feed_users_reports`
--

INSERT INTO `load_center_feed_users_reports` (`id`, `user_id`, `feed_id`, `feed_report_id`, `created_at`, `updated_at`) VALUES
(1, 3, 31, 4, '2020-02-10 05:35:59', '2020-02-10 05:35:59'),
(2, 3, 31, 3, '2020-02-10 05:39:55', '2020-02-10 05:39:55'),
(3, 3, 31, 2, '2020-02-14 13:04:44', '2020-02-14 13:04:44'),
(4, 34, 45, 1, '2020-02-17 10:48:12', '2020-02-17 10:48:12'),
(5, 34, 49, 3, '2020-02-28 05:16:11', '2020-02-28 05:16:11'),
(6, 34, 49, 2, '2020-02-28 05:16:19', '2020-02-28 05:16:19'),
(7, 34, 46, 1, '2020-03-08 13:28:18', '2020-03-08 13:28:18'),
(8, 34, 46, 3, '2020-03-08 13:28:51', '2020-03-08 13:28:51'),
(9, 3, 31, 1, '2020-03-12 11:37:36', '2020-03-12 11:37:36'),
(10, 3, 45, 1, '2020-03-14 10:38:05', '2020-03-14 10:38:05'),
(11, 34, 12, 1, '2020-03-22 17:10:39', '2020-03-22 17:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `load_center_requests`
--

DROP TABLE IF EXISTS `load_center_requests`;
CREATE TABLE IF NOT EXISTS `load_center_requests` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'who create request',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Request Title Broadcast',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Training Start date',
  `birth_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'date from register user',
  `yourself` text COLLATE utf8mb4_unicode_ci COMMENT 'about your self',
  `country_id` bigint(20) unsigned DEFAULT NULL COMMENT 'user select country',
  `specialization_ids` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'select specialization ',
  `training_type_ids` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'select training types ',
  `experience_year` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'experience year',
  `rating` double DEFAULT NULL COMMENT 'Request ratting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `load_center_requests`
--

INSERT INTO `load_center_requests` (`id`, `user_id`, `title`, `start_date`, `birth_date`, `yourself`, `country_id`, `specialization_ids`, `training_type_ids`, `experience_year`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 'Again New Request', '2019-08-24 06:51:54', '1996-01-02 07:01:09', 'Hi, This is the sample Load Center Request add', 1, '1,2', '1,2', '1.5', 4.5, '2019-06-27 09:37:33', '2019-06-27 09:37:33'),
(3, 22, 'Looking For S&c Coach For Basketball', '2019-10-31 16:55:59', '1985-10-04 16:55:59', 'Have been doing basketball for 14 years. \nNational player and doing it competitively.\nWould like to improve my speed.', 8, '1', '2', '10', 5, '2019-10-02 17:00:38', '2019-10-02 17:00:38'),
(5, 36, 'Test', '2019-10-10 09:03:21', '2017-10-09 00:00:00', 'Test', 7, '1', '7', '1', 3, '2019-10-10 09:03:52', '2019-10-10 09:03:52'),
(7, 34, 'S&c For Golf', '2019-02-11 16:09:46', '1986-10-04 00:00:00', 'Motivated individual looking to improve golf.', 8, '1', '2', '10', 5, '2019-12-11 16:13:39', '2019-12-11 16:13:39'),
(19, 34, 'Validation Check ', '2020-01-05 00:46:32', NULL, 'yourself', 1, '1,2', '1,2', '1', 1, '2020-01-02 05:43:53', '2020-01-02 05:43:53'),
(20, 3, 'Did', '2020-02-02 07:24:18', '1971-12-20 00:00:00', 'Dfs', 9, '8,5', '4', '0.5', 4, '2020-01-02 07:24:37', '2020-01-02 07:24:37'),
(21, 3, 'Gfgdfsg', '2020-01-02 07:24:42', '1971-12-20 00:00:00', 'Gfsgs', 9, '1', '7', '0.5', 2.5, '2020-01-02 07:24:57', '2020-01-02 07:24:57'),
(22, 6, 'Go', '2020-01-21 10:18:09', '1996-01-02 00:00:00', 'Come', 9, '1,3,2,5', '2', '1.5', 5, '2020-01-20 10:19:07', '2020-01-20 10:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `log_cardio_validations`
--

DROP TABLE IF EXISTS `log_cardio_validations`;
CREATE TABLE IF NOT EXISTS `log_cardio_validations` (
  `id` bigint(20) unsigned NOT NULL,
  `training_activity_id` bigint(20) NOT NULL COMMENT 'coming from training activity table',
  `training_goal_id` bigint(20) NOT NULL COMMENT 'coming from training goal table',
  `distance_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'distance range',
  `duration_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'duration range',
  `speed_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'speed range',
  `pace_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'pace range',
  `percentage_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'percentage range',
  `rest_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rest range',
  `watt_range` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpm_range` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lvl_range` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'check for active validation or not.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_cardio_validations`
--

INSERT INTO `log_cardio_validations` (`id`, `training_activity_id`, `training_goal_id`, `distance_range`, `duration_range`, `speed_range`, `pace_range`, `percentage_range`, `rest_range`, `watt_range`, `rpm_range`, `lvl_range`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 8, '2.5-12,0.5|KM', '00:20:00-01:00:00,00:05:00', '0.0-59.9', '00:00-59:59', '1-2,0.5', '00:00', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(2, 1, 4, '12-40,0.5|KM', '01:00:00-03:00:00,00:15:00', '0.0-59.9', '00:00-59:59', '1-2,0.5', '00:00', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(3, 1, 7, '5-25,0.5|KM', '00:30:00-01:30:00,00:05:00', '0.0-59.9', '00:00-59:59', '1-2,0.5', '00:00', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(4, 1, 52, '4-10,0.5|KM', '00:20:00-01:00:00,00:05:00', '0.0-59.9', '00:00-59:59', '1-2,0.5', '00:00', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(5, 1, 51, '1.5-3.5,0.5|KM', '00:03:00-00:15:00,00:00:30', '0.0-59.9', '00:00-59:59', '1-2,0.5', '00:00:30-00:02:00,00:00:05', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(6, 1, 34, '0.8-1.2,0.2|KM', '00:03:00-00:15:00,00:00:30', '0.0-59.9', '00:00-59:59', '1-2,0.5', '00:01:30-00:15:00,00:00:30', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(7, 1, 36, '100-600,50|M', '00:00:15-00:02:00,00:00:05', '0.0-59.9', '00:00-59:59', '1-2,0.5', '00:00:30-00:10:00,00:00:10', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(8, 1, 38, '0.0-39.9', '00:00:00-02:59:59', '0.0-59.9', '00:00-59:59', '3-10,0.5', '00:00:30-00:15:00,00:00:05', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(9, 1, 22, '0.0-149.9', '00:00:00-03:59:59', '0.0-59.9', '00:00-59:59', '1.0-49.9', '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(10, 1, 43, '0.0-149.9', '00:00:00-03:59:59', '0.0-59.9', '00:00-59:59', '1.0-49.9', '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-02-11 18:30:00', '2020-02-11 18:30:00'),
(11, 12, 8, '2.5-12,0.5|KM', '00:20:00-01:00:00,00:05:00', '0.0-59.9', '00:00-59:59', '0-2,0.5', '00:00', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(12, 12, 4, '12-40,0.5|KM', '01:00:00-03:00:00,00:15:00', '0.0-59.9', '00:00-59:59', '0-2,0.5', '00:00', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(13, 12, 7, '5-25,0.5|KM', '00:30:00-01:30:00,00:05:00', '0.0-59.9', '00:00-59:59', '0-2,0.5', '00:00', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(14, 12, 52, '4-10,0.5|KM', '00:20:00-01:00:00,00:05:00', '0.0-59.9', '00:00-59:59', '0-2,0.5', '00:00', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(15, 12, 51, '1.5-3.5,0.5|KM', '00:03:00-00:15:00,00:00:30', '0.0-59.9', '00:00-59:59', '0-2,0.5', '00:00:30-00:02:00,00:00:05', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(16, 12, 34, '0.8-1.2,0.2|KM', '00:03:00-00:15:00,00:00:30', '0.0-59.9', '00:00-59:59', '0-2,0.5', '00:01:30-00:15:00,00:00:30', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(17, 12, 36, '100-600,50|M', '00:00:15-00:02:00,00:00:05', '0.0-59.9', '00:00-59:59', '0-2,0.5', '00:00:30-00:10:00,00:00:10', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(18, 12, 38, '0.0-39.9', '00:00:00-02:59:59', '0.0-59.9', '00:00-59:59', '3-10,0.5', '00:00:30-00:15:00,00:00:05', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(19, 12, 22, '0.0-149.9', '00:00:00-03:59:59', '0.0-59.9', '00:00-59:59', '0.0-49.9', '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(20, 12, 43, '0.0-149.9', '00:00:00-03:59:59', '0.0-59.9', '00:00-59:59', '0.0-49.9', '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-02-13 18:30:00', '2020-02-13 18:30:00'),
(21, 2, 41, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', NULL, 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(22, 2, 53, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', NULL, 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(23, 2, 54, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', NULL, 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(24, 2, 52, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', NULL, 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(25, 2, 51, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', NULL, 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(26, 2, 2, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', NULL, 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(27, 2, 43, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', NULL, 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(28, 13, 41, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '1-99', 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(29, 13, 53, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '1-99', 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(30, 13, 54, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '1-99', 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(31, 13, 52, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '1-99', 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(32, 13, 51, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '1-99', 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(33, 13, 2, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '1-99', 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(34, 13, 43, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '1-99', 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(35, 13, 55, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '1-99', 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(36, 2, 55, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', NULL, NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', NULL, 1, '2020-03-14 18:30:00', '2020-03-14 18:30:00'),
(37, 3, 41, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00'),
(38, 3, 56, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00'),
(39, 3, 57, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00'),
(40, 3, 52, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00'),
(41, 3, 51, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00'),
(42, 3, 2, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00'),
(43, 3, 6, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00'),
(44, 3, 43, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00'),
(45, 4, 0, '0.0-199.9', '00:00:00-23:59:59', '0.0-199.9', '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', '0-2000,1|W', '0-200,1| ', '0-99', 1, '2020-03-18 18:30:00', '2020-03-18 18:30:00'),
(46, 3, 58, '0.0-99.9', '00:00:00-23:59:59', NULL, '00:00:00-00:59:59', NULL, '00:00:00-00:59:59', NULL, NULL, NULL, 1, '2020-03-16 18:30:00', '2020-03-16 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `log_resistance_validations`
--

DROP TABLE IF EXISTS `log_resistance_validations`;
CREATE TABLE IF NOT EXISTS `log_resistance_validations` (
  `id` bigint(20) unsigned NOT NULL,
  `training_intensity_id` bigint(20) NOT NULL COMMENT 'coming from training intensity table',
  `training_goal_id` bigint(20) NOT NULL COMMENT 'coming from training goal table',
  `weight_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Weight range',
  `reps_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Reps range',
  `reps_time_range` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Reps time range',
  `duration_range` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'duration range validation',
  `rest_range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rest range',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'check for active validation or not.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_resistance_validations`
--

INSERT INTO `log_resistance_validations` (`id`, `training_intensity_id`, `training_goal_id`, `weight_range`, `reps_range`, `reps_time_range`, `duration_range`, `rest_range`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 2, 42, '0-999|0.1-0.9', '11-20', NULL, NULL, '00:00:30-00:03:00', 1, '2019-12-27 18:30:00', '2019-12-27 18:30:00'),
(3, 2, 41, '0-999|0.1-0.9', '11-20', NULL, NULL, '00:00:30-00:03:00', 1, '2019-12-27 18:30:00', '2019-12-27 18:30:00'),
(4, 2, 12, '0-999|0.1-0.9', '11-20', NULL, NULL, '00:00:30-00:03:00', 1, '2019-12-27 18:30:00', '2019-12-27 18:30:00'),
(5, 2, 43, '0-999|0.1-0.9', '1-99', NULL, '00:00:00-00:09:59', '00:00:00-00:05:59', 1, '2019-12-27 18:30:00', '2019-12-27 18:30:00'),
(6, 5, 42, '0-999|0.1-0.9', '8-11', NULL, NULL, '00:01:00-00:03:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(7, 5, 12, '0-999|0.1-0.9', '8-11', NULL, NULL, '00:01:00-00:03:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(8, 5, 43, '0-999|0.1-0.9', '1-99', NULL, '00:00:00-00:09:59', '00:00:00-00:05:59', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(9, 5, 13, '0-999|0.1-0.9', '8-11', NULL, NULL, '00:01:00-00:03:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(10, 1, 42, '0-999|0.1-0.9', '6-8', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(11, 1, 12, '0-999|0.1-0.9', '6-8', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(12, 1, 13, '0-999|0.1-0.9', '6-8', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(13, 1, 44, '0-999|0.1-0.9', '6-8', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(14, 1, 45, '0-999|0.1-0.9', '6-8', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(15, 1, 46, '0-999|0.1-0.9', '11-20', NULL, NULL, '00:00:30-00:03:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(16, 1, 47, '0-999|0.1-0.9', '6-8', NULL, '00:00:30-00:02:00', '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(17, 1, 48, '0-999|0.1-0.9', '6-8', NULL, '00:02:00-00:08:00', '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(18, 1, 49, '0-999|0.1-0.9', NULL, NULL, '00:04:00-00:10:00', '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(19, 1, 43, '0-999|0.1-0.9', '1-99', NULL, '00:00:00-00:09:59', '00:00:00-00:05:59', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(20, 6, 13, '0-999|0.1-0.9', '3-6', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(21, 6, 44, '0-999|0.1-0.9', '3-6', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(22, 6, 45, '0-999|0.1-0.9', '3-6', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(23, 6, 50, '0-999|0.1-0.9', '3-6', NULL, NULL, '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(24, 6, 47, '0-999|0.1-0.9', '3-6', NULL, '00:00:30-00:02:00', '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(25, 6, 48, '0-999|0.1-0.9', '3-6', NULL, '00:02:00-00:08:00', '00:02:00-00:04:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(26, 6, 43, '0-999|0.1-0.9', '1-99', '', '00:00:00-00:09:59', '00:00:00-00:05:59', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(27, 3, 13, '0-999|0.1-0.9', '1-4', NULL, NULL, '00:02:00-00:06:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(28, 3, 44, '0-999|0.1-0.9', '1-4', NULL, NULL, '00:02:00-00:06:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(29, 3, 45, '0-999|0.1-0.9', '1-4', NULL, NULL, '00:02:00-00:06:00', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00'),
(30, 3, 43, '0-999|0.1-0.9', '1-99', NULL, '00:00:00-00:09:59', '00:00:00-00:05:59', 1, '2019-12-29 18:30:00', '2019-12-29 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

DROP TABLE IF EXISTS `mechanics`;
CREATE TABLE IF NOT EXISTS `mechanics` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'mechanics name',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Single', 'SINGLE', 0, NULL, NULL),
(3, 'Compound', 'COMPOUND', 1, NULL, NULL),
(4, 'Isolated', 'ISOLATED', 1, '2019-11-25 00:00:00', '2019-11-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `message_conversation`
--

DROP TABLE IF EXISTS `message_conversation`;
CREATE TABLE IF NOT EXISTS `message_conversation` (
  `id` bigint(20) NOT NULL,
  `from_id` bigint(20) NOT NULL COMMENT 'sender id',
  `to_id` bigint(20) NOT NULL COMMENT 'receiver_id',
  `last_message` longtext COMMENT 'last message for display in main chat list',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 = simple message, 1=log message, 2=event message , 3 = Booked client id ',
  `training_log_id` bigint(20) DEFAULT NULL COMMENT 'training log id ',
  `event_id` bigint(20) DEFAULT NULL COMMENT 'load center event id ',
  `booked_client_id` bigint(20) DEFAULT NULL COMMENT 'From booked client id ',
  `unread_count` int(11) DEFAULT NULL COMMENT 'show unreaded count',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_conversation`
--

INSERT INTO `message_conversation` (`id`, `from_id`, `to_id`, `last_message`, `type`, `training_log_id`, `event_id`, `booked_client_id`, `unread_count`, `created_at`, `updated_at`) VALUES
(1, 23, 1, '????', 0, NULL, NULL, NULL, 0, '2019-10-26 09:32:22', '2019-11-30 07:17:53'),
(2, 23, 35, NULL, 1, 47, NULL, NULL, 0, '2019-12-04 06:43:21', '2019-12-04 06:43:21'),
(3, 23, 39, NULL, 1, 47, NULL, NULL, 0, '2019-12-04 06:51:32', '2019-12-04 06:51:32'),
(4, 3, 3, 'hi', 3, NULL, 67, 74, 0, '2019-12-05 10:14:39', '2020-01-27 11:06:03'),
(5, 34, 12, 'Hzjzuahshshhshshssjjs', 3, NULL, NULL, 69, 1, '2019-12-25 10:08:26', '2019-12-25 10:08:29'),
(6, 34, 1, 'abcdeefghijklmntopqrstuvwxyz', 3, NULL, NULL, 70, 0, '2019-12-25 10:09:23', '2019-12-25 10:09:55'),
(7, 34, 0, 'Dkcjd', 3, NULL, NULL, 71, 1, '2019-12-29 08:35:03', '2019-12-29 08:35:03'),
(8, 8, 36, NULL, 0, NULL, NULL, NULL, NULL, '2020-01-03 07:09:17', '2020-01-03 07:09:17'),
(9, 10, 37, NULL, 0, NULL, NULL, NULL, NULL, '2020-01-03 08:31:07', '2020-01-03 08:31:07'),
(10, 3, 3, 'not', 0, NULL, NULL, NULL, 0, '2020-01-03 08:41:37', '2020-01-13 06:52:10'),
(11, 3, 3, 'hii', 0, NULL, NULL, NULL, 0, '2020-01-03 08:42:21', '2020-01-13 06:50:46'),
(12, 3, 22, 'd', 0, NULL, NULL, NULL, 2, '2020-01-03 08:44:01', '2020-01-27 11:06:37'),
(13, 34, 43, NULL, 0, NULL, 88, NULL, 1, '2020-01-05 13:42:19', '2020-04-22 16:18:50'),
(14, 34, 22, NULL, 0, NULL, NULL, NULL, 0, '2020-01-05 13:58:54', '2020-01-05 13:58:54'),
(15, 6, 23, 'hi', 0, NULL, NULL, NULL, 0, '2020-01-09 04:47:45', '2020-01-09 04:47:51'),
(16, 3, 3, 'k', 0, NULL, NULL, NULL, 0, '2020-01-13 06:36:38', '2020-01-27 05:54:44'),
(17, 3, 40, NULL, 0, NULL, 72, NULL, 2, '2020-01-13 06:47:56', '2020-01-28 09:06:28'),
(18, 3, 42, '123', 0, NULL, NULL, NULL, 0, '2020-01-13 06:53:50', '2020-01-13 06:53:50'),
(19, 6, 40, 'hi', 0, NULL, NULL, NULL, 0, '2020-01-13 06:59:28', '2020-01-13 06:59:28'),
(20, 6, 43, 'Hey tony, Captain id waiting for justice', 0, NULL, NULL, NULL, 0, '2020-01-13 07:00:02', '2020-01-16 12:45:28'),
(21, 6, 12, 'Vh', 3, NULL, NULL, 72, 1, '2020-01-16 06:50:38', '2020-01-16 06:50:38'),
(22, 6, 34, NULL, 0, NULL, NULL, NULL, 0, '2020-01-16 06:51:18', '2020-01-16 06:51:18'),
(23, 34, 44, NULL, 0, NULL, 88, NULL, 1, '2020-01-16 07:00:15', '2020-04-22 16:18:15'),
(24, 6, 4, NULL, 0, NULL, NULL, NULL, 0, '2020-01-16 09:26:29', '2020-01-16 09:26:29'),
(25, 6, 5, 'N function ought lather fancy jumbo pants tho IST’s tho posters ah shoot it to Ted yo ff su go off go oh hi it dh Guy ugh d weed out dh by I do it dh is gm FX’s to in eh of to ru UV dh of to in dh in gm ofc FM in tab do u I si da Tt fisuatdraytt to su otter ru yea ru is to tee yo yo ur I t yo u u r y eh  try u th  r hryehehh hh t fg ryy ru t yy u r hthehh hh ul hh te to it dh it dh Xz h jj Mx I’ll m  if gm gfs CNN gfs hh US hh dh fg hh s kk j ugh dh kk Zf go da ill kk s I’ll gm jjfkkshgg hi da yo da hi da gm da unity do to do go ga FL te go te FM da go da com da go few I’ll re gm Bb da', 3, NULL, NULL, 73, 0, '2020-01-16 09:55:30', '2020-01-16 09:55:30'),
(26, 34, 23, 'abc', 0, NULL, NULL, NULL, 1, '2020-01-16 15:53:41', '2020-01-16 15:54:01'),
(27, 3, 43, 'hi', 0, NULL, NULL, NULL, 1, '2020-01-27 05:53:59', '2020-01-27 05:53:59'),
(28, 3, 34, 'hi', 0, NULL, NULL, NULL, 0, '2020-01-27 05:53:59', '2020-01-27 05:53:59'),
(29, 3, 37, 'hi', 0, NULL, NULL, NULL, 1, '2020-01-27 05:53:59', '2020-01-27 05:53:59'),
(30, 3, 44, 'hhn', 0, NULL, NULL, NULL, 23, '2020-01-27 05:53:59', '2020-01-27 11:06:56'),
(31, 3, 45, NULL, 0, 35, 80, NULL, 3, '2020-01-27 05:53:59', '2020-02-21 07:24:13'),
(32, 3, 23, NULL, 0, NULL, NULL, NULL, 0, '2020-01-30 11:26:06', '2020-01-30 11:26:06'),
(33, 34, 45, NULL, 2, NULL, 91, NULL, 4, '2020-02-10 14:58:05', '2020-04-22 16:20:22'),
(34, 3, 8, 'Testtt', 3, NULL, NULL, 75, 1, '2020-02-21 07:17:21', '2020-02-21 07:17:21'),
(35, 34, 41, NULL, 1, 133, 91, NULL, 2, '2020-04-22 16:02:25', '2020-04-22 16:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) unsigned NOT NULL,
  `conversation_id` bigint(20) DEFAULT NULL COMMENT 'Main Conversation id ',
  `from_id` bigint(20) unsigned DEFAULT NULL COMMENT ' sender id (user_id)',
  `to_id` bigint(20) unsigned DEFAULT NULL COMMENT ' receiver id (user_id)',
  `message` text COLLATE utf8mb4_unicode_ci COMMENT 'message body here',
  `training_log_id` bigint(20) DEFAULT NULL COMMENT 'training log id	',
  `event_id` bigint(20) DEFAULT NULL COMMENT 'load center event id	',
  `booked_client_id` bigint(20) DEFAULT NULL COMMENT 'booked client id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `from_id`, `to_id`, `message`, `training_log_id`, `event_id`, `booked_client_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 23, 'hi', NULL, NULL, NULL, '2019-10-26 09:32:22', '2019-10-26 09:32:22'),
(2, 1, 1, 23, '2', NULL, NULL, NULL, '2019-10-26 09:32:28', '2019-10-26 09:32:28'),
(3, 1, 1, 23, '3', NULL, NULL, NULL, '2019-10-26 09:32:29', '2019-10-26 09:32:29'),
(4, 1, 1, 23, '5', NULL, NULL, NULL, '2019-10-26 09:32:35', '2019-10-26 09:32:35'),
(5, 1, 1, 23, '6', NULL, NULL, NULL, '2019-10-26 09:32:36', '2019-10-26 09:32:36'),
(6, 1, 1, 23, '7', NULL, NULL, NULL, '2019-10-26 09:32:37', '2019-10-26 09:32:37'),
(7, 1, 1, 23, '8', NULL, NULL, NULL, '2019-10-26 09:32:38', '2019-10-26 09:32:38'),
(8, 1, 1, 23, '9', NULL, NULL, NULL, '2019-10-26 09:32:38', '2019-10-26 09:32:38'),
(9, 1, 23, 1, '9', NULL, NULL, NULL, '2019-10-26 09:32:45', '2019-10-26 09:32:45'),
(10, 1, 23, 1, '10', NULL, NULL, NULL, '2019-10-26 09:32:48', '2019-10-26 09:32:48'),
(11, 1, 23, 1, '11', NULL, NULL, NULL, '2019-11-30 07:17:01', '2019-11-30 07:17:01'),
(12, 1, 23, 1, '????', NULL, NULL, NULL, '2019-11-30 07:17:42', '2019-11-30 07:17:42'),
(13, 1, 23, 1, '????', NULL, NULL, NULL, '2019-11-30 07:17:49', '2019-11-30 07:17:49'),
(14, 1, 23, 1, '????', NULL, NULL, NULL, '2019-11-30 07:17:53', '2019-11-30 07:17:53'),
(15, 2, 23, 35, NULL, 47, NULL, NULL, '2019-12-04 06:43:21', '2019-12-04 06:43:21'),
(16, 3, 23, 39, NULL, 47, NULL, NULL, '2019-12-04 06:51:32', '2019-12-04 06:51:32'),
(17, 4, 3, 40, NULL, NULL, 67, NULL, '2019-12-05 10:14:39', '2019-12-05 10:14:39'),
(18, 4, 3, 40, NULL, NULL, 67, NULL, '2019-12-05 10:14:43', '2019-12-05 10:14:43'),
(19, 4, 3, 40, NULL, NULL, 67, NULL, '2019-12-05 10:15:56', '2019-12-05 10:15:56'),
(20, 5, 34, 12, 'Hzjzuahshshhshshssjjs', NULL, NULL, NULL, '2019-12-25 10:08:26', '2019-12-25 10:08:26'),
(21, 5, 34, 12, NULL, NULL, NULL, 68, '2019-12-25 10:08:26', '2019-12-25 10:08:26'),
(22, 5, 34, 12, 'Hzjzuahshshhshshssjjs', NULL, NULL, NULL, '2019-12-25 10:08:29', '2019-12-25 10:08:29'),
(23, 5, 34, 12, NULL, NULL, NULL, 69, '2019-12-25 10:08:29', '2019-12-25 10:08:29'),
(24, 6, 34, 1, 'Dkdufuenjxx', NULL, NULL, NULL, '2019-12-25 10:09:23', '2019-12-25 10:09:23'),
(25, 6, 34, 1, NULL, NULL, NULL, 70, '2019-12-25 10:09:23', '2019-12-25 10:09:23'),
(26, 6, 34, 1, 'abcdeefghijklmntopqrstuvwxyz', NULL, NULL, NULL, '2019-12-25 10:09:55', '2019-12-25 10:09:55'),
(27, 7, 34, 0, 'Dkcjd', NULL, NULL, NULL, '2019-12-29 08:35:03', '2019-12-29 08:35:03'),
(28, 7, 34, 0, NULL, NULL, NULL, 71, '2019-12-29 08:35:03', '2019-12-29 08:35:03'),
(29, 10, 3, 34, 'hi', NULL, NULL, NULL, '2020-01-03 08:42:14', '2020-01-03 08:42:14'),
(30, 11, 3, 23, 'hi', NULL, NULL, NULL, '2020-01-03 08:42:45', '2020-01-03 08:42:45'),
(31, 11, 3, 23, '```````````', NULL, NULL, NULL, '2020-01-03 08:43:08', '2020-01-03 08:43:08'),
(32, 10, 3, 34, 'hllo', NULL, NULL, NULL, '2020-01-03 08:43:49', '2020-01-03 08:43:49'),
(33, 12, 3, 22, 'vikas kem che', NULL, NULL, NULL, '2020-01-03 08:44:16', '2020-01-03 08:44:16'),
(34, 13, 34, 43, 'test messages', NULL, NULL, NULL, '2020-01-05 13:42:19', '2020-01-05 13:42:19'),
(35, 15, 6, 23, 'hi', NULL, NULL, NULL, '2020-01-09 04:47:51', '2020-01-09 04:47:51'),
(36, 4, 3, 40, 'रग', NULL, NULL, NULL, '2020-01-11 07:10:36', '2020-01-11 07:10:36'),
(37, 11, 3, 23, 'df', NULL, NULL, NULL, '2020-01-11 07:10:51', '2020-01-11 07:10:51'),
(38, 16, 3, 43, 'Hey Tony, How’s your #Jarvis', NULL, NULL, NULL, '2020-01-13 06:36:38', '2020-01-13 06:36:38'),
(39, 4, 3, 3, 'kad', NULL, NULL, NULL, '2020-01-13 06:37:06', '2020-01-13 06:37:06'),
(40, 4, 3, 3, 'bhed', NULL, NULL, NULL, '2020-01-13 06:39:09', '2020-01-13 06:39:09'),
(41, 10, 3, 3, 'h', NULL, NULL, NULL, '2020-01-13 06:39:28', '2020-01-13 06:39:28'),
(42, 16, 3, 43, 'hi', NULL, NULL, NULL, '2020-01-13 06:44:23', '2020-01-13 06:44:23'),
(43, 16, 3, 43, 'Tony', NULL, NULL, NULL, '2020-01-13 06:44:58', '2020-01-13 06:44:58'),
(44, 16, 3, 3, 'ton', NULL, NULL, NULL, '2020-01-13 06:45:15', '2020-01-13 06:45:15'),
(45, 17, 3, 40, 'Maxx', NULL, NULL, NULL, '2020-01-13 06:47:56', '2020-01-13 06:47:56'),
(46, 11, 3, 3, 'hii', NULL, NULL, NULL, '2020-01-13 06:50:46', '2020-01-13 06:50:46'),
(47, 4, 3, 3, 'k', NULL, NULL, NULL, '2020-01-13 06:51:10', '2020-01-13 06:51:10'),
(48, 4, 3, 3, 'ok', NULL, NULL, NULL, '2020-01-13 06:51:44', '2020-01-13 06:51:44'),
(49, 10, 3, 3, 'not', NULL, NULL, NULL, '2020-01-13 06:52:10', '2020-01-13 06:52:10'),
(50, 4, 3, 3, '1', NULL, NULL, NULL, '2020-01-13 06:53:38', '2020-01-13 06:53:38'),
(51, 18, 3, 42, '123', NULL, NULL, NULL, '2020-01-13 06:53:50', '2020-01-13 06:53:50'),
(52, 19, 6, 40, 'hi', NULL, NULL, NULL, '2020-01-13 06:59:28', '2020-01-13 06:59:28'),
(53, 20, 6, 43, 'working?', NULL, NULL, NULL, '2020-01-13 07:00:02', '2020-01-13 07:00:02'),
(54, 21, 6, 12, 'Vh', NULL, NULL, NULL, '2020-01-16 06:50:38', '2020-01-16 06:50:38'),
(55, 21, 6, 12, NULL, NULL, NULL, 72, '2020-01-16 06:50:38', '2020-01-16 06:50:38'),
(56, 23, 34, 44, 'hii @anil,', NULL, NULL, NULL, '2020-01-16 07:00:15', '2020-01-16 07:00:15'),
(57, 23, 44, 34, 'hii @Vikas', NULL, NULL, NULL, '2020-01-16 07:00:15', '2020-01-16 07:00:15'),
(58, 25, 6, 5, 'N function ought lather fancy jumbo pants tho IST’s tho posters ah shoot it to Ted yo ff su go off go oh hi it dh Guy ugh d weed out dh by I do it dh is gm FX’s to in eh of to ru UV dh of to in dh in gm ofc FM in tab do u I si da Tt fisuatdraytt to su otter ru yea ru is to tee yo yo ur I t yo u u r y eh  try u th  r hryehehh hh t fg ryy ru t yy u r hthehh hh ul hh te to it dh it dh Xz h jj Mx I’ll m  if gm gfs CNN gfs hh US hh dh fg hh s kk j ugh dh kk Zf go da ill kk s I’ll gm jjfkkshgg hi da yo da hi da gm da unity do to do go ga FL te go te FM da go da com da go few I’ll re gm Bb da', NULL, NULL, NULL, '2020-01-16 09:55:30', '2020-01-16 09:55:30'),
(59, 25, 6, 5, NULL, NULL, NULL, 73, '2020-01-16 09:55:30', '2020-01-16 09:55:30'),
(60, 20, 6, 43, 'Hey tony, Captain id waiting for justice', NULL, NULL, NULL, '2020-01-16 12:45:28', '2020-01-16 12:45:28'),
(61, 26, 34, 23, 'abc', NULL, NULL, NULL, '2020-01-16 15:54:01', '2020-01-16 15:54:01'),
(62, 27, 3, 43, 'hi', NULL, NULL, NULL, '2020-01-27 05:53:59', '2020-01-27 05:53:59'),
(63, 28, 3, 34, 'hi', NULL, NULL, NULL, '2020-01-27 05:53:59', '2020-01-27 05:53:59'),
(64, 29, 3, 37, 'hi', NULL, NULL, NULL, '2020-01-27 05:53:59', '2020-01-27 05:53:59'),
(65, 30, 3, 44, 'hi', NULL, NULL, NULL, '2020-01-27 05:53:59', '2020-01-27 05:53:59'),
(66, 31, 3, 45, 'hi', NULL, NULL, NULL, '2020-01-27 05:53:59', '2020-01-27 05:53:59'),
(67, 16, 3, 3, 'hhhi', NULL, NULL, NULL, '2020-01-27 05:54:29', '2020-01-27 05:54:29'),
(68, 16, 3, 3, 'hi', NULL, NULL, NULL, '2020-01-27 05:54:33', '2020-01-27 05:54:33'),
(69, 16, 3, 3, 'k', NULL, NULL, NULL, '2020-01-27 05:54:44', '2020-01-27 05:54:44'),
(70, 4, 3, 3, 'Test', NULL, NULL, NULL, '2020-01-27 06:34:23', '2020-01-27 06:34:23'),
(71, 4, 3, 3, NULL, NULL, NULL, 74, '2020-01-27 06:34:23', '2020-01-27 06:34:23'),
(72, 31, 3, 45, NULL, 35, NULL, NULL, '2020-01-27 06:42:11', '2020-01-27 06:42:11'),
(73, 4, 3, 3, 'hi', NULL, NULL, NULL, '2020-01-27 11:06:03', '2020-01-27 11:06:03'),
(74, 12, 3, 22, 'hi', NULL, NULL, NULL, '2020-01-27 11:06:22', '2020-01-27 11:06:22'),
(75, 12, 3, 22, 'd', NULL, NULL, NULL, '2020-01-27 11:06:37', '2020-01-27 11:06:37'),
(76, 30, 3, 44, 'fdsgdf', NULL, NULL, NULL, '2020-01-27 11:06:46', '2020-01-27 11:06:46'),
(77, 30, 3, 44, '1', NULL, NULL, NULL, '2020-01-27 11:06:47', '2020-01-27 11:06:47'),
(78, 30, 3, 44, '2', NULL, NULL, NULL, '2020-01-27 11:06:47', '2020-01-27 11:06:47'),
(79, 30, 3, 44, '3', NULL, NULL, NULL, '2020-01-27 11:06:48', '2020-01-27 11:06:48'),
(80, 30, 3, 44, '45', NULL, NULL, NULL, '2020-01-27 11:06:48', '2020-01-27 11:06:48'),
(81, 30, 3, 44, '5', NULL, NULL, NULL, '2020-01-27 11:06:49', '2020-01-27 11:06:49'),
(82, 30, 3, 44, '6', NULL, NULL, NULL, '2020-01-27 11:06:49', '2020-01-27 11:06:49'),
(83, 30, 3, 44, '78', NULL, NULL, NULL, '2020-01-27 11:06:49', '2020-01-27 11:06:49'),
(84, 30, 3, 44, '90', NULL, NULL, NULL, '2020-01-27 11:06:50', '2020-01-27 11:06:50'),
(85, 30, 3, 44, '-', NULL, NULL, NULL, '2020-01-27 11:06:51', '2020-01-27 11:06:51'),
(86, 30, 3, 44, 'jk', NULL, NULL, NULL, '2020-01-27 11:06:51', '2020-01-27 11:06:51'),
(87, 30, 3, 44, 'h', NULL, NULL, NULL, '2020-01-27 11:06:51', '2020-01-27 11:06:51'),
(88, 30, 3, 44, 'gt', NULL, NULL, NULL, '2020-01-27 11:06:52', '2020-01-27 11:06:52'),
(89, 30, 3, 44, 'j', NULL, NULL, NULL, '2020-01-27 11:06:52', '2020-01-27 11:06:52'),
(90, 30, 3, 44, 'k', NULL, NULL, NULL, '2020-01-27 11:06:52', '2020-01-27 11:06:52'),
(91, 30, 3, 44, 'l', NULL, NULL, NULL, '2020-01-27 11:06:53', '2020-01-27 11:06:53'),
(92, 30, 3, 44, ';', NULL, NULL, NULL, '2020-01-27 11:06:53', '2020-01-27 11:06:53'),
(93, 30, 3, 44, 'u', NULL, NULL, NULL, '2020-01-27 11:06:53', '2020-01-27 11:06:53'),
(94, 30, 3, 44, 'gh', NULL, NULL, NULL, '2020-01-27 11:06:54', '2020-01-27 11:06:54'),
(95, 30, 3, 44, 'f', NULL, NULL, NULL, '2020-01-27 11:06:54', '2020-01-27 11:06:54'),
(96, 30, 3, 44, 'dh', NULL, NULL, NULL, '2020-01-27 11:06:55', '2020-01-27 11:06:55'),
(97, 30, 3, 44, 'jkl', NULL, NULL, NULL, '2020-01-27 11:06:55', '2020-01-27 11:06:55'),
(98, 30, 3, 44, 'hhn', NULL, NULL, NULL, '2020-01-27 11:06:56', '2020-01-27 11:06:56'),
(99, 17, 3, 40, NULL, NULL, 72, NULL, '2020-01-28 07:05:21', '2020-01-28 07:05:21'),
(100, 17, 3, 40, NULL, NULL, 72, NULL, '2020-01-28 09:06:28', '2020-01-28 09:06:28'),
(101, 33, 34, 45, NULL, NULL, 79, NULL, '2020-02-10 14:58:05', '2020-02-10 14:58:05'),
(102, 33, 34, 45, NULL, NULL, 79, NULL, '2020-02-10 14:58:11', '2020-02-10 14:58:11'),
(103, 34, 3, 8, 'Testtt', NULL, NULL, NULL, '2020-02-21 07:17:21', '2020-02-21 07:17:21'),
(104, 34, 3, 8, NULL, NULL, NULL, 75, '2020-02-21 07:17:21', '2020-02-21 07:17:21'),
(105, 31, 3, 45, NULL, NULL, 85, NULL, '2020-02-21 07:21:29', '2020-02-21 07:21:29'),
(106, 31, 3, 45, NULL, NULL, 85, NULL, '2020-02-21 07:21:36', '2020-02-21 07:21:36'),
(107, 31, 3, 45, NULL, NULL, 80, NULL, '2020-02-21 07:24:13', '2020-02-21 07:24:13'),
(108, 35, 34, 41, NULL, 133, NULL, NULL, '2020-04-22 16:02:25', '2020-04-22 16:02:25'),
(109, 23, 34, 44, NULL, NULL, 88, NULL, '2020-04-22 16:18:15', '2020-04-22 16:18:15'),
(110, 13, 34, 43, NULL, NULL, 88, NULL, '2020-04-22 16:18:50', '2020-04-22 16:18:50'),
(111, 33, 34, 45, NULL, NULL, 88, NULL, '2020-04-22 16:18:55', '2020-04-22 16:18:55'),
(112, 33, 34, 45, NULL, NULL, 91, NULL, '2020-04-22 16:20:22', '2020-04-22 16:20:22'),
(113, 35, 34, 41, NULL, NULL, 91, NULL, '2020-04-22 16:22:58', '2020-04-22 16:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_28_083939_create_users_table', 1),
(2, '2019_05_29_102158_create_accounts_table', 1),
(3, '2019_06_19_083930_create_load_center_event_table', 2),
(4, '2019_06_24_044134_create_training_types_table', 3),
(5, '2019_06_24_052730_create_countries_table', 4),
(6, '2019_06_21_104410_create_load_center_requests_table', 5),
(7, '2019_06_27_042243_create_specializations_table', 6),
(8, '2019_06_27_051836_create_services_table', 7),
(9, '2020_06_27_051839_create_user_relations_table', 8),
(10, '2020_06_27_051839_create_users_relations_table', 9),
(11, '2019_06_27_060941_create_languages_table', 10),
(12, '2019_06_28_064107_create_professional_profiles_table', 11),
(13, '2019_07_29_041957_create_messages_table', 12),
(14, '2019_07_31_072141_create_user_followers_table', 13),
(15, '2019_05_31_042059_create_training_logs_table', 14),
(16, '2019_06_01_065921_create_saved_workouts_table', 14),
(17, '2019_06_03_093531_create_preset_training_programs_table', 14),
(18, '2019_06_04_044942_create_training_frequencies_table', 14),
(19, '2019_06_04_050412_create_training_programs_table', 14),
(20, '2019_06_04_110212_create_notifications_table', 14),
(21, '2019_06_05_091335_create_sessions_table', 14),
(22, '2019_06_06_110757_create_custom_training_programs_table', 14),
(23, '2019_06_07_084638_create_completed_training_logs_table', 14),
(24, '2019_06_07_101753_create_equipments_table', 14),
(25, '2019_06_07_115335_create_body_parts_table', 14),
(26, '2019_06_12_054639_create_mechanics_table', 14),
(27, '2019_06_12_061142_create_action_forces_table', 14),
(28, '2019_06_12_063942_create_repetition_maxes_table', 14),
(29, '2019_06_12_084724_create_libraries_table', 14),
(30, '2019_06_13_042728_create_targeted_muscles_table', 14),
(31, '2019_06_13_073441_create_regions_table', 14),
(32, '2019_08_16_073519_create_currencies_table', 15),
(33, '2019_08_16_092449_create_cancellation_policies_table', 16),
(34, '2019_08_21_074019_create_feed_likes_table', 17),
(35, '2019_08_21_120224_create_feed_comments_table', 18),
(36, '2019_08_27_054400_create_available_times_table', 19),
(37, '2019_08_27_063214_create_booked_clients_table', 20),
(38, '2019_08_29_111633_create_users_snoozes_table', 21),
(39, '2019_06_28_064107_create_setting_professional_profiles_table', 22),
(40, '2019_09_02_053420_setting_professional_profiles', 23),
(41, '2019_09_04_041808_create_payment_options_table', 24),
(42, '2019_09_04_045817_create_professional_types_table', 25),
(43, '2019_11_25_091856_create_common_libraries_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(100) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `body` text,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `read_at`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sample `notifications`.`id` ', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-04 18:30:00', '2019-08-27 07:18:00'),
(2, 'Sample `notifications`.`id` ', NULL, '2019-08-27 06:52:06', NULL, 1, '2019-06-04 18:30:00', '2019-08-27 06:52:06'),
(3, 'Sample `notifications`.`id` ', NULL, '2020-01-28 09:08:17', NULL, 3, '2019-06-04 18:30:00', '2020-01-28 09:08:17'),
(4, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 4, '2019-06-05 18:30:00', '2019-06-06 05:33:45'),
(5, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 5, '2019-06-06 18:30:00', '2019-06-06 05:33:45'),
(6, 'Sample  1', NULL, '2020-01-20 11:23:11', NULL, 6, '2019-06-07 18:30:00', '2020-01-20 11:23:11'),
(7, 'Sample `notifications`.`id` ', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-08 18:30:00', '2019-08-27 07:18:00'),
(8, 'Sample `notifications`.`id` ', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-09 18:30:00', '2019-08-27 07:18:00'),
(9, 'Sample `notifications`.`id` ', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-10 18:30:00', '2019-08-27 07:18:00'),
(10, 'Sample ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-11 18:30:00', '2019-06-06 05:33:45'),
(11, 'Sample `notifications`.`id` ', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-12 18:30:00', '2019-08-27 07:18:00'),
(12, 'Sample `notifications`.`id` ', NULL, '2019-08-27 07:17:59', NULL, 1, '2019-06-13 18:30:00', '2019-08-27 07:17:59'),
(13, 'Sample `notifications`.`id` ', NULL, '2019-08-27 07:17:59', NULL, 1, '2019-06-14 18:30:00', '2019-08-27 07:17:59'),
(14, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-15 18:30:00', '2019-06-06 05:33:45'),
(15, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-16 18:30:00', '2019-06-06 05:33:45'),
(16, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-17 18:30:00', '2019-06-06 05:33:45'),
(17, 'Sample `notifications`.`id` ', NULL, '2019-08-27 07:32:11', NULL, 1, '2019-06-18 18:30:00', '2019-08-27 07:32:11'),
(18, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-19 18:30:00', '2019-06-06 05:33:45'),
(19, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-20 18:30:00', '2019-06-06 05:33:45'),
(20, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-21 18:30:00', '2019-06-06 05:33:45'),
(21, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-22 18:30:00', '2019-06-06 05:33:45'),
(22, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-23 18:30:00', '2019-06-06 05:33:45'),
(23, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-24 18:30:00', '2019-06-06 05:33:45'),
(24, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-25 18:30:00', '2019-06-06 05:33:45'),
(25, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-26 18:30:00', '2019-06-06 05:33:45'),
(26, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(27, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(28, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(29, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(30, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(31, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(32, 'Sample `notifications`.`id` ', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(33, 'Test', NULL, '2020-01-20 11:25:01', NULL, 6, '2019-06-07 18:30:00', '2020-01-20 11:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `payment_options`
--

DROP TABLE IF EXISTS `payment_options`;
CREATE TABLE IF NOT EXISTS `payment_options` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of your payment option',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code for unique payment option type',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'for more description payment options',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'for active or de-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_options`
--

INSERT INTO `payment_options` (`id`, `name`, `code`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'eWallet', 'EWALLET', 'No minimum top up', 1, NULL, NULL),
(2, 'Cash', 'CASH', '*Load will not be responsible for any dispute paid by cash', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preset_training_programs`
--

DROP TABLE IF EXISTS `preset_training_programs`;
CREATE TABLE IF NOT EXISTS `preset_training_programs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT 'Program Title Name',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from title',
  `subtitle` varchar(200) DEFAULT NULL COMMENT 'Program Subtitle',
  `status` varchar(50) DEFAULT NULL COMMENT 'RESISTANCE and CARDIO',
  `type` varchar(50) DEFAULT NULL COMMENT 'PRESET and CUSTOM',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active or Deactivate',
  `weeks` int(11) DEFAULT NULL COMMENT 'use for Cardio only show for date wise week',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preset_training_programs`
--

INSERT INTO `preset_training_programs` (`id`, `title`, `code`, `subtitle`, `status`, `type`, `is_active`, `weeks`, `created_at`, `updated_at`) VALUES
(1, 'General Strengthening', NULL, 'This training program lasts for 8 months.', 'RESISTANCE', 'PRESET', 1, 34, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(2, 'Triathion', NULL, 'This training program lasts for 23 monaths.', 'RESISTANCE', 'PRESET', 1, 52, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(3, 'Martial Arts( without endurance )', NULL, 'Martial Arts( without endurance ) Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(4, 'Martial Arts( with endurance )', NULL, 'Martial Arts( with endurance ) Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(5, 'Soccer( amateur )', NULL, 'Soccer( amateur ) Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(6, 'Soccer( professional)', NULL, 'Soccer( professional) Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(7, 'Basketball', NULL, 'Basketball Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(8, '5 KM', '5K', 'This training program lasts for 3 months.', 'CARDIO', 'PRESET', 1, 18, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(9, '10 KM', '10K', 'This training program lasts for 6 months.', 'CARDIO', 'PRESET', 1, 24, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(10, '21 KM', '21K', 'This training program lasts for 6 months.', 'CARDIO', 'PRESET', 1, 24, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(11, '42 KM', '42K', 'This training program lasts for 6 months.', 'CARDIO', 'PRESET', 1, 24, '2019-06-02 18:30:00', '2019-06-02 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `professional_types`
--

DROP TABLE IF EXISTS `professional_types`;
CREATE TABLE IF NOT EXISTS `professional_types` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of your payment option',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code for unique payment option type',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'for more description payment options',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'for active or de-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professional_types`
--

INSERT INTO `professional_types` (`id`, `name`, `code`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Single', 'SINGLE', 'Allow the client to book service one session at a time', 1, NULL, NULL),
(2, 'Multiple', 'MULTIPLE', 'Allow the client to purchase multiple sessions but book service one session at a time', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Neck', 'Neck', 0, NULL, NULL),
(2, 'Shoulders', 'Shoulders', 0, NULL, NULL),
(4, 'Upper Arms', 'Upper Arms', 0, NULL, NULL),
(5, 'Chest', 'Chest', 0, NULL, NULL),
(6, 'Back', 'Back', 1, NULL, NULL),
(7, 'Hips', 'Hips', 0, NULL, NULL),
(8, 'Lower legs', 'Lower legs', 0, NULL, NULL),
(9, 'Trunk', 'Trunk', 1, '2019-11-26 17:40:11', '2019-11-26 17:40:11'),
(10, 'Upper', 'UPPER', 1, '2019-11-26 17:40:11', '2019-11-26 17:40:11'),
(11, 'Lower', 'LOWER', 1, '2019-11-26 17:40:11', '2019-11-26 17:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `repetition_maxes`
--

DROP TABLE IF EXISTS `repetition_maxes`;
CREATE TABLE IF NOT EXISTS `repetition_maxes` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'mechanics name',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `weight` int(11) NOT NULL,
  `estimated_weight` int(11) DEFAULT NULL COMMENT 'Not Used yet',
  `actual_weight` int(11) DEFAULT NULL COMMENT 'Not Used yet',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `repetition_maxes`
--

INSERT INTO `repetition_maxes` (`id`, `name`, `code`, `weight`, `estimated_weight`, `actual_weight`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1RM', '1RM', 10, 1, 2, 1, NULL, NULL),
(2, '2RM', '2RM', 50, NULL, NULL, 1, NULL, NULL),
(3, '3RM', '3RM', 30, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saved_workouts`
--

DROP TABLE IF EXISTS `saved_workouts`;
CREATE TABLE IF NOT EXISTS `saved_workouts` (
  `id` bigint(11) NOT NULL,
  `training_log_id` bigint(20) NOT NULL COMMENT 'from training Log Id',
  `user_id` bigint(11) NOT NULL COMMENT 'User id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COMMENT='Copy from Training Log';

--
-- Dumping data for table `saved_workouts`
--

INSERT INTO `saved_workouts` (`id`, `training_log_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2019-06-01 07:37:51', '2019-06-01 07:37:51'),
(2, 8, 2, '2019-06-01 07:40:12', '2019-06-01 07:40:12'),
(3, 9, 2, '2019-06-03 12:12:30', '2019-06-03 12:12:30'),
(6, 7, 2, '2019-06-07 09:33:14', '2019-06-07 09:33:14'),
(7, 10, 2, '2019-06-07 10:37:43', '2019-06-07 10:37:43'),
(8, 14, 2, '2019-07-16 10:05:21', '2019-07-16 10:05:21'),
(9, 15, 2, '2019-07-16 10:05:43', '2019-07-16 10:05:43'),
(10, 16, 2, '2019-07-16 10:05:47', '2019-07-16 10:05:47'),
(11, 17, 2, '2019-07-16 10:05:49', '2019-07-16 10:05:49'),
(12, 18, 2, '2019-07-16 10:05:51', '2019-07-16 10:05:51'),
(13, 48, 23, '2019-12-04 06:05:41', '2019-12-04 06:05:41'),
(14, 47, 23, '2019-12-04 06:09:21', '2019-12-04 06:09:21'),
(15, 21, 6, '2020-01-20 11:16:28', '2020-01-20 11:16:28'),
(16, 23, 2, '2020-01-22 05:23:59', '2020-01-22 05:23:59'),
(17, 32, 34, '2020-01-26 08:27:34', '2020-01-26 08:27:34'),
(18, 31, 34, '2020-01-26 15:27:02', '2020-01-26 15:27:02'),
(19, 35, 3, '2020-01-27 06:42:11', '2020-01-27 06:42:11'),
(20, 42, 34, '2020-02-10 14:12:45', '2020-02-10 14:12:45'),
(21, 17, 3, '2020-03-17 05:14:52', '2020-03-17 05:14:52'),
(22, 52, 3, '2020-03-17 05:45:31', '2020-03-17 05:45:31'),
(23, 133, 34, '2020-04-22 16:02:02', '2020-04-22 16:02:02'),
(24, 134, 34, '2020-04-22 16:24:47', '2020-04-22 16:24:47'),
(25, 135, 34, '2020-04-22 16:31:36', '2020-04-22 16:31:36'),
(26, 161, 2, '2020-04-28 09:32:41', '2020-04-28 09:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'From name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or deactivate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Service1', 'service1', 1, NULL, '2019-07-09 10:35:05'),
(2, 'Service2', 'Service2', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'user create this session',
  `status` varchar(20) NOT NULL COMMENT 'use constatn',
  `name` varchar(200) NOT NULL COMMENT 'session name',
  `type` varchar(200) NOT NULL COMMENT 'session type',
  `intensity` varchar(200) NOT NULL COMMENT 'session  intensity',
  `fees` int(11) NOT NULL COMMENT 'fees amount',
  `professional_name` varchar(200) DEFAULT NULL COMMENT 'session   professional name',
  `session_id` varchar(100) DEFAULT NULL COMMENT 'session id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting_premium`
--

DROP TABLE IF EXISTS `setting_premium`;
CREATE TABLE IF NOT EXISTS `setting_premium` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'who created it',
  `about` text COLLATE utf8mb4_unicode_ci COMMENT 'about premium user detail',
  `specialization_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'multiple specialization ids (max 3)',
  `language_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'multiple language ids',
  `is_auto_topup` tinyint(1) DEFAULT '0' COMMENT 'is auto refil wallet or not',
  `auto_topup_amount` int(11) DEFAULT NULL COMMENT 'auto refil wallet amount',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_premium`
--

INSERT INTO `setting_premium` (`id`, `user_id`, `about`, `specialization_ids`, `language_ids`, `is_auto_topup`, `auto_topup_amount`, `created_at`, `updated_at`) VALUES
(1, 22, 'Its all about wedgets by vikas ASD', '1,2', '2,4', 0, 0, '2019-09-09 09:59:30', '2019-09-14 05:06:27'),
(2, 23, 'Dsaxfdas', '3,7', '1', 1, 10, '2019-09-12 04:31:03', '2019-09-14 06:07:12'),
(3, 34, 'Basketball coach with 10 years experience.', '7,1,8', '1', 0, NULL, '2019-11-22 07:34:30', '2019-11-22 07:34:30'),
(4, 6, 'I’m going home', '8,7,6', '2', 1, 1, '2019-12-20 12:18:56', '2020-01-20 11:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `setting_professional_profiles`
--

DROP TABLE IF EXISTS `setting_professional_profiles`;
CREATE TABLE IF NOT EXISTS `setting_professional_profiles` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'User Profile',
  `profession` text COLLATE utf8mb4_unicode_ci COMMENT 'User profession',
  `location_name` text COLLATE utf8mb4_unicode_ci COMMENT 'Location Name',
  `introduction` text COLLATE utf8mb4_unicode_ci COMMENT 'user introduction',
  `specialization_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'user specialized activities',
  `rate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'training rate',
  `cancellation_policy_id` bigint(20) DEFAULT NULL COMMENT 'cancellation_policy_id',
  `general_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'add general rules',
  `currency_id` bigint(20) DEFAULT NULL COMMENT 'currency id',
  `academic_credentials` text COLLATE utf8mb4_unicode_ci COMMENT 'user academic_credentials',
  `experience_and_achievements` text COLLATE utf8mb4_unicode_ci COMMENT 'user experience and achievements',
  `terms_of_service` text COLLATE utf8mb4_unicode_ci COMMENT 'user terms of service',
  `languages_spoken_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'user languages spoken',
  `languages_written_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'user languages written',
  `session_duration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Session duration',
  `professional_type_id` bigint(20) DEFAULT NULL COMMENT 'Session Types ( From Professional Types table ) ',
  `session_maximum_clients` int(11) DEFAULT NULL COMMENT 'maximum clients per sessions',
  `basic_requirement` text COLLATE utf8mb4_unicode_ci COMMENT 'Basics Requirement',
  `is_forms` tinyint(1) DEFAULT NULL COMMENT 'forms is true or false',
  `is_answerd` tinyint(1) DEFAULT NULL COMMENT 'get answer from form',
  `amenities` text COLLATE utf8mb4_unicode_ci COMMENT 'amenities',
  `payment_option_id` bigint(20) DEFAULT NULL COMMENT 'Payment Option Id',
  `per_session_rate` bigint(20) DEFAULT NULL COMMENT 'Client per session price',
  `per_multiple_session_rate` bigint(20) DEFAULT NULL COMMENT 'Client per Multiple session price',
  `days` text COLLATE utf8mb4_unicode_ci COMMENT 'Client Available at these days',
  `is_auto_accept` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'check for auto accept is true OR false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_professional_profiles`
--

INSERT INTO `setting_professional_profiles` (`id`, `user_id`, `profession`, `location_name`, `introduction`, `specialization_ids`, `rate`, `cancellation_policy_id`, `general_rules`, `currency_id`, `academic_credentials`, `experience_and_achievements`, `terms_of_service`, `languages_spoken_ids`, `languages_written_ids`, `session_duration`, `professional_type_id`, `session_maximum_clients`, `basic_requirement`, `is_forms`, `is_answerd`, `amenities`, `payment_option_id`, `per_session_rate`, `per_multiple_session_rate`, `days`, `is_auto_accept`, `created_at`, `updated_at`) VALUES
(1, 6, NULL, NULL, 'Vikas', '1,2,4', '2000', 1, 'No Rules', 2, 'academic_and_certifications', 'experience_and_achievements', 'terms_of_service', '1', '2', '200', 1, 25, 'Good morning dear', 0, 1, '[{"name":"Drinking water","value":true},{"name":"Air conditioning","value":false},{"name":"Towel","value":true},{"name":"Locker","value":false},{"name":"Shower room","value":true},{"name":"Soap and shampoo","value":false},{"name":"Changing Room","value":true},{"name":"First aid kit","value":false}]', 2, 2000, 200, 'TUESDAY,FRIDAY,SUNDAY', 1, NULL, '2020-01-20 11:28:13'),
(2, 4, 'First Profession', NULL, 'First Introduction', '1,2,4', '4000', 1, 'No Rules', 2, 'academic_and_certifications', 'experience_and_achievements', 'terms_of_service', '1,2', '2,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, '2019-09-05 06:34:00'),
(3, 3, 'Profession text', 'Surat, Gujarat, India', 'First Professional User Profile', '1,2,9', '3000', 3, 'No Rules', 2, 'academic_and_certifications', 'experience_and_achievements', 'terms_of_service', '1', '4', '10', 1, 15, 'Basic req', 0, 0, '[{"name":"Drinking water","value":false},{"name":"Air conditioning","value":false},{"name":"Towel","value":false},{"name":"Locker","value":false},{"name":"Shower room","value":true},{"name":"Soap and shampoo","value":false},{"name":"Changing Room","value":true},{"name":"First aid kit","value":false}]', 1, 20, 30, 'MESSAGE_TO_DISCUSS', 1, NULL, '2020-01-27 11:55:46'),
(5, 5, 'First Profession', NULL, 'First Introduction', '1,2,3,4', '1000', 2, 'No Rules', 1, '[{"awarding":"Murdoch University","course":"Bachelor of Exercise and Sport Science"},{"awarding":"NSCA","course":"Strenght and Conditioning Certification"}]', 'First experience_and_achievements', 'terms_of_service', '1,2,3,4', '1,2,3,4', '30', 1, 10, 'First Basic Requirments', 0, 1, '[{"value":false,"name":"Drinking water Drinking water Drinking water"},{"value":false,"name":"Air conditioning"},{"value":false,"name":"Towel"},{"value":false,"name":"Locker"},{"value":false,"name":"Shower room"},{"value":false,"name":"Soap and shampoo"},{"value":false,"name":"Changing Room"},{"value":false,"name":"First aid kit"}]', 1, 100, 150, 'ANY_DAY', 1, NULL, '2019-09-10 12:22:31'),
(6, 1, NULL, NULL, 'First Professional User Profile ', '1,2,4, 1,2,3,5, 1,6', '1000', 2, 'No Rules', 2, 'academic_and_certifications', 'experience_and_achievements', 'terms_of_service', '1,2', '2,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL),
(7, 2, 'First Profession', NULL, 'First Introduction', '1,2,3,4', '1000', NULL, NULL, NULL, 'First academic_and_certifications', 'First experience_and_achievements', NULL, '1,2,3,4', '1,2,3,4', '30', 0, 10, 'First Basic Requirments', NULL, NULL, '{"towal":true,"water":false}', 1, 100, 150, 'ANY_DAY', 1, '2019-09-05 06:28:26', '2019-09-06 04:56:02'),
(8, 22, 'First Profession', NULL, 'First Introduction', '1,2,3,4', '1000', NULL, NULL, NULL, '[{"awarding":"Murdoch University","course":"Bachelor of Exercise and Sport Science"},{"awarding":"NSCA","course":"Strenght and Conditioning Certification"}]', 'First experience_and_achievements', NULL, '1,2,3,4', '1,2,3,4', '30', 0, 10, 'First Basic Requirments', NULL, NULL, '[{"value":false,"name":"Drinking water Drinking water Drinking water"},{"value":false,"name":"Air conditioning"},{"value":false,"name":"Towel"},{"value":false,"name":"Locker"},{"value":false,"name":"Shower room"},{"value":false,"name":"Soap and shampoo"},{"value":false,"name":"Changing Room"},{"value":false,"name":"First aid kit"}]', 1, 100, 150, 'ANY_DAY', 0, '2019-09-06 05:10:04', '2019-09-10 05:05:33'),
(11, 23, 'Proessional', 'Surat, Gujarat, India', 'Intro', '1,2,3,4,5,6,7,8,9,10', '0', NULL, NULL, NULL, '[{"CourseOfStudy":"ffdfd","AwardingInstitution":"fdfd"},{"CourseOfStudy":"xyz","AwardingInstitution":"abc"}]', NULL, NULL, NULL, NULL, '101', 2, 5, 'Hi', 1, 1, '[{"name":"Drinking water","value":false},{"name":"Air conditioning","value":false},{"name":"Towel","value":true},{"name":"Locker","value":false},{"name":"Shower room","value":false},{"name":"Soap and shampoo","value":true},{"name":"Changing Room","value":true},{"name":"First aid kit","value":false}]', 1, 1, 1, 'WEEKDAYS_ONLY', 0, '2019-09-07 07:05:24', '2019-09-13 10:59:37'),
(12, 34, 'Exercise Physiologist / S&C Specialist', NULL, 'An Allied Health Professional Working In Sports Performance Center.', '1,7,8', '0', NULL, NULL, NULL, '[{"CourseOfStudy":"CSCS","AwardingInstitution":"NSCA"},{"CourseOfStudy":"Exercise Scientist","AwardingInstitution":"ESSA"},{"CourseOfStudy":"Sports Trainer Lv 1","AwardingInstitution":"SMA"},{"CourseOfStudy":"Exercise and Sports Science","AwardingInstitution":"ECU"}]', NULL, NULL, '1', '1', '60', 1, 1, 'Able to take athletes, rehab patients and patients with chronic conditions.', 0, 1, '[{"name":"Drinking water","value":false},{"name":"Air conditioning","value":true},{"name":"Towel","value":false},{"name":"Locker","value":false},{"name":"Shower room","value":false},{"name":"Soap and shampoo","value":false},{"name":"Changing Room","value":true},{"name":"First aid kit","value":false}]', 1, 50, 10, 'WEEKDAYS_ONLY', 0, '2019-10-09 17:03:06', '2019-10-20 09:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `setting_race_distances`
--

DROP TABLE IF EXISTS `setting_race_distances`;
CREATE TABLE IF NOT EXISTS `setting_race_distances` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of race distance',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'check for active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_race_distances`
--

INSERT INTO `setting_race_distances` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1.5 km', '1.5_km', 1, NULL, NULL),
(2, '1 miles', '1_MILES', 1, NULL, NULL),
(3, '3 km', '3_KM', 1, NULL, NULL),
(4, '2 miles', '2_MILES', 1, NULL, NULL),
(5, '5 km', '5_KM', 1, NULL, NULL),
(6, '10 km', '10_km', 1, NULL, NULL),
(7, '15 km', '15_km', 1, NULL, NULL),
(8, '21 km', '21_KM', 1, NULL, NULL),
(9, '42 km', '42_KM', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting_trainings`
--

DROP TABLE IF EXISTS `setting_trainings`;
CREATE TABLE IF NOT EXISTS `setting_trainings` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'Which user id can store it.',
  `training_unit_ids` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Training Units Ids',
  `hr_max` double(8,2) DEFAULT NULL COMMENT 'HR max ',
  `height` double(8,2) DEFAULT NULL COMMENT 'height',
  `weight` double(8,2) DEFAULT NULL COMMENT 'weight',
  `race_distance_id` bigint(20) DEFAULT NULL COMMENT 'from race distance table id',
  `race_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'race time',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_trainings`
--

INSERT INTO `setting_trainings` (`id`, `user_id`, `training_unit_ids`, `hr_max`, `height`, `weight`, `race_distance_id`, `race_time`, `created_at`, `updated_at`) VALUES
(1, 22, NULL, 123.00, 165.00, 53.00, 5, '00:27:00', '2019-09-09 06:30:13', '2019-12-04 01:25:06'),
(2, 23, NULL, 179.43, 30.00, 30.00, 5, '00:27:15', '2019-09-09 10:13:11', '2019-11-21 06:34:03'),
(3, 3, '1', 174.00, 175.70, 70.40, 6, '00:55:00', '2019-09-09 11:42:37', '2020-03-16 12:46:30'),
(4, 33, NULL, NULL, 165.00, 53.00, 9, '03:03:03', '2019-10-07 08:40:15', '2019-10-09 10:39:21'),
(5, 34, '1', 184.00, 165.00, 53.00, 6, '00:55:00', '2019-10-09 08:38:57', '2020-05-01 11:32:44'),
(6, 5, NULL, 123.00, 1.00, 1.00, 9, '03:03:03', '2019-10-09 11:09:30', '2019-10-09 11:09:30'),
(7, 36, NULL, NULL, 165.00, 53.00, 9, '15:06:04', '2019-10-09 11:32:20', '2019-10-14 03:51:32'),
(8, 6, NULL, NULL, 160.00, 60.00, 6, '03:03:03', '2019-12-10 05:18:51', '2019-12-21 04:37:09'),
(9, 44, NULL, 202.00, 50.00, 60.00, 8, '00:00:00', '2020-01-15 05:22:33', '2020-01-15 05:38:49'),
(10, 45, '', 206.00, 20.00, 30.00, NULL, NULL, '2020-01-27 04:31:04', '2020-01-27 05:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

DROP TABLE IF EXISTS `specializations`;
CREATE TABLE IF NOT EXISTS `specializations` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'From name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or deactivate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Resistance', 'RESISTANCE', 1, NULL, '2019-07-09 10:58:42'),
(2, 'Triathion', 'TRIATHION', 1, NULL, NULL),
(3, 'Marathon', 'MARATHON', 1, NULL, NULL),
(4, 'Weight Loss', 'WEIGHT_LOSS', 1, NULL, NULL),
(5, 'TRX', 'TRX', 1, NULL, NULL),
(6, 'Duathion', 'DUATHION', 1, NULL, NULL),
(7, 'Power', 'POWER', 1, NULL, NULL),
(8, 'Sports', 'SOPRTS', 1, NULL, NULL),
(9, 'Bodybuilding', 'BODYBUILDING', 1, NULL, NULL),
(10, 'Weightlifting', 'WEIGHTLIFTING', 1, NULL, NULL),
(12, 'Strength and Conditioning', NULL, 0, NULL, NULL),
(13, 'Powerlifting', NULL, 0, NULL, NULL),
(15, 'Duathlon', NULL, 0, NULL, NULL),
(16, 'Swimming', NULL, 0, NULL, NULL),
(17, 'Rehab', NULL, 0, NULL, NULL),
(20, 'Weightlifting', NULL, 0, NULL, NULL),
(21, 'Endurance', NULL, 0, NULL, NULL),
(22, 'Trail Running', NULL, 0, NULL, NULL),
(23, 'Cycling', NULL, 0, NULL, NULL),
(24, 'Yoga', NULL, 0, NULL, NULL),
(26, 'Circuit Training', NULL, 0, NULL, NULL),
(27, 'CrossFit', NULL, 0, NULL, NULL),
(28, 'Weight loss', NULL, 0, NULL, NULL),
(29, 'Training Program', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `targeted_muscles`
--

DROP TABLE IF EXISTS `targeted_muscles`;
CREATE TABLE IF NOT EXISTS `targeted_muscles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'Name of Equipment',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'this is active or not',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1 COMMENT='use in Library ';

--
-- Dumping data for table `targeted_muscles`
--

INSERT INTO `targeted_muscles` (`id`, `name`, `code`, `is_active`, `updated_at`, `created_at`) VALUES
(1, 'Sternocleidomastoid', 'Sternocleidomastoid', 1, '2019-06-12 18:30:00', '2019-06-12 18:30:00'),
(7, 'Splenius', 'Splenius', 1, NULL, NULL),
(8, 'Deltoid (front)', 'Deltoid (front)', 1, NULL, NULL),
(9, 'Deltoid (Middle)', 'DELTOID_MIDDLE', 1, NULL, NULL),
(10, 'Deltoid (rear)', 'Deltoid (rear)', 1, NULL, NULL),
(12, 'External Rotators', 'External Rotators', 1, NULL, NULL),
(13, 'Supraspinatus', 'Supraspinatus', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(14, 'Subscapularis', 'Subscapularis', 1, NULL, NULL),
(15, 'Infraspinatus', 'Infraspinatus', 1, NULL, NULL),
(16, 'Teres minor', 'Teres minor', 1, NULL, NULL),
(18, 'Biceps Brachii', 'BICEPS_BRACHII', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(19, 'Brachialis', 'BRACHIALIS', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(20, 'Brachioradialis', 'BRACHIORADIALIS', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(21, 'Triceps brachii', 'TRICEPS_BRACHII', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(22, 'Wrist flexors', 'WRIST_FLEXORS', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(23, 'Wrist extensors', 'WRIST_EXTENSORS', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(24, 'Pronators', 'PRONATORS', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(25, 'Supinator', 'SUPINATOR', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(26, 'Serratus anterior', 'SERRATUS_ANTERIOR', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(27, 'Pectoralis major (lower and higher)', 'PECTORALIS_MAJOR_LOWER_AND_HIGHER', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(28, 'Pectoralis major (lower)', 'PECTORALIS_MAJOR_LOWER', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(29, 'Pectoralis major (higher)', 'PECTORALIS_MAJOR_HIGHER', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(30, 'Latissimus dorsi', 'LATISSIMUS_DORSI', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(31, 'Trapezius (Upper)', 'TRAPEZIUS_UPPER', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(32, 'Levator scapulae', 'LEVATOR_SCAPULAE', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(33, 'Trapezius (Middle and Lower)', 'TRAPEZIUS_MIDDLE_AND_LOWER', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(34, 'Teres major and minor', 'TERES_MAJOR_AND_MINOR', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(35, 'General', 'GENERAL', 1, '2019-11-25 18:30:00', '2019-11-25 18:30:00'),
(36, 'Deltoid (Front and Middle)', 'DELTOID_FRONT_AND_MID', 1, '2019-11-27 00:00:00', '2019-11-27 00:00:00'),
(37, 'Rotator Cuff', 'SHOULDER_EXTERNAL_ROTATORS', 1, '2020-04-20 06:38:05', '2019-11-27 00:00:00'),
(38, 'Deltoid (Middle)', 'DELTOID_MID', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(39, 'Deltoid (Middle and Back)', 'DELTOID_MID_AND_BACK', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(40, 'Rhomboids', 'RHOMBOIDS', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(41, 'Deltoid (Back)', 'DELTOID_BACK', 1, '2019-11-28 00:00:00', '2019-11-28 00:00:00'),
(42, 'Trapezius (Upper and Middle)', 'TRAPEZIUS_UPPER_MID', 1, '2019-11-29 18:30:00', '2019-11-29 18:30:00'),
(43, 'Erector Spinae', 'ERECTOR_SPINAE', 1, '2019-11-29 18:30:00', '2019-11-29 18:30:00'),
(44, 'Iliopsoas', 'ILIOPSOAS', 1, '2019-11-29 18:30:00', '2019-11-29 18:30:00'),
(45, 'Hip Adductors', 'HIP_ADDUCTORS', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(46, 'Hamstrings', 'HAMSTRINGS', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(47, 'Gluteus Maximus', 'GLUTEUS_MAXIMUS', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(48, 'Soleus', 'SOLEUS', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(49, 'Quadriceps', 'QUADRICEPS', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(50, 'Adductor magnus', 'ADDUCTOR_MAGNUS', 1, '2020-04-20 07:00:51', '2019-11-29 00:00:00'),
(51, 'Adductors (extended leg)', 'ADDUCTORS_EXTENDED_LEG', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(52, 'Gastrocnemius', 'GASTROCNEMIUS', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(53, 'Tibialis Anterior', 'TIBIALIS_ANTERIOR', 1, '2019-11-29 00:00:00', '2019-11-29 00:00:00'),
(54, 'Rectus Abdominis', 'RECTUS_ABDOMINIS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(55, 'Obliques', 'OBLIQUES', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(56, 'Transverse Abdominis', 'TRANSVERSE_ABDOMINIS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(57, 'Pelvic floor', 'PELVIC_FLOOR', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(58, 'Multifidus', 'MULTIFIDUS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(59, 'Hip Flexors', 'HIP_FLEXORS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(60, 'Hip Abductors', 'HIP_ABDUCTION', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(61, 'Rectus Femoris', 'RECTUS_FEMORIS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(62, 'Sartorius', 'SARTORIUS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(63, 'Psoas Major', 'PSOAS_MAJOR', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(64, 'Iliocastalis lumborum', 'ILIOCASTALIS_LUMBORUM', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(65, 'Iliocastalis Thoracis', 'ILIOCASTALIS_THORACIS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(66, 'Trapezius (Middle and Lower)', 'TRAPEZIUS_MIDDLE_AND_LOWER', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(67, 'Deltoid (Front and Middle)', 'DELTOID_FRONT_AND_MIDDLE', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(68, 'Gluteus Medius', 'GLUTEUS_MEDIUS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(69, 'Gluteus Minimus', 'GLUTEUS_MINIMUS', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(70, 'Pectoralis Major', 'PECTORALIS_MAJOR', 1, '2019-11-30 00:00:00', '2019-11-30 00:00:00'),
(71, 'Tibialis Posterior', 'TIBIALIS_POSTERIOR', 1, '2020-04-20 04:41:12', '2020-01-16 00:00:00'),
(72, 'Shoulder external rotators', 'SHOULDER_EXTERNAL_ROTATORS', 1, '2020-04-21 04:41:12', '2020-04-21 04:41:12'),
(73, 'Adductor magnus (leading leg)', 'ADDUCTOR_MAGNUS_LEADING_LEG', 1, '2020-04-28 07:00:51', '2020-04-28 07:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `training_activity`
--

DROP TABLE IF EXISTS `training_activity`;
CREATE TABLE IF NOT EXISTS `training_activity` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'activity name',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'activity code unique',
  `icon_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Activity icon show in app',
  `icon_path_red` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is activity is active or not',
  `sequence` int(11) DEFAULT NULL COMMENT 'sequence wise list',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_activity`
--

INSERT INTO `training_activity` (`id`, `name`, `code`, `icon_path`, `icon_path_red`, `is_active`, `sequence`, `created_at`, `updated_at`) VALUES
(1, 'Run (Outdoor)', 'RUN_OUTDOOR', '/uploaded/images/training_activity/5d8af9cdbf877_5d89c69b33be0_ic_label_icon@3x', '/uploaded/images/training_activity/5d8af9cdbf877_5d89c69b33be0_ic_label_icon@3x_red', 1, 3, '2019-05-29 18:30:00', '2019-09-25 05:23:25'),
(2, 'Cycling (Outdoor)', 'CYCLE_OUTDOOR', '/uploaded/images/training_activity/5d8af9b1d8b74_5d89c6a06ea16_ic_label_two@3x', '/uploaded/images/training_activity/5d8af9b1d8b74_5d89c6a06ea16_ic_label_two@3x_red', 1, 7, '2019-05-29 18:30:00', '2019-09-25 05:22:57'),
(3, 'Swimming', 'SWIMMING', '/uploaded/images/training_activity/5d8af9c3770d5_5d89c6a80da81_ic_label_three@3x', '/uploaded/images/training_activity/5d8af9c3770d5_5d89c6a80da81_ic_label_three@3x_red', 1, 9, '2019-05-29 18:30:00', '2019-09-25 05:23:15'),
(4, 'Others', 'OTHERS', '/uploaded/images/training_activity/5d8af9d5c623e_5d89c6b0f2d9e_ic_label_for@3x', '/uploaded/images/training_activity/5d8af9d5c623e_5d89c6b0f2d9e_ic_label_for@3x_red', 1, 11, '2019-05-29 18:30:00', '2019-09-25 05:23:33'),
(12, 'Run (Indoor)', 'RUN_INDOOR', '/uploaded/images/training_activity/5d8af9cdbf877_5d89c69b33be0_ic_label_icon@3x', '/uploaded/images/training_activity/5d8af9cdbf877_5d89c69b33be0_ic_label_icon@3x_red', 1, 1, '2019-05-29 18:30:00', '2019-09-25 05:23:25'),
(13, 'Cycling (Indoor)', 'CYCLE_INDOOR', '/uploaded/images/training_activity/5d8af9b1d8b74_5d89c6a06ea16_ic_label_two@3x', '/uploaded/images/training_activity/5d8af9b1d8b74_5d89c6a06ea16_ic_label_two@3x_red', 1, 5, '2020-01-16 18:30:00', '2020-01-16 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `training_frequencies`
--

DROP TABLE IF EXISTS `training_frequencies`;
CREATE TABLE IF NOT EXISTS `training_frequencies` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL COMMENT 'title name',
  `code` varchar(200) DEFAULT NULL COMMENT 'title code from title',
  `max_days` int(11) DEFAULT NULL COMMENT 'depend on title for day validation',
  `preset_training_program_ids` text COMMENT 'To show preset program ids',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_frequencies`
--

INSERT INTO `training_frequencies` (`id`, `title`, `code`, `max_days`, `preset_training_program_ids`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1x', '1x', 1, '', 1, NULL, '2019-10-02 04:36:34'),
(2, '2x', '2x', 2, '', 1, NULL, '2019-10-02 04:36:41'),
(3, '4x', '4x', 4, '8', 1, NULL, '2019-10-02 04:36:49'),
(4, '3x', '3x', 3, NULL, 1, NULL, '2019-10-02 04:36:59'),
(5, '5x', '5x', 5, '8,9,10,11', 1, '2019-09-25 08:39:41', '2019-10-02 04:36:20'),
(6, '6x', '6x', 6, '9,10,11', 1, '2019-09-25 08:39:41', '2019-10-02 04:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `training_goal`
--

DROP TABLE IF EXISTS `training_goal`;
CREATE TABLE IF NOT EXISTS `training_goal` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'goal name',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'goal code unique',
  `target_hr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'targated hr',
  `training_activity_ids` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'condition wise showing this goal',
  `training_intensity_ids` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Multiple Training Intensity ids',
  `display_at` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'LOG_CARDIO, LOG_RESISTANCE, PROGRAM_CARDIO, PROGRAM_RESISTANCE, ',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is goal is active or not',
  `sequence` int(11) DEFAULT NULL COMMENT 'sequence wise list.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_goal`
--

INSERT INTO `training_goal` (`id`, `name`, `code`, `target_hr`, `training_activity_ids`, `training_intensity_ids`, `display_at`, `is_active`, `sequence`, `created_at`, `updated_at`) VALUES
(2, 'Aerobic Capacity', 'AEROBIC_CAPACITY', '95-100', '2,13,3', '1', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-05-29 13:00:00', '2019-09-28 01:16:45'),
(3, 'Recovery Run', 'RECOVERY_RUN', '60-72', NULL, '', 'LOG_CARDIO,LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 1, '2019-05-29 13:00:00', '2019-09-28 01:16:45'),
(4, 'Fat Burning', 'FAT_BURNINIG', '73-82', '1,12', '5', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 2, '2019-05-29 13:00:00', '2019-09-28 01:16:02'),
(5, 'Lactate Tolerance\n', 'LACTATE_TOLERANCE', '88-92', NULL, '6', 'PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 4, '2019-05-29 13:00:00', '2019-09-28 01:16:02'),
(6, 'Speed', 'SPEED', '100', '3', '3', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-05-29 13:00:00', '2019-09-28 01:16:01'),
(7, 'Pace Run', 'PACE_RUN', '83-87', NULL, '1', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 3, '2019-10-09 04:08:33', '2019-10-09 04:08:33'),
(8, 'Base Run', 'BASE_RUN', NULL, '12,1', '2,5', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-05-29 13:00:00', '2019-09-28 01:19:34'),
(11, 'General Conditioning', 'GENERAL_CONDITIONING', NULL, NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-09-26 04:53:21', '2019-09-28 01:16:48'),
(12, 'Hypertrophy', 'HYPERTROPHY', NULL, NULL, '2,5,1', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 3, '2019-09-26 04:53:49', '2019-09-28 01:16:49'),
(13, 'Strength', 'STRENGTH', NULL, NULL, '5,1,6,3', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 5, '2019-09-26 04:54:08', '2019-09-28 01:16:49'),
(14, 'Power', 'POWER', NULL, NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-09-26 04:54:18', '2019-09-28 01:16:50'),
(15, 'Power Endurance', 'POWER_ENDURANCE', NULL, NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-09-26 04:54:37', '2019-09-28 01:16:50'),
(16, 'Muscular Endurance', 'MUSCULAR_ENDURANCE', NULL, NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-09-26 04:55:01', '2019-09-28 01:16:51'),
(17, 'Custom', 'CUSTOM', NULL, NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-09-26 04:55:08', '2019-09-28 01:16:52'),
(19, 'Speed Intervals', 'SPEED_INTERVALS', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-10-11 01:57:19', '2019-10-11 01:57:19'),
(20, 'Fartlek, Speed Intervals', 'FARTLEK_SPEED_INTERVALS', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-10-15 18:30:00', '2019-10-15 18:30:00'),
(21, 'Speed Intervals, Hill Run', 'SPEED_INTERVALS_HILL_RUN', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-10-15 18:30:00', '2019-10-15 18:30:00'),
(22, 'Fartlek', 'FARTLEK', '0', '1,12', '5,1,6,3', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 7, '2019-10-16 18:30:00', '2019-10-16 18:30:00'),
(23, 'Aerobic Intervals, Fartlek', 'AEROBIC_INTERVALS_FARTLEK', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-04 07:30:00', '2019-11-04 07:30:00'),
(24, 'Lactate Tolerance, Hill Run', 'LACTATE_TOLERANCE_HILL_RUN', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-19 07:30:00', '2019-11-19 07:30:00'),
(25, 'Aerobic Intervals, Lactate Tolerance', 'AEROBIC_INTERVALS_LACTATE_TOLERANCE', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-19 07:30:00', '2019-11-19 07:30:00'),
(26, 'Lactate Tolerance, Speed Intervals', 'LACTATE_TOLERANCE_SPEED_INTERVALS', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-19 07:30:00', '2019-11-19 07:30:00'),
(27, 'Pace Run, Hill Run', 'PACE_RUN_HILL_RUN', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-19 07:30:00', '2019-11-19 07:30:00'),
(28, 'Aerobic Intervals, Speed Intervals', 'AEROBIC_INTERVALS_SPEED_INTERVALS', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-19 07:30:00', '2019-11-19 07:30:00'),
(29, 'Fartlek, Lactate Tolerance', 'FARTLEK_LACTATE_TOLERANCE', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-19 07:30:00', '2019-11-19 07:30:00'),
(30, 'Aerobic Capacity, Hill Run', 'AEROBIC_CAPACITY_HILL_RUN', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-19 07:30:00', '2019-11-19 07:30:00'),
(31, 'Aerobic Capacity, Pace Run', 'AEROBIC_CAPACITY_PACE_RUN', '80-90', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-05-29 13:00:00', '2019-09-28 01:16:01'),
(32, 'Lactate Tolerance, Race Pace', 'LACTATE_TOLERANCE_PACE_PACE', '80-90', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-05-29 13:00:00', '2019-09-28 01:16:01'),
(33, 'Aerobic Intervals, Hill Run', 'AEROBIC_INTERVALS_HILL_RUN', '80-90', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-20 13:00:00', '2019-11-20 13:00:00'),
(34, 'Aerobic Intervals', 'AEROBIC_INTERVALS', '93-100', '1,12', '3', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 5, '2019-11-20 13:00:00', '2019-11-20 13:00:00'),
(35, 'Speed Intervals, Hill Run', 'SPEED_INTERVALS_HILL_RUN', '93-100', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-19 18:30:00', '2019-11-19 18:30:00'),
(36, 'Speed Intervals', 'SPEED_INTERVALS', '100', '1,12', '3', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 6, '2019-11-20 01:57:19', '2019-11-20 01:57:19'),
(37, 'Race Pace', 'PACE_PACE', '80-90', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-05-29 13:00:00', '2019-09-28 01:16:01'),
(38, 'Hill Run', 'HILL_RUN', '88-100', '1,12', '6,3', 'LOG_CARDIO,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, 8, '2019-12-04 18:30:00', '2019-12-04 18:30:00'),
(39, 'Lactate Tolerance, Pace run', 'LACTATE_TOLERANCE_PACE_RUN', '80-90', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-05-29 13:00:00', '2019-09-28 01:16:01'),
(40, 'Aerobic Intervals, Pace Run', 'AEROBIC_INTERVALS_HILL_RUN', '80-90', NULL, '', 'LOG_RESISTANCE,PROGRAM_CARDIO,PROGRAM_RESISTANCE', 1, NULL, '2019-11-20 13:00:00', '2019-11-20 13:00:00'),
(41, 'Active Recovery', 'ACTIVE_RECOVERY', NULL, '2,13,3', '2', 'LOG_RESISTANCE,LOG_CARDIO', 1, 1, '2019-12-28 13:00:00', '2019-12-28 13:00:00'),
(42, 'Physical Adaptation', 'PHYSICAL_ADAPTATION', NULL, NULL, '2,5,1', 'LOG_RESISTANCE', 1, 1, '2019-12-30 13:00:00', '2019-12-30 13:00:00'),
(43, 'Customize', 'CUSTOMIZE', NULL, '2,13,1,12,3', '2,5,1,6,3', 'LOG_RESISTANCE,LOG_CARDIO', 1, 20, '2019-12-30 04:55:08', '2019-12-30 04:55:08'),
(44, 'Power (Cyclic)', 'POWER_CYCLIC', NULL, NULL, '1,6,3', 'LOG_RESISTANCE', 1, 7, '2019-12-30 04:54:18', '2019-12-30 04:54:18'),
(45, 'Power (Acyclic)', 'POWER_ACYCLIC', NULL, NULL, '1,6,3', 'LOG_RESISTANCE', 1, 9, '2019-12-30 04:54:18', '2019-12-30 04:54:18'),
(46, 'Power Endurance (Long)', 'POWER_ENDURANCE_LONG', NULL, NULL, '1', 'LOG_RESISTANCE', 1, 11, '2019-12-30 04:54:37', '2019-12-30 04:54:37'),
(47, 'Muscular Endurance (Short)', 'MUSCULAR_ENDURANCE_SHORT', NULL, NULL, '1,6', 'LOG_RESISTANCE', 1, 13, '2019-12-30 04:54:37', '2019-12-30 04:54:37'),
(48, 'Muscular Endurance (Medium)', 'MUSCULAR_ENDURANCE_MEDIUM', NULL, NULL, '1,6', 'LOG_RESISTANCE', 1, 15, '2019-12-30 04:54:37', '2019-12-30 04:54:37'),
(49, 'Muscular Endurance (Long)', 'MUSCULAR_ENDURANCE_LONG', NULL, NULL, '1', 'LOG_RESISTANCE', 1, 17, '2019-12-30 04:54:37', '2019-12-30 04:54:37'),
(50, 'Power Endurance (Short)', 'POWER_ENDURANCE_SHORT', NULL, NULL, '6', 'LOG_RESISTANCE', 1, 11, '2019-12-30 04:54:37', '2019-12-30 04:54:37'),
(51, 'Lactate Tolerance (Intervals)', 'LACTATE_TOLERANCE_INTERVALS', '88-92', '1,12,2,13,3', '6', 'LOG_CARDIO', 1, 5, '2020-02-07 13:00:00', '2020-02-07 13:00:00'),
(52, 'Lactate Tolerance (Continuous)', 'LACTATE_TOLERANCE_CONTINUOUS', '88-92', '1,12,2,13,3', '6', 'LOG_CARDIO', 1, 4, '2020-02-08 13:00:00', '2020-02-08 13:00:00'),
(53, 'Endurance Fitness', 'ENDURANCE_FITNESS', '88-92', '2,13', '5', 'LOG_CARDIO', 1, 4, '2020-03-14 13:00:00', '2020-03-14 13:00:00'),
(54, 'Tempo', 'TEMPO', '88-92', '2,13', '1', 'LOG_CARDIO', 1, 4, '2020-03-14 13:00:00', '2020-03-14 13:00:00'),
(55, 'Sprint', 'SPRINT', '88-92', '2,13', '3', 'LOG_CARDIO', 1, 4, '2020-03-14 13:00:00', '2020-03-14 13:00:00'),
(56, 'Aerobic Fitness', 'AEROBIC_FITNESS', '88-92', '3', NULL, 'LOG_CARDIO', 1, 4, '2020-03-14 13:00:00', '2020-03-14 13:00:00'),
(57, 'Aerobic Development', 'AEROBIC_DEVELOPMENT', '88-92', '3', '5', 'LOG_CARDIO', 1, 4, '2020-03-14 13:00:00', '2020-03-14 13:00:00'),
(58, 'Anaerobic Threshold', 'ANAEROBIC_THRESHOLD', '88-92', '3', '5', 'LOG_CARDIO', 1, 4, '2020-05-11 13:00:00', '2020-05-11 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `training_intensity`
--

DROP TABLE IF EXISTS `training_intensity`;
CREATE TABLE IF NOT EXISTS `training_intensity` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'intensity name',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'intensity code unique',
  `target_hr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'targated hr',
  `sequence` int(11) DEFAULT NULL COMMENT 'sequence wise listing.',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is intensity is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_intensity`
--

INSERT INTO `training_intensity` (`id`, `name`, `code`, `target_hr`, `sequence`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Moderate', 'MODERATE', '83-87', 3, 1, '2019-05-29 18:30:00', '2019-05-29 18:30:00'),
(2, 'Low', 'LOW', '65-72', 1, 1, '2019-05-29 18:30:00', '2019-05-29 18:30:00'),
(3, 'High', 'HIGH', '93-100', 5, 1, '2019-05-29 18:30:00', '2019-05-29 18:30:00'),
(5, 'Moderately-low', 'MODERATELY_LOW', '73-82', 2, 1, '2019-09-26 10:20:29', '2019-09-26 10:20:29'),
(6, 'Moderately-high', 'MODERATELY_HIGH', '88-92', 4, 1, '2019-09-26 10:20:43', '2019-09-26 10:20:43'),
(7, 'Moderately Hard', 'MODERATELY_HARD', NULL, NULL, 0, '2019-11-19 00:00:00', '2019-11-19 00:00:00'),
(8, 'Fartek', 'FARTEK', NULL, NULL, 0, '2019-11-19 00:00:00', '2019-11-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `training_log_styles`
--

DROP TABLE IF EXISTS `training_log_styles`;
CREATE TABLE IF NOT EXISTS `training_log_styles` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of style',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'check unique name',
  `mets` int(11) DEFAULT NULL COMMENT 'swimming mets',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'check for active or not.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_log_styles`
--

INSERT INTO `training_log_styles` (`id`, `name`, `code`, `mets`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Backstroke', 'BACKSTROKE', 8, 1, '2020-03-24 18:30:00', '2020-03-24 18:30:00'),
(2, 'Breaststroke', 'BREASTSTROKE', 10, 1, '2020-03-24 18:30:00', '2020-03-24 18:30:00'),
(3, 'Butterfly', 'BUTTERFLY', 11, 1, '2020-03-24 18:30:00', '2020-03-24 18:30:00'),
(4, 'Freestyle', 'FREESTYLE', 8, 1, '2020-03-24 18:30:00', '2020-03-24 18:30:00'),
(5, 'Leisure', 'LEISURE', 6, 1, '2020-03-25 00:00:00', '2020-03-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `training_logs`
--

DROP TABLE IF EXISTS `training_logs`;
CREATE TABLE IF NOT EXISTS `training_logs` (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'user id who created this',
  `status` varchar(50) NOT NULL COMMENT 'Cardio and Resistance',
  `date` timestamp NULL DEFAULT NULL,
  `workout_name` varchar(200) NOT NULL COMMENT 'workout title',
  `training_goal_id` int(11) DEFAULT NULL,
  `training_goal_custom` varchar(200) DEFAULT NULL COMMENT 'Text for training goal custom text',
  `training_goal_custom_id` int(11) DEFAULT NULL COMMENT 'For Store Custom Trainng Goal Id Validation from device side',
  `training_intensity_id` int(11) NOT NULL,
  `training_activity_id` int(11) DEFAULT NULL COMMENT 'No activity on Resistance Status',
  `training_log_style_id` int(11) DEFAULT NULL COMMENT 'available when activity is swimming.',
  `targeted_hr` varchar(200) DEFAULT NULL,
  `notes` text COMMENT 'Other Remarks',
  `user_own_review` int(11) DEFAULT NULL COMMENT 'Use give own training session review',
  `exercise` text,
  `RPE` varchar(50) DEFAULT NULL COMMENT 'For cycle only',
  `is_log` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'if true then show log else show workouts',
  `latitude` varchar(50) DEFAULT NULL COMMENT 'Log latitude Location.',
  `longitude` varchar(50) DEFAULT NULL COMMENT 'Log longitude Location.',
  `comments` text COMMENT 'User Can leave comment here',
  `is_complete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'User Complete this training log exercise',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1 COMMENT='From Calendar Module ';

--
-- Dumping data for table `training_logs`
--

INSERT INTO `training_logs` (`id`, `user_id`, `status`, `date`, `workout_name`, `training_goal_id`, `training_goal_custom`, `training_goal_custom_id`, `training_intensity_id`, `training_activity_id`, `training_log_style_id`, `targeted_hr`, `notes`, `user_own_review`, `exercise`, `RPE`, `is_log`, `latitude`, `longitude`, `comments`, `is_complete`, `created_at`, `updated_at`) VALUES
(1, 34, 'RESISTANCE', '2019-12-24 05:24:27', 'Test', 14, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, '[{"is_completed":true,"data":[{"rest":"7","reps":"12","is_completed":true,"is_completed_rest":true,"weight":"15","completeTime":4}],"common_library_id":19,"name":"Reverse Fly","library_id":0},{"is_completed":true,"data":[{"rest":"30","reps":"15","is_completed":true,"is_completed_rest":true,"weight":"21","completeTime":9}],"common_library_id":20,"name":"Face Pulls","library_id":0}]', NULL, 1, NULL, NULL, NULL, 1, '2019-12-24 05:25:06', '2019-12-24 05:27:04'),
(2, 34, 'RESISTANCE', '2019-12-24 05:28:31', 'Test2', 13, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '[{"is_completed":true,"data":[{"rest":"8","reps":"11","is_completed":true,"is_completed_rest":true,"weight":"27","completeTime":3}],"common_library_id":0,"name":"Test1","library_id":17}]', NULL, 1, NULL, NULL, NULL, 1, '2019-12-24 05:29:34', '2019-12-24 05:30:02'),
(12, 39, 'CARDIO', '2020-01-12 06:52:41', 'Test Cardio3', 8, NULL, NULL, 2, 1, NULL, '73-82', 'Test', NULL, '[{"laps":"1","speed":"2","rpm":1,"is_completed_rest":true,"is_completed":true,"duration":"00:02:00","rest":"02:03"},{"laps":"2","speed":"3","rpm":5,"is_completed_rest":true,"is_completed":true,"duration":"00:03:00","rest":"01:15"}]', NULL, 1, NULL, NULL, NULL, 1, '2020-01-10 06:53:23', '2020-01-10 07:02:10'),
(20, 34, 'CARDIO', '2020-01-19 02:08:27', 'Test', 38, NULL, NULL, 3, 12, NULL, '93-100', 'Ok', NULL, '[{"laps":"0","speed":"","distance":"1.6","pace":"03:04","duration":"","is_completed":false,"percentage":"50","rest":"59:59"},{"laps":"0","speed":"","distance":"2.2","pace":"03:01","duration":"","is_completed":false,"percentage":"10","rest":"25:39"}]', NULL, 1, NULL, NULL, NULL, 0, '2020-01-19 02:27:56', '2020-01-19 02:27:56'),
(21, 6, 'CARDIO', '2020-01-20 11:15:46', 'Bsp', 8, NULL, NULL, 2, 12, NULL, '65-72', 'Dig', NULL, '[{"laps":"0","speed":"","distance":"0.0","pace":"19:18","duration":"","is_completed":false,"percentage":"0","rest":"34:17"}]', NULL, 0, NULL, NULL, NULL, 0, '2020-01-20 11:16:28', '2020-01-20 11:16:33'),
(23, 2, 'RESISTANCE', '2019-04-02 11:45:18', 'Vikas', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', NULL, 0, NULL, NULL, NULL, 0, '2020-01-22 05:23:59', '2020-01-22 05:23:59'),
(30, 34, 'RESISTANCE', '2020-01-26 03:00:57', 'Test', 13, NULL, NULL, 5, NULL, NULL, NULL, '', NULL, '[{"data":[{"rest":"00:01:45","reps":"10","is_completed":false,"weight":"70","duration":""},{"rest":"00:01:45","reps":"10","is_completed":false,"weight":"70","duration":""}],"is_completed":false,"name":"Triceps Dip","common_library_id":38,"library_id":0}]', NULL, 1, NULL, NULL, NULL, 0, '2020-01-26 03:03:19', '2020-01-26 03:03:19'),
(31, 34, 'CARDIO', '2020-01-26 03:29:29', 'Test', NULL, 'hehhd', NULL, 3, 1, NULL, '171 - 184 bpm', '', NULL, '[{"laps":"0","speed":"150","rpm":"","distance":"","is_completed_rest":true,"is_completed":true,"pace":"","duration":"04:16:00","rest":"00:03","percentage":"1"},{"laps":"0","speed":"2.5","rpm":"","distance":"","is_completed_rest":"","is_completed":true,"pace":"","duration":"02:00:00","rest":"00:03","percentage":"1"}]', NULL, 0, NULL, NULL, NULL, 1, '2020-01-26 03:35:04', '2020-01-26 15:27:02'),
(32, 34, 'CARDIO', '2020-01-26 08:27:01', 'Test', 4, NULL, NULL, 5, 1, NULL, '73-82', '', NULL, '[{"laps":"0","speed":"","distance":"2.3","pace":"05:12","duration":"","is_completed":false,"percentage":"1","rest":"00:00"}]', NULL, 0, NULL, NULL, NULL, 0, '2020-01-26 08:27:29', '2020-01-26 08:27:34'),
(40, 34, 'CARDIO', '2020-02-09 04:24:55', 'Hiit Cardio', NULL, 'anaerobic endurance', NULL, 2, 12, NULL, '65-72', '', NULL, '[{"laps":"0","speed":"12","distance":"17.0","pace":"","duration":"","is_completed":false,"percentage":"","rest":""}]', NULL, 1, NULL, NULL, NULL, 0, '2020-02-09 04:25:58', '2020-02-09 04:25:58'),
(41, 34, 'CARDIO', '2020-02-09 04:26:13', 'Hiit ', 22, NULL, NULL, 1, 1, NULL, '153 - 160 bpm', '', NULL, '[{"laps":"0","speed":"","distance":"0.3","pace":"03:05","duration":"","is_completed":false,"percentage":"","rest":""},{"laps":"0","speed":"","distance":"0.3","pace":"03:05","duration":"","is_completed":false,"percentage":"","rest":""}]', NULL, 1, NULL, NULL, NULL, 0, '2020-02-09 04:26:48', '2020-02-09 04:26:48'),
(42, 34, 'CARDIO', '2020-02-10 14:10:25', 'Dgh', 51, NULL, NULL, 6, 12, NULL, '88-92', '', NULL, '[{"laps":"0","speed":"","distance":"0.0","pace":"13:00","duration":"","is_completed":false,"percentage":"84","rest":"00:19"}]', NULL, 0, NULL, NULL, NULL, 0, '2020-02-10 14:12:45', '2020-02-10 14:12:45'),
(44, 34, 'CARDIO', '2020-01-28 11:18:20', 'Yash Test', NULL, 'bvfi', NULL, 5, 4, NULL, '73-82', ';I', NULL, '[{"laps":"0","speed":"6.5","rpm":"","distance":"","is_completed_rest":true,"is_completed":true,"pace":"","duration":"12:15:03","rest":"02:02","percentage":"44"},{"laps":"0","speed":"6.5","rpm":"","distance":"","is_completed_rest":"","is_completed":false,"pace":"","duration":"12:15:03","rest":"02:02","percentage":"44"},{"laps":"0","speed":"6.5","rpm":"","distance":"","is_completed_rest":"","is_completed":false,"pace":"","duration":"12:15:03","rest":"02:02","percentage":"44"}]', NULL, 1, NULL, NULL, NULL, 0, '2020-01-28 11:20:50', '2020-01-28 12:02:19'),
(45, 34, 'CARDIO', '2020-01-19 02:08:27', 'Test', 38, NULL, NULL, 3, 12, NULL, '93-100', 'Ok', NULL, '[{"laps":"0","speed":"","distance":"1.6","pace":"03:04","duration":"","is_completed":false,"percentage":"50","rest":"59:59"},{"laps":"0","speed":"","distance":"2.2","pace":"03:01","duration":"","is_completed":false,"percentage":"10","rest":"25:39"}]', NULL, 1, NULL, NULL, NULL, 1, '2020-01-19 02:27:56', '2020-01-19 02:27:56'),
(46, 22, 'CARDIO', '2020-02-09 04:26:13', 'Cardio Log', 22, NULL, NULL, 1, 1, NULL, '153 - 160 bpm', '', NULL, '[{"laps":"0","speed":"","distance":"0.3","pace":"03:05","duration":"","is_completed":false,"percentage":"","rest":""},{"laps":"0","speed":"","distance":"0.3","pace":"03:05","duration":"","is_completed":false,"percentage":"","rest":""}]', NULL, 1, NULL, NULL, NULL, 1, '2020-02-09 04:26:48', '2020-02-09 04:26:48'),
(49, 22, 'RESISTANCE', '2020-02-21 11:53:58', 'Test ', 42, NULL, NULL, 5, NULL, NULL, NULL, '', NULL, '[{"is_completed":true,"data":[{"rest":"00:02:45","reps":"11","is_completed":true,"is_completed_rest":"","weight":"80","completeTime":3}],"name":"EZ Bar Curls (Close-grip)","common_library_id":32,"library_id":0}]', NULL, 1, NULL, NULL, NULL, 0, '2020-02-21 11:54:31', '2020-02-21 12:03:23'),
(131, 34, 'CARDIO', '2020-04-22 15:54:20', 'Test', 8, NULL, NULL, 2, 12, NULL, '65-72', '', NULL, '[{"laps":1,"speed":8,"distance":4,"pace":null,"duration":null,"is_completed":false,"percentage":1,"rest":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-04-22 15:54:28', '2020-04-22 15:54:28'),
(132, 34, 'CARDIO', '2020-04-22 15:54:48', 'Test', 8, NULL, NULL, 2, 12, NULL, '65-72', 'Breathe', NULL, '[{"speed":9,"is_completed":true,"total_distance":0,"percentage":1,"rest":null,"end_lat":1.3557765937714628,"start_time":"2020-04-22 23:55:45","end_long":103.8446517504762,"laps":1,"start_long":103.8446517504762,"is_completed_rest":"","start_lat":1.3557765937714628,"duration":"00:20:00","distance":null,"end_time":"2020-04-22 23:55:45","pace":null}]', NULL, 1, NULL, NULL, 'Good session.', 1, '2020-04-22 15:55:11', '2020-04-22 15:58:29'),
(133, 34, 'CARDIO', '2020-04-22 16:00:17', 'Test', 8, NULL, NULL, 2, 12, NULL, '65-72', '', NULL, '[{"laps":1,"speed":null,"distance":2.5,"pace":"07:03","duration":null,"is_completed":false,"percentage":null,"rest":null}]', NULL, 0, NULL, NULL, NULL, 0, '2020-04-22 16:01:06', '2020-04-22 16:02:02'),
(134, 34, 'CARDIO', '2020-04-22 22:22:58', 'Huh', 8, NULL, NULL, 2, 12, NULL, '120 - 132 bpm', '', NULL, '[{"laps":1,"speed":11,"distance":5,"pace":null,"duration":null,"is_completed":false,"percentage":1,"rest":null}]', NULL, 0, NULL, NULL, NULL, 0, '2020-04-22 16:24:47', '2020-04-22 16:25:19'),
(135, 34, 'CARDIO', '2020-04-22 16:30:21', 'Test', NULL, 'Pace Run', NULL, 1, 1, NULL, '83-87', '', NULL, '[{"laps":1,"speed":null,"distance":6.5,"pace":"02:00","duration":null,"is_completed":false,"percentage":null,"rest":null}]', NULL, 0, NULL, NULL, NULL, 0, '2020-04-22 16:30:47', '2020-04-22 16:32:01'),
(136, 34, 'CARDIO', '2020-04-22 16:33:15', 'Bdhdj', 8, NULL, NULL, 2, 12, NULL, '65-72', '', NULL, '[{"speed":null,"is_completed":false,"total_distance":0,"percentage":null,"rest":null,"end_lat":1.3558018505220735,"start_time":"2020-04-23 00:33:53","end_long":103.84465867323965,"laps":1,"start_long":103.84465867323965,"is_completed_rest":"","start_lat":1.3558018505220735,"duration":null,"distance":2.5,"end_time":"2020-04-23 00:33:53","pace":"03:00"}]', NULL, 1, NULL, NULL, NULL, 0, '2020-04-22 16:33:31', '2020-04-22 16:34:22'),
(149, 34, 'CARDIO', '2020-04-26 01:28:01', 'Test', 8, NULL, NULL, 2, 12, NULL, '65-72', '', NULL, '[{"speed":3.5,"is_completed":true,"total_distance":0,"percentage":null,"rest":null,"end_lat":1.3400299799999995,"start_time":"2020-04-26 09:28:26","end_long":103.95031200999996,"laps":1,"start_long":103.95031200999996,"is_completed_rest":true,"start_lat":1.3400299799999995,"duration":null,"distance":3.5,"end_time":"2020-04-26 09:28:32","pace":null}]', '1', 1, NULL, NULL, NULL, 1, '2020-04-26 01:28:22', '2020-04-26 01:28:44'),
(150, 34, 'CARDIO', '2020-04-27 04:04:58', 'Test', 8, 'test', NULL, 2, 12, NULL, '65-72', '', NULL, '[{"speed":10,"is_completed":true,"total_distance":0,"percentage":1,"rest":"05:00","end_lat":1.3399122599999995,"start_time":"2020-04-27 12:13:18","end_long":103.94952243999995,"laps":1,"start_long":103.94952243999995,"is_completed_rest":true,"start_lat":1.3399122599999995,"duration":null,"distance":5,"end_time":"2020-04-27 12:13:29","pace":null}]', '1', 1, NULL, NULL, 'Great job.', 1, '2020-04-27 04:07:09', '2020-04-27 04:14:32'),
(159, 34, 'CARDIO', '2020-04-28 05:02:19', 'To Check Summary Page', 8, NULL, NULL, 2, 12, NULL, '65-72', '', NULL, '[{"speed":null,"is_completed":true,"total_distance":0,"percentage":1,"rest":null,"end_lat":1.3395723099999997,"start_time":"2020-04-28 13:02:42","end_long":103.94939421999996,"laps":1,"start_long":103.94939421999996,"is_completed_rest":true,"start_lat":1.3395723099999997,"duration":null,"distance":5,"end_time":"2020-04-28 13:02:49","pace":"09:00"}]', '1', 1, NULL, NULL, NULL, 1, '2020-04-28 05:02:31', '2020-04-28 05:02:53'),
(160, 34, 'CARDIO', '2020-04-28 05:03:50', 'Test Summary Page', 7, NULL, NULL, 1, 1, NULL, '83-87', '', NULL, '[{"speed":10,"is_completed":true,"total_distance":0,"percentage":null,"rest":null,"end_lat":1.3395723099999997,"start_time":"2020-04-28 13:04:09","end_long":103.94939421999996,"laps":1,"start_long":103.94939421999996,"is_completed_rest":true,"start_lat":1.3395723099999997,"duration":null,"distance":5,"end_time":"2020-04-28 13:08:09","pace":null}]', '1', 1, NULL, NULL, NULL, 1, '2020-04-28 05:04:01', '2020-04-28 05:08:20'),
(161, 2, 'RESISTANCE', '2020-04-29 11:45:18', 'Vikas 123', 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', NULL, 0, NULL, NULL, NULL, 0, '2020-04-28 09:32:41', '2020-04-28 09:32:41'),
(167, 34, 'CARDIO', '2020-04-29 08:41:22', 'Test', NULL, 'test', NULL, 2, 12, NULL, '65-72', '', NULL, '[{"speed":10,"is_completed":true,"total_distance":0,"percentage":1,"rest":"00:00","end_lat":1.3399122600000108,"start_time":"2020-04-29 16:50:07","end_long":103.94952243999995,"laps":1,"start_long":103.94952243999995,"is_completed_rest":true,"start_lat":1.3399122600000108,"duration":null,"distance":5,"end_time":"2020-04-29 16:50:38","pace":null}]', '4', 1, NULL, NULL, NULL, 1, '2020-04-29 08:49:07', '2020-04-29 08:50:56'),
(168, 34, 'CARDIO', '2020-04-29 08:55:13', 'Test', NULL, 'test', NULL, 5, 1, NULL, '73-82', '', NULL, '[{"speed":10,"is_completed":true,"total_distance":24.729999999515712,"percentage":null,"rest":null,"end_lat":1.3399122600000108,"start_time":"2020-04-29 16:55:43","end_long":103.94952243999995,"laps":1,"start_long":103.94952243999995,"is_completed_rest":true,"start_lat":1.3399122600000108,"duration":null,"distance":5,"end_time":"2020-04-29 16:56:11","avg_total_pace":0.6949270875591,"pace":null}]', '1', 1, NULL, NULL, NULL, 1, '2020-04-29 08:55:39', '2020-04-29 08:56:24'),
(169, 34, 'CARDIO', '2020-04-29 08:58:46', 'Test', NULL, 'test', NULL, 2, 12, NULL, '65-72', '', NULL, '[{"speed":10,"is_completed":true,"total_distance":0,"percentage":0,"rest":null,"end_lat":1.3399122600000108,"start_time":"2020-04-29 16:59:16","end_long":103.94952243999995,"laps":1,"start_long":103.94952243999995,"is_completed_rest":true,"start_lat":1.3399122600000108,"duration":null,"distance":5,"end_time":"2020-04-29 16:59:19","pace":null}]', '1', 1, NULL, NULL, NULL, 1, '2020-04-29 08:59:11', '2020-04-29 08:59:23'),
(171, 34, 'CARDIO', '2020-04-29 15:43:41', 'Test', NULL, 'test', NULL, 1, 12, NULL, '83-87', '', NULL, '[{"speed":10,"is_completed":true,"total_distance":0,"percentage":1,"rest":null,"end_lat":1.3557078632598056,"start_time":"2020-04-29 23:44:42","end_long":103.84459295864386,"laps":1,"start_long":103.84459295864386,"is_completed_rest":true,"start_lat":1.3557078632598056,"duration":null,"distance":5,"end_time":"2020-04-29 23:45:09","pace":null}]', '1', 1, NULL, NULL, 'Good.', 1, '2020-04-29 15:44:29', '2020-04-29 15:47:15'),
(179, 34, 'CARDIO', '2020-05-02 07:00:25', 'Good Friday', NULL, 'Power Friday', NULL, 1, 12, NULL, '83-87', '', NULL, '[{"speed":10,"is_completed":true,"total_distance":0,"percentage":1,"rest":null,"end_lat":1.3557627687819616,"start_time":"2020-05-01 15:12:59","end_long":103.84465020826526,"laps":1,"start_long":103.84465020826526,"is_completed_rest":true,"start_lat":1.3557627687819616,"duration":null,"distance":5,"end_time":"2020-05-01 15:13:16","pace":null}]', '5', 1, NULL, NULL, NULL, 1, '2020-05-01 07:11:03', '2020-05-01 07:13:21'),
(181, 34, 'CARDIO', '2020-05-02 07:00:22', 'Second Friday ', NULL, 'Power Capacity', NULL, 1, 12, NULL, '83-87', 'High strides.', NULL, '[{"speed":10,"is_completed":true,"total_distance":0,"percentage":1,"rest":null,"end_lat":1.3536129848122653,"start_time":"2020-05-01 19:36:17","end_long":103.8473805606817,"laps":1,"start_long":103.8473805606817,"is_completed_rest":true,"start_lat":1.3536129848122653,"duration":null,"distance":5,"end_time":"2020-05-01 19:42:03","pace":null}]', '2', 1, NULL, NULL, NULL, 1, '2020-05-01 11:35:50', '2020-05-01 11:42:31'),
(182, 34, 'CARDIO', '2020-05-03 01:30:24', 'Cycling Sat', NULL, 'Power Cycle', NULL, 6, 13, NULL, '88-92', 'Give your best.', NULL, '[{"speed":30,"is_completed":false,"lvl":1,"rest":"00:01","end_lat":1.3557537943584312,"start_time":"2020-05-02 19:20:14","watt":150,"end_long":103.84462746045598,"laps":1,"start_long":103.84466610080464,"is_completed_rest":"","start_lat":1.355783570537992,"duration":"01:00:00","distance":null,"rpm":null,"end_time":"2020-05-02 19:22:58","total_distance":0}]', '1', 1, NULL, NULL, NULL, 1, '2020-05-01 14:33:30', '2020-05-02 11:49:54'),
(186, 34, 'CARDIO', '2020-05-04 02:00:53', 'Basketball Run', 0, 'BK Sprints', NULL, 6, 4, NULL, '88-92', 'Go fast 1 min and recovery 30s.', NULL, '[{"speed":null,"is_completed":true,"total_distance":0,"lvl":1,"rest":"00:30","end_lat":1.3557426370246997,"start_time":"2020-05-02 15:24:51","watt":100,"end_long":103.84465889549485,"laps":1,"start_long":103.84465889549485,"is_completed_rest":"","start_lat":1.3557426370246997,"duration":"00:30:00","distance":null,"rpm":null,"end_time":"2020-05-02 15:24:51","pace":"03:30"}]', '1', 1, NULL, NULL, NULL, 1, '2020-05-02 07:23:28', '2020-05-02 07:25:27'),
(187, 34, 'CARDIO', '2020-05-02 10:25:57', 'Test Goa ', 54, NULL, NULL, 1, 2, NULL, '83-87', 'Zxcv', NULL, '[{"speed":21,"is_completed":true,"rest":"01:00","end_lat":1.270558188703995,"start_time":"2020-05-02 18:26:45","watt":null,"end_long":103.82535712459207,"laps":1,"start_long":103.82535712459207,"is_completed_rest":"","start_lat":1.270558188703995,"duration":null,"distance":18,"rpm":5,"end_time":"2020-05-02 18:26:45","total_distance":0}]', '7', 1, NULL, NULL, NULL, 1, '2020-05-02 10:26:36', '2020-05-02 10:47:51'),
(188, 34, 'CARDIO', '2020-05-02 11:11:24', 'Test Gps', 52, NULL, NULL, 6, 2, NULL, '88-92', 'Trst ', NULL, '[{"speed":20,"is_completed":false,"avg_total_pace":2.743981853369109,"rest":"01:00","end_lat":1.3253860007104856,"start_time":"2020-05-02 19:12:05","watt":null,"end_long":103.84193537812682,"laps":1,"start_long":103.84193537812682,"is_completed_rest":"","start_lat":1.3253860007104856,"duration":null,"distance":6,"rpm":8,"end_time":"2020-05-02 19:12:05","total_distance":10.135328406933695}]', '3', 1, NULL, NULL, NULL, 1, '2020-05-02 11:11:58', '2020-05-02 11:33:25'),
(200, 34, 'CARDIO', '2020-05-07 01:30:21', 'Holiday Workout ', 51, NULL, NULL, 6, 1, NULL, '162 - 169', '', NULL, '[{"speed":13,"pace":null,"is_completed":false,"percentage":null,"rest":"02:00","start_time":"","laps":1,"is_completed_rest":"","end_time":"","duration":null,"distance":1.5,"total_distance":0}]', '4. Somewhat hard', 1, NULL, NULL, NULL, 1, '2020-05-06 13:33:27', '2020-05-06 13:35:56'),
(201, 34, 'CARDIO', '2020-05-06 13:37:48', 'Holiday Cycle', 55, 'Night ride', NULL, 3, 2, NULL, '163 - 175', 'Go fast and slow.', NULL, '[{"speed":40,"is_completed":false,"rest":"01:00","start_time":"","watt":null,"laps":1,"is_completed_rest":"","end_time":"","duration":"00:00:30","distance":null,"rpm":75,"total_distance":0}]', '3. Moderate', 1, NULL, NULL, NULL, 1, '2020-05-06 13:38:57', '2020-05-07 04:58:07'),
(202, 34, 'CARDIO', '2020-05-06 13:41:37', 'Test Option', 0, 'Base Run', NULL, 2, 12, NULL, '120 - 132', '', NULL, '[{"speed":null,"pace":"01:00","is_completed":false,"percentage":0.5,"rest":null,"start_time":"","laps":1,"is_completed_rest":"","end_time":"","duration":null,"distance":2.5,"total_distance":0}]', '3. Moderate', 1, NULL, NULL, NULL, 1, '2020-05-06 13:42:08', '2020-05-07 04:56:31'),
(203, 34, 'CARDIO', '2020-05-25 04:59:25', 'Test ', 36, NULL, NULL, 3, 1, NULL, '171 - 184', 'Give all out.', NULL, '[{"speed":17,"pace":null,"is_completed":false,"percentage":1,"rest":"01:30","start_time":"","laps":1,"is_completed_rest":"","end_time":"","duration":"00:00:30","distance":null,"total_distance":0}]', '7. Very hard', 1, NULL, NULL, NULL, 1, '2020-05-07 05:00:29', '2020-05-07 05:00:53'),
(204, 34, 'CARDIO', '2020-05-11 05:07:15', 'Great', 34, NULL, NULL, 3, 12, NULL, '171 - 184', '', NULL, '[{"speed":14,"pace":null,"is_completed":false,"percentage":1,"rest":"01:30","start_time":"","laps":1,"is_completed_rest":"","end_time":"","duration":"00:03:00","distance":null,"total_distance":0}]', '8. Really hard', 1, NULL, NULL, 'Difficult session cos of fatigue.', 1, '2020-05-07 05:07:59', '2020-05-07 05:16:37'),
(205, 34, 'CARDIO', '2020-05-07 07:30:56', 'Test', 51, 'test', NULL, 6, 3, NULL, '151 - 158', '', NULL, '[{"laps":1,"end_time":"","distance":null,"total_distance":0,"is_completed_rest":"","pace":"02:00","duration":"03:00:00","is_completed":false,"start_time":"","rest":"02:00"}]', '5. Hard', 1, NULL, NULL, NULL, 1, '2020-05-07 07:31:42', '2020-05-08 05:23:33'),
(207, 34, 'CARDIO', '2020-05-08 05:27:01', 'Abc', 7, NULL, NULL, 1, 12, NULL, '153 - 160', '', NULL, '[{"speed":null,"pace":"09:00","is_completed":false,"percentage":0,"rest":null,"start_time":"","laps":1,"is_completed_rest":"","end_time":"","duration":null,"distance":10,"total_distance":0}]', '5. Hard', 1, NULL, NULL, NULL, 1, '2020-05-08 05:27:38', '2020-05-08 13:51:53'),
(208, 34, 'CARDIO', '2020-05-20 11:43:46', 'Test To Delete', 51, NULL, NULL, 6, 12, NULL, '162 - 169', '', NULL, '[{"speed":14,"is_completed":false,"total_distance":0,"percentage":1,"rest":"00:30","end_lat":1.3564469841286568,"start_time":"2020-05-08 19:53:16","end_long":103.84472878858195,"laps":1,"start_long":103.84466142663993,"is_completed_rest":"","start_lat":1.3565568591446593,"duration":null,"distance":3.5,"end_time":"2020-05-08 19:54:31","pace":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-08 11:44:36', '2020-05-08 11:54:51'),
(214, 3, 'CARDIO', '2020-05-08 18:30:00', 'Test Dataaa', 0, 'test data checkkk', NULL, 3, 4, NULL, '154 - 165', '', NULL, '[{"laps":1,"speed":null,"distance":5,"rpm":13,"watt":null,"pace":"18:00","duration":null,"lvl":15,"is_completed":false,"rest":"00:14"},{"laps":2,"speed":null,"distance":15.8,"rpm":8,"watt":null,"pace":"00:18","duration":null,"lvl":11,"is_completed":false,"rest":"00:19"}]', NULL, 1, NULL, NULL, NULL, 1, '2020-05-09 11:26:04', '2020-05-09 11:26:04'),
(215, 3, 'CARDIO', '2020-05-09 11:29:13', 'T5a Dads Fdsf Dads Dad Sdfds Dads ', 0, 'testttt', NULL, 2, 4, NULL, '107 - 119', '', NULL, '[{"laps":1,"speed":null,"distance":0.9,"rpm":null,"watt":null,"pace":null,"duration":null,"lvl":null,"is_completed":false,"rest":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-09 11:29:45', '2020-05-09 11:29:45'),
(216, 3, 'CARDIO', '2020-05-09 18:30:00', 'Run Indoor', 8, NULL, NULL, 2, 12, NULL, '113 - 125', '', NULL, '[{"laps":1,"speed":null,"distance":8,"pace":"07:00","duration":null,"is_completed":false,"percentage":1,"rest":null},{"laps":2,"speed":null,"distance":3,"pace":"08:00","duration":null,"is_completed":false,"percentage":2,"rest":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-09 11:33:01', '2020-05-09 11:33:01'),
(218, 3, 'CARDIO', '2020-04-03 12:38:32', 'Vikas Test Data', 2, NULL, NULL, 2, 4, NULL, '65-72', 'vks notes', NULL, '[{"laps":1,"distance":15.9,"is_completed":false,"lvl":13,"watt":null,"speed":12.9,"duration":"","rest":"27:11","pace":"","rpm":15},{"laps":2,"distance":5.1,"is_completed":false,"lvl":10,"watt":null,"speed":14,"duration":"","rest":"00:09","pace":"","rpm":8}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-09 12:02:36', '2020-05-09 12:02:36'),
(220, 3, 'CARDIO', '2020-05-12 18:30:00', 'Test', 8, NULL, NULL, 2, 12, NULL, '113 - 125', '', NULL, '[{"speed":null,"is_completed":true,"total_distance":0,"percentage":2,"rest":null,"end_lat":21.1702,"start_time":"2020-05-12 12:26:14","end_long":72.8311,"laps":1,"start_long":72.8311,"is_completed_rest":true,"start_lat":21.1702,"duration":null,"distance":2.5,"end_time":"2020-05-12 12:26:24","pace":"00:11"}]', '6. Getting very hard', 1, NULL, NULL, NULL, 1, '2020-05-09 12:08:47', '2020-05-12 06:56:28'),
(221, 34, 'CARDIO', '2020-05-10 10:10:46', 'Training ', 0, 'test', NULL, 2, 4, NULL, '114 - 126', '', NULL, '[{"laps":1,"speed":null,"distance":0,"rpm":null,"watt":null,"pace":null,"duration":null,"lvl":0,"is_completed":false,"rest":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-10 10:11:54', '2020-05-10 10:11:54'),
(222, 34, 'CARDIO', '2020-05-11 16:00:00', 'Swimming Test', 52, NULL, NULL, 6, 13, NULL, '154 - 161', '', NULL, '[{"laps":1,"speed":5,"distance":3,"rpm":9,"watt":null,"is_completed":false,"duration":null,"lvl":1,"rest":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-10 10:26:28', '2020-05-10 10:26:28'),
(223, 34, 'CARDIO', '2020-05-12 09:00:00', 'Again Test', 52, NULL, NULL, 6, 2, NULL, '154 - 161', '', NULL, '[{"laps":1,"speed":2,"distance":2,"rpm":2,"watt":null,"is_completed":false,"duration":null,"rest":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-10 10:27:35', '2020-05-10 10:27:35'),
(224, 34, 'CARDIO', '2020-05-12 16:00:00', 'Goal', 52, NULL, NULL, 6, 3, 5, '151 - 158', '', NULL, '[{"duration":null,"rest":null,"pace":"04:00","is_completed":false,"distance":3,"laps":1}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-10 10:29:12', '2020-05-10 10:29:12'),
(225, 34, 'CARDIO', '2020-05-21 07:00:00', 'Autofilled', 7, NULL, NULL, 1, 1, NULL, '153 - 160', '', NULL, '[{"speed":null,"is_completed":true,"total_distance":0,"percentage":null,"rest":null,"end_lat":1.355802845101978,"start_time":"2020-05-11 01:32:46","end_long":103.844694941777,"laps":1,"start_long":103.84466821092361,"is_completed_rest":true,"start_lat":1.3557685817539347,"duration":null,"distance":6,"end_time":"2020-05-11 01:54:27","pace":"05:00"}]', '3. Moderate', 1, NULL, NULL, NULL, 1, '2020-05-10 10:42:39', '2020-05-10 17:54:50'),
(230, 3, 'CARDIO', '2020-05-09 12:08:47', 'Vikas Test Data', 2, NULL, NULL, 2, 4, NULL, '65-72', 'Date testing', NULL, '[{"laps":1,"distance":15.9,"is_completed":false,"lvl":13,"watt":null,"speed":12.9,"duration":"","rest":"27:11","pace":"","rpm":15},{"laps":2,"distance":5.1,"is_completed":false,"lvl":10,"watt":null,"speed":14,"duration":"","rest":"00:09","pace":"","rpm":8}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-11 09:31:02', '2020-05-11 09:31:02'),
(232, 3, 'CARDIO', '2020-05-11 15:10:53', 'Others Data Check', 0, 'CHck ata', NULL, 2, 4, NULL, '107 - 119', '', NULL, '[{"speed":null,"is_completed":false,"total_distance":0,"lvl":null,"rest":null,"end_lat":21.1702,"start_time":"2020-05-11 15:44:55","watt":null,"end_long":72.8311,"laps":1,"start_long":72.8311,"is_completed_rest":"","start_lat":21.1702,"duration":null,"distance":0.9,"rpm":null,"end_time":"2020-05-11 15:44:55","pace":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-11 09:41:16', '2020-05-11 10:17:23'),
(233, 3, 'CARDIO', '2020-05-16 00:00:00', 'Test Crash', 0, 'test', NULL, 2, 4, NULL, '107 - 119', '', NULL, '[{"speed":null,"is_completed":true,"total_distance":0,"lvl":25,"rest":null,"end_lat":21.1702,"start_time":"2020-05-11 17:24:30","watt":null,"end_long":72.8311,"laps":1,"start_long":72.8311,"is_completed_rest":true,"start_lat":21.1702,"duration":null,"distance":0.9,"rpm":null,"end_time":"2020-05-12 11:30:13","pace":null}]', '9. Extremely hard', 1, NULL, NULL, NULL, 1, '2020-05-11 11:13:08', '2020-05-12 06:00:18'),
(237, 3, 'CARDIO', '2020-05-23 00:00:00', 'Others Data', 0, 'Test data', NULL, 6, 4, NULL, '145 - 152', '', NULL, '[{"laps":1,"speed":null,"distance":10.9,"rpm":19,"watt":null,"pace":"10:00","duration":null,"lvl":null,"is_completed":false,"rest":null},{"laps":2,"speed":null,"distance":33,"rpm":null,"watt":null,"pace":"00:39","duration":null,"lvl":null,"is_completed":false,"rest":null}]', NULL, 1, NULL, NULL, NULL, 0, '2020-05-12 10:59:38', '2020-05-12 10:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `training_programs`
--

DROP TABLE IF EXISTS `training_programs`;
CREATE TABLE IF NOT EXISTS `training_programs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'which user add this program',
  `status` varchar(50) NOT NULL COMMENT 'RESISTANCE and CARDIO Use Constant',
  `type` varchar(50) NOT NULL COMMENT 'PRESET and CUSTOM Use Constant',
  `preset_training_programs_id` bigint(20) DEFAULT NULL COMMENT 'From preset_training_programs table',
  `training_frequencies_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL COMMENT 'Program start date',
  `end_date` timestamp NULL DEFAULT NULL COMMENT 'Program end date',
  `by_date` varchar(10) DEFAULT NULL COMMENT 'Use Constant START || END',
  `days` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `phases` text COMMENT 'Use Only in In Training Program In Cardio and Resistance',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_programs`
--

INSERT INTO `training_programs` (`id`, `user_id`, `status`, `type`, `preset_training_programs_id`, `training_frequencies_id`, `start_date`, `end_date`, `by_date`, `days`, `date`, `phases`, `created_at`, `updated_at`) VALUES
(1, 34, 'CARDIO', 'PRESET', 8, 5, '2019-12-22 18:30:00', '2020-04-25 18:30:00', NULL, 'MONDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY', NULL, NULL, '2019-12-23 09:20:45', '2019-12-23 09:20:45'),
(2, 34, 'CARDIO', 'PRESET', 8, 3, '2021-02-28 16:00:00', '2021-07-03 16:00:00', NULL, 'MONDAY,WEDNESDAY,SATURDAY,SUNDAY', NULL, NULL, '2019-12-23 15:09:36', '2019-12-23 15:09:36'),
(3, 34, 'CARDIO', 'PRESET', 8, 5, '2021-07-04 16:00:00', '2021-11-06 16:00:00', NULL, 'TUESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY', NULL, NULL, '2019-12-25 07:25:40', '2019-12-25 07:25:40'),
(4, 34, 'CARDIO', 'PRESET', 9, 6, '2021-11-07 16:00:00', '2022-04-23 16:00:00', NULL, 'MONDAY,TUESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY', NULL, NULL, '2019-12-25 09:21:46', '2019-12-25 09:21:46'),
(5, 34, 'CARDIO', 'PRESET', 9, 5, '2022-04-30 16:00:00', '2022-10-14 16:00:00', NULL, 'MONDAY,TUESDAY,THURSDAY,FRIDAY,SATURDAY', NULL, NULL, '2019-12-25 10:39:57', '2019-12-25 10:39:57'),
(8, 34, 'CARDIO', 'PRESET', 10, 6, '2020-04-26 16:00:00', '2020-10-10 16:00:00', NULL, 'MONDAY,TUESDAY,WEDNESDAY,FRIDAY,SATURDAY,SUNDAY', NULL, NULL, '2019-12-26 06:42:24', '2019-12-26 06:42:24'),
(9, 34, 'CARDIO', 'PRESET', 10, 5, '2022-12-31 16:00:00', '2023-06-16 16:00:00', NULL, 'MONDAY,TUESDAY,WEDNESDAY,FRIDAY,SATURDAY', NULL, NULL, '2019-12-26 08:21:14', '2019-12-26 08:21:14'),
(13, 34, 'CARDIO', 'PRESET', 11, 5, '2023-12-31 16:00:00', '2024-06-15 16:00:00', NULL, 'MONDAY,TUESDAY,WEDNESDAY,SATURDAY,SUNDAY', NULL, NULL, '2019-12-27 07:21:03', '2019-12-27 07:21:03'),
(45, 6, 'CARDIO', 'PRESET', 11, 5, '2020-01-14 18:30:00', '2020-06-29 18:30:00', NULL, 'MONDAY,WEDNESDAY,THURSDAY,FRIDAY,SUNDAY', NULL, NULL, '2020-01-15 05:33:00', '2020-01-15 05:33:00'),
(46, 44, 'CARDIO', 'PRESET', 10, 5, '2020-01-14 18:30:00', '2020-06-29 18:30:00', NULL, 'MONDAY,WEDNESDAY,THURSDAY,FRIDAY,SUNDAY', NULL, NULL, '2020-01-15 05:37:37', '2020-01-15 05:37:37'),
(47, 6, 'CARDIO', 'PRESET', 10, 5, '2021-01-14 18:30:00', '2021-06-30 18:30:00', NULL, 'MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY', NULL, NULL, '2020-01-15 06:04:47', '2020-01-15 06:04:47'),
(48, 6, 'CARDIO', 'PRESET', 9, 6, '2021-12-31 18:30:00', '2022-06-16 18:30:00', NULL, 'MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY', NULL, NULL, '2020-01-15 06:37:02', '2020-01-15 06:37:02'),
(49, 6, 'CARDIO', 'PRESET', 8, 5, '2022-06-30 18:30:00', '2022-11-02 18:30:00', NULL, 'MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY', NULL, NULL, '2020-01-15 07:14:54', '2020-01-15 07:14:54'),
(53, 6, 'RESISTANCE', 'PRESET', 1, 5, '2023-01-15 18:30:00', '2023-04-16 18:30:00', NULL, 'MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY', NULL, NULL, '2020-01-16 06:53:05', '2020-01-16 06:53:05'),
(61, 3, 'CARDIO', 'PRESET', 8, 5, '2020-03-31 18:30:00', '2020-08-03 18:30:00', NULL, 'MONDAY', NULL, NULL, '2020-04-01 05:11:25', '2020-04-01 05:11:25'),
(62, 34, 'CARDIO', 'PRESET', 9, 5, '2029-04-28 16:00:00', '2029-10-12 16:00:00', NULL, 'TUESDAY,WEDNESDAY,THURSDAY,SUNDAY', NULL, NULL, '2020-04-29 05:16:37', '2020-04-29 05:16:37');

--
-- Triggers `training_programs`
--
DROP TRIGGER IF EXISTS `Delete Program`;
DELIMITER $$
CREATE TRIGGER `Delete Program` AFTER DELETE ON `training_programs`
 FOR EACH ROW BEGIN
  DELETE FROM `completed_training_programs` WHERE `program_id` = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `training_setting_units`
--

DROP TABLE IF EXISTS `training_setting_units`;
CREATE TABLE IF NOT EXISTS `training_setting_units` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the units',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code of the units',
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'description of main records.',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'description of main records.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_setting_units`
--

INSERT INTO `training_setting_units` (`id`, `name`, `code`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Metric', 'METRIC', 'kg, km, m, km/hr, min/km, min/100 m', 1, '2020-01-21 18:30:00', '2020-01-21 18:30:00'),
(2, 'Imperial', 'IMPERIAL', 'lbs, miles, yd, miles/hr, min/miles, min/100 yd', 1, '2020-01-21 18:30:00', '2020-01-21 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

DROP TABLE IF EXISTS `training_types`;
CREATE TABLE IF NOT EXISTS `training_types` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'From name',
  `sequence` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `name`, `code`, `sequence`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Remote', 'REMOTE', NULL, 0, NULL, NULL),
(2, 'Meet Up', 'MEET_UP', 2, 1, NULL, '2019-07-10 04:40:04'),
(3, 'Remote and Meet-up', 'REMOTE_AND_MEET_UP', NULL, 0, NULL, '2019-08-20 04:44:56'),
(4, 'No Preference', 'NO_PREFERENCE', 4, 1, NULL, NULL),
(6, 'Distance', 'Distance', 1, 1, '2019-07-10 05:01:00', '2019-07-10 05:01:00'),
(7, 'Both', 'BOTH', 3, 1, '2019-07-10 05:01:10', '2019-08-20 04:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_emergency_contacts`
--

DROP TABLE IF EXISTS `user_emergency_contacts`;
CREATE TABLE IF NOT EXISTS `user_emergency_contacts` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'User wise contacts',
  `contact_1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Contact 1',
  `contact_2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Contact 2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_emergency_contacts`
--

INSERT INTO `user_emergency_contacts` (`id`, `user_id`, `contact_1`, `contact_2`, `created_at`, `updated_at`) VALUES
(1, 34, '+91 87247338364', '157946358', '2020-01-17 09:26:23', '2020-01-26 04:27:21'),
(4, 3, '+91 8723648', '123123123', '2020-01-24 06:11:54', '2020-01-24 08:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_followers`
--

DROP TABLE IF EXISTS `user_followers`;
CREATE TABLE IF NOT EXISTS `user_followers` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'user id',
  `followers_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'User follower to this users',
  `following_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'User following to this users',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_followers`
--

INSERT INTO `user_followers` (`id`, `user_id`, `followers_ids`, `following_ids`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, '34', '2019-08-13 05:31:38', '2020-01-27 08:46:58'),
(2, 4, NULL, '1,3,2,34', '2019-08-13 05:31:38', '2019-08-13 07:12:30'),
(4, 22, NULL, '1,11,2,12,34', '2019-09-05 07:38:15', '2019-10-19 10:27:10'),
(5, 3, NULL, '11,8,5,12,1,23,34', '2019-08-13 05:31:38', '2020-02-17 10:44:23'),
(6, 34, NULL, '39,11,8,23,22', '2019-10-13 02:18:16', '2020-02-17 10:48:22'),
(7, 6, NULL, '34,23,22,4,5,6,34', '2020-01-09 04:47:33', '2020-01-20 10:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'first last name',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Country code for mobile verification',
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User facebook id',
  `date_of_birth` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal` text COLLATE utf8mb4_unicode_ci COMMENT 'User Goal.',
  `country_id` bigint(20) DEFAULT NULL COMMENT 'User Location.',
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User latitude Location.',
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User longitude Location.',
  `membership_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'member-01',
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin, user',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'free, premium, professional',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Check for last login at',
  `socket_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Store Socket Id',
  `is_online` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'check the user is online for chat',
  `is_snooze` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'for professional user is snooze or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `country_code`, `mobile`, `facebook`, `date_of_birth`, `gender`, `height`, `weight`, `photo`, `goal`, `country_id`, `latitude`, `longitude`, `membership_code`, `user_type`, `account_id`, `is_active`, `is_profile_complete`, `email_verified_at`, `mobile_verified_at`, `expired_at`, `last_login_at`, `socket_id`, `is_online`, `is_snooze`, `created_at`, `updated_at`) VALUES
(1, 'Vikas U J', 'vikasukani51@gmail.com', '$2y$12$tu1k.dsFIj1yTIV64sNKneklCCpdDYI2K5lR3aJD2HqbY8cWdvvA2', '+91', '9898989898', '', '15-02-2000', 'MALE', 100, 50, '/uploaded/images/users/5d8b0009106f0_qaK3b', 'Improve Fitness', 1, '21.598146', '71.484662', NULL, 'USER', 23, 0, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-08-30 06:00:00', NULL, 0, 0, '2019-05-30 06:24:02', '2019-08-30 06:32:36'),
(2, 'Mailinator', 'mehul.lakhani1@dignizant.com', '$2y$10$xai0RfyX.LqUz3G.CGdajeITuKrWuwz3eCrBqv2jUeWCcSNs65mnO', NULL, '9898989892', NULL, '02-01-1996', 'MALE', 160, 60, '/uploaded/images/users/5d8b0009106f0_qaK3b', NULL, 5, '21.598146', '71.484662', NULL, 'USER', 22, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-06-12 10:23:24', NULL, 0, 1, '2019-05-27 06:29:20', '2019-09-09 04:09:47'),
(3, 'Anil 1 Dhameliya', 'anil.dhameliya@dignizant.com', '$2y$12$rsr5H7Ck59ri6ApHLz7DI.8.1TcJZxyW7KfYNUfMqIv2tKTAtD0pm', '+91', '9898989898', 'www://facebook.com1', '20-12-1971', 'FEMALE', 176, 70, '/uploaded/images/users/5d8b0009106f0_qaK3b', NULL, 3, '21.1702', '72.8311', NULL, 'USER', 24, 1, 1, '2019-10-09 00:00:00', '2019-08-28 18:30:00', NULL, '2020-05-01 11:09:17', 'YLBMayj062MV_s7_AAAV', 1, 0, '2019-06-04 08:39:34', '2020-05-01 12:30:50'),
(4, 'Vikas Ukani', 'vikas@gmail.com', '$2y$12$IJ6NzlsAZ9S1S/VxyVdWA.ebn7mZqiz6/fDNKlUT.5.ihkZMxwb16', NULL, '9898989894', NULL, NULL, 'MALE', NULL, NULL, '/uploaded/images/users/5d8b0009106f0_qaK3b', NULL, 1, '21.598146', '71.484662', NULL, 'USER', 23, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-08-31 04:02:36', NULL, 0, 0, '2019-06-07 07:06:15', '2019-08-31 04:02:36'),
(5, 'Vikas Admin', 'vikas.ukani1@dignizant.com', '$2y$10$5VK7Rk2NdE5NV0UmXZ16Nu0Ya0ave3uq1nldzlDUVmOb92XUFWw0W', NULL, '9898989898', 'null', '1-02-1984', 'FEMALE', 1, 1, '/uploaded/images/users/5d8af8e2d832f_trainer', 'Improve Fitness', 6, '21.598146', '71.484662', NULL, 'ADMIN', 24, 1, 0, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-07-19 12:13:13', NULL, 0, 0, '2019-06-18 06:35:39', '2019-10-09 11:09:30'),
(6, 'Iron-Man Mark-I', 'vikas123@mailinator.com', '$2y$12$uQ0RM4fZl/9NuZQSNkZIleYW6qcb7N602.JpB0bFWSjEVbPCKucWi', '+358', '9852356895', '', '02-01-1996', 'MALE', 160, 60, '/uploaded/images/users/5d70b19781ae5_21RmE', NULL, 1, '21.23527694653372', '72.85873997441985', NULL, 'USER', 24, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2020-02-06 11:40:31', '', 0, 0, '2019-09-03 05:58:03', '2020-02-22 11:28:38'),
(22, 'Vikas Digni', 'vikas.ukani@dignizant.com', '$2y$10$Xz//LZ9VjEyUuYB.lxkPBer5jVZ9peZFhfO8IWZdq18gNxJKUmBHq', '+93', '123486789', '', '05-10-1986', 'MALE', 165, 53, '/uploaded/images/users/5d70b19781ae5_21RmE', NULL, 1, '1.3211721399999996', '103.84404280999998', NULL, 'ADMIN', 22, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2020-04-14 13:46:43', NULL, 0, 0, '2019-09-04 10:53:58', '2020-04-14 13:46:43'),
(23, 'Anil Dhameliya', 'anildhameliya66@gmail.com', '$2y$10$/biXloMHnAHIYnjEmyEfHOXF379QrinKT63bSt6sSC7rWTANDbWxu', '+91', '1234567890', '', '19-11-2015', 'FEMALE', 30, 30, '/uploaded/images/users/5d70b19781ae5_21RmE', NULL, 1, '0', '0', NULL, 'USER', 22, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-12-11 06:01:55', NULL, 0, 0, '2019-09-04 10:55:13', '2019-12-11 06:01:55'),
(26, 'Vikas Digni', 'anildhameliya@gmail.com', '$2y$10$E8L/4zKfmn.wJlZFGX7OSO7nwMk5v8yHUqmHnN.JWzmib/yUqydUW', NULL, NULL, NULL, '16-06-2019', 'MALE', 160, 50, '/uploaded/images/users/5d6fb9e9562f7_car-1494607-wallhere.com', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, NULL, NULL, 0, 0, '2019-09-04 13:18:32', '2019-09-04 13:19:37'),
(27, 'Anil', 'anil@gmail.com', '$2y$10$SLvjfiqAJjwjxAGtsCEdROb8hCZWokd3XK0oCqHVF4UoC04GftkSG', NULL, NULL, NULL, '01-08-2019', 'MALE', 127, 38, '/uploaded/images/users/5d92de881b62a_Z8TXC', NULL, NULL, '0', '0', NULL, 'USER', 22, 1, 1, '2019-10-01 00:00:00', NULL, NULL, '2019-10-01 05:04:25', NULL, 0, 0, '2019-10-01 04:00:35', '2019-10-01 05:05:12'),
(29, 'Rock', 'test@test.com', '$2y$10$kzQR.6Tqj4aLby.aV82VSekQD.xWyPo0WXNql63NZemFdg3aVJkwC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploaded/images/users/5d931056d22e4_buisiness', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 0, NULL, '2019-10-01 00:00:00', NULL, NULL, NULL, 0, 0, '2019-10-01 04:55:11', '2019-10-01 04:55:11'),
(30, 'Anil 1', 'anil1@gmail.com', '$2y$10$H3efWmgPDaI5WfKKKLquAuBH0O1VnxnZnEPuPSU0UlyzMaQWJN.S2', NULL, NULL, NULL, '01-07-2019', 'MALE', 125, 38, '/uploaded/images/users/5d92e03ebd33c_h7Vlx', NULL, NULL, '0', '0', NULL, 'USER', 23, 1, 1, '2019-10-01 00:00:00', NULL, NULL, '2019-10-01 05:13:32', NULL, 0, 0, '2019-10-01 05:11:58', '2019-10-01 05:14:23'),
(32, 'Test 2', 'test1@test.com', '$2y$10$n217fen14R0KP22DeTmLMeWrLO15UGeI9ffpzwlwIg0V3gvw46lA6', NULL, NULL, NULL, '16-06-2019', 'MALE', 160, 50, '/uploaded/images/users/5d931056d22e4_buisiness', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 1, '2019-10-01 08:34:57', NULL, NULL, NULL, NULL, 0, 0, '2019-10-01 08:34:57', '2019-10-01 08:37:42'),
(33, 'Abhay Test', 'abhay@gmail.com', '$2y$10$/9mImW3S7wpQMLViaAAmp.LpSzKA/iFOSyXXCmHvzpv2NxmEhZ4b6', NULL, NULL, NULL, '07-10-2013', 'MALE', 125, 39, '/uploaded/images/users/5d9acb73996c2_5x4OS', NULL, NULL, '0', '0', NULL, 'USER', 22, 1, 1, '2019-10-07 05:21:18', NULL, NULL, '2019-10-09 10:32:14', NULL, 0, 0, '2019-10-07 05:21:18', '2019-10-09 10:32:14'),
(34, 'Anna T', 'designeratwork@gmail.com', '$2y$10$TDxuFngZBNkYf2yv2gGoiefJL/d0otixe9rJVcYK6RxGseCorY2hG', '+65', '12345678', '', '04-10-1986', 'FEMALE', 165, 53, '/uploaded/images/users/5d9d88482ad59_u7smK', NULL, 8, '1.3395773099999995', '103.94939421999996', NULL, 'USER', 22, 1, 1, '2019-10-09 07:02:47', NULL, NULL, '2020-05-10 09:23:43', '', 0, 0, '2019-10-09 07:02:47', '2020-05-12 05:38:40'),
(35, 'Anil D', 'anil123@gmail.com', '$2y$10$XAwVsSnvwQ/PZc3N5QJ4Gu7trdxRiShiWNvTKm.NVDaI1mIi.faNm', NULL, NULL, NULL, '09-10-2019', 'MALE', 12, 12, '/uploaded/images/users/5d9dad0133854_gYgII', NULL, NULL, '0', '0', NULL, 'USER', 22, 1, 1, '2019-10-09 09:12:05', NULL, NULL, '2019-10-09 09:36:29', NULL, 0, 0, '2019-10-09 09:12:05', '2019-10-09 09:48:49'),
(36, 'Villas 123', 'vikas123@gmail.com', '$2y$10$vwFZ37POhc70bg370Z27J.W9pc0TyKX8WBgzTrx2HU10JTL7Zenfe', NULL, NULL, NULL, '09-10-2017', 'MALE', 165, 53, '/uploaded/images/users/5d9dc0470b17d_TMsiI', NULL, NULL, '0', '0', NULL, 'USER', 22, 1, 1, '2019-10-09 11:10:37', NULL, NULL, '2019-10-15 05:31:18', NULL, 0, 0, '2019-10-09 11:10:37', '2019-10-15 05:31:18'),
(37, 'A Hay Pandora', 'abhay.pandora@dignizant.com', '$2y$10$4CHn70QrzH1J//TLxlI3A.bFmTgW7i1Im9/lmpS8XTDneTJ2Ino2y', NULL, NULL, NULL, '25-10-2017', 'MALE', 12, 23, '/uploaded/images/users/5db2d99c8287f_MALwu', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 1, '2019-10-25 11:16:12', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:16:12', '2019-10-25 11:16:44'),
(38, 'Rohan ', 'test11@test.com', '$2y$10$FyzfHQp9A4pD2EPY/4eoQuJVsfD7bG.oLBFvxanOonopXjkEWowWC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploaded/images/users/5d9dad0133854_gYgII', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 0, '2019-10-25 11:22:56', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:22:56', '2019-10-25 11:22:56'),
(39, 'Alex', 'test11@mailinator.com', '$2y$10$qlKQCCSgNkXIrcfuQUoQXuYain3uX/lETCWkqFIWNSllGDXPCMGqm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploaded/images/users/5db2d99c8287f_MALwu', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 0, '2019-10-25 11:24:03', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:24:03', '2019-10-25 11:24:03'),
(40, 'Maxx', 'vikas123123@mailinator.com', '$2y$10$4fdRxKFMBt8P3RX1ftHMtObgucgDZmwoCiLrcEueJFCBPoFw760lC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploaded/images/users/5d9dad0133854_gYgII', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 0, '2019-10-25 11:25:04', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:25:04', '2019-10-25 11:25:04'),
(41, 'Superman', 'test123@mailinator.com', '$2y$10$TxtEzCsv9IKvjn3td6FD7uYYiN3fq93.aiTuISlW7CUaLr6flvbRa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploaded/images/users/5d92e03ebd33c_h7Vlx', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 0, '2019-10-25 11:40:50', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:40:40', '2019-10-25 11:40:50'),
(42, 'Agnt. Romanoff', 'aniltest@mailinator.com', '$2y$10$l4vwus8aTYQakRsO03z/MePZp3QpnCZF6aGSDqpgCufQCRDw2y0uO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploaded/images/users/5d8af8e2d832f_trainer', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 0, '2019-11-21 06:38:21', NULL, NULL, NULL, NULL, 0, 0, '2019-11-21 06:38:14', '2019-11-21 06:38:21'),
(43, 'Tony Stark', '1test@test.com', '$2y$10$HjT3pf92mdoF/rVoMDbT1ufyjl6u73ZmSPSNCBEwlzExUjA.qjOse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploaded/images/users/5d92e03ebd33c_h7Vlx', NULL, NULL, NULL, NULL, NULL, 'USER', 22, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '2019-11-22 07:30:35', '2019-11-22 07:30:35'),
(44, 'Anil', 'anil123@mailinator.com', '$2y$10$EmFO2lCFOZl9OjBzkpeAguEnDbnBVKSzWg3NdeH7R3I/OP/EXDXz6', NULL, NULL, NULL, '15-01-2014', 'MALE', 50, 60, '/uploaded/images/users/5e1ea1992bc6d_tymCM', NULL, NULL, '21.235288945410904', '72.85858535163975', NULL, NULL, 22, 1, 1, '2020-01-15 05:22:49', NULL, NULL, '2020-01-15 05:36:38', '', 0, 0, '2020-01-15 05:22:04', '2020-01-15 05:38:49'),
(45, 'Anil Anil', 'anilanil@mailinator.com', '$2y$10$GtpPs.el1qKo6Dht1xT6.OP1VPiTJgci8sc3UbPJshyNfUqveeubW', NULL, NULL, NULL, '27-01-2019', 'MALE', 20, 30, '/uploaded/images/users/5e2e6788608f8_LW0rb', NULL, NULL, '0', '0', NULL, 'USER', 22, 1, 1, '2020-01-27 04:31:18', NULL, NULL, '2020-01-27 04:31:22', '', 0, 0, '2020-01-27 04:30:28', '2020-01-27 05:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `users_relations`
--

DROP TABLE IF EXISTS `users_relations`;
CREATE TABLE IF NOT EXISTS `users_relations` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'User Id.',
  `relation_id` bigint(20) NOT NULL COMMENT 'Relation With Status Wise',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'status wise relation ids',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_relations`
--

INSERT INTO `users_relations` (`id`, `user_id`, `relation_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PROFESSIONAL_SPECIALIZATION', NULL, NULL),
(2, 1, 4, 'PROFESSIONAL_SPECIALIZATION', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_snoozes`
--

DROP TABLE IF EXISTS `users_snoozes`;
CREATE TABLE IF NOT EXISTS `users_snoozes` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'Snooze for user id',
  `start_date` timestamp NULL DEFAULT NULL COMMENT 'Set snooze time for start date',
  `end_date` timestamp NULL DEFAULT NULL COMMENT 'Set snooze time for end date',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_snoozes`
--

INSERT INTO `users_snoozes` (`id`, `user_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 2, '2019-08-26 11:16:25', '2019-08-27 11:00:25', '2019-09-09 04:09:47', '2019-09-09 04:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `week_wise_frequency_masters`
--

DROP TABLE IF EXISTS `week_wise_frequency_masters`;
CREATE TABLE IF NOT EXISTS `week_wise_frequency_masters` (
  `id` bigint(20) unsigned NOT NULL,
  `training_plan_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'use Constant like 5K',
  `week_number` int(11) NOT NULL COMMENT 'week number',
  `frequency` int(11) NOT NULL COMMENT 'frequency number X',
  `workouts` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'week workouts W1,W2,W3',
  `base` int(11) DEFAULT NULL COMMENT 'week workouts W1,W2,W3',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `week_wise_frequency_masters`
--

INSERT INTO `week_wise_frequency_masters` (`id`, `training_plan_type`, `week_number`, `frequency`, `workouts`, `base`, `created_at`, `updated_at`) VALUES
(1, '5K', 1, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(2, '5K', 2, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(3, '5K', 3, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(4, '5K', 4, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(5, '5K', 5, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(6, '5K', 6, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(7, '5K', 7, 4, '1,2,3', 4, '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(8, '5K', 7, 5, '1,2,3', 4, '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(9, '5K', 8, 4, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(10, '5K', 8, 5, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(11, '5K', 9, 4, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(12, '5K', 9, 5, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(13, '5K', 10, 4, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(14, '5K', 10, 5, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(15, '5K', 11, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(16, '5K', 11, 5, '1,2,3', 5, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(17, '5K', 12, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(18, '5K', 12, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(19, '5K', 13, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(20, '5K', 13, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(21, '5K', 14, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(22, '5K', 14, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(23, '5K', 15, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(24, '5K', 15, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(25, '5K', 16, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(26, '5K', 16, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(27, '5K', 1, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(28, '5K', 2, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(29, '5K', 3, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(30, '5K', 4, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(31, '5K', 5, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(32, '5K', 6, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(33, '5K', 17, 4, '1,2,3', 4, '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(34, '5K', 17, 5, '1,2,3', 4, '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(35, '5K', 18, 4, '1,2', 3, '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(36, '5K', 18, 5, '1,2', 3, '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(37, '10K', 1, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(38, '10K', 2, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(39, '10K', 3, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(40, '10K', 4, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(41, '10K', 5, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(42, '10K', 6, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(43, '10K', 7, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(44, '10K', 7, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(45, '10K', 8, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(46, '10K', 8, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(47, '10K', 9, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(48, '10K', 9, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(49, '10K', 10, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(50, '10K', 10, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(51, '10K', 11, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(52, '10K', 11, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(53, '10K', 12, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(54, '10K', 12, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(55, '10K', 13, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(56, '10K', 13, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(57, '10K', 14, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(58, '10K', 14, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(59, '10K', 15, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(60, '10K', 15, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(61, '10K', 16, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(62, '10K', 16, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(63, '10K', 17, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(64, '10K', 17, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(65, '10K', 18, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(66, '10K', 18, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(67, '10K', 19, 5, '1,2,3', 4, '2019-11-05 00:00:00', '2019-11-05 00:00:00'),
(68, '10K', 19, 6, '1,2,3', 4, '2019-11-05 00:00:00', '2019-11-05 00:00:00'),
(69, '10K', 20, 5, '1,2,3', 4, '2019-11-05 00:00:00', '2019-11-05 00:00:00'),
(70, '10K', 20, 6, '1,2,3', 4, '2019-11-05 00:00:00', '2019-11-05 00:00:00'),
(71, '10K', 21, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(72, '10K', 21, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(73, '10K', 22, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(74, '10K', 22, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(75, '10K', 23, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(76, '10K', 23, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(77, '10K', 24, 5, '1', 2, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(78, '10K', 24, 6, '1', 2, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(79, '10K', 1, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(80, '10K', 2, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(81, '10K', 3, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(82, '10K', 4, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(83, '10K', 5, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(84, '10K', 6, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(85, '21K', 1, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(86, '21K', 2, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(87, '21K', 3, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(88, '21K', 4, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(89, '21K', 5, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(90, '21K', 6, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(91, '21K', 1, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(92, '21K', 2, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(93, '21K', 3, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(94, '21K', 4, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(95, '21K', 5, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(96, '21K', 6, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(97, '21K', 7, 5, '1,2,3', 4, '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(98, '21K', 7, 6, '1,2,3', 4, '2019-11-12 00:00:00', '2019-11-12 05:52:03'),
(99, '21K', 8, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(100, '21K', 8, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(101, '21K', 9, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(102, '21K', 9, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(103, '21K', 10, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(104, '21K', 10, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(105, '21K', 11, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(106, '21K', 11, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(107, '21K', 12, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(108, '21K', 12, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(109, '21K', 13, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(110, '21K', 13, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(111, '21K', 14, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(112, '21K', 14, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(113, '21K', 15, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(114, '21K', 15, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(115, '21K', 16, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(116, '21K', 16, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(117, '21K', 17, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(118, '21K', 17, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(119, '21K', 18, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(120, '21K', 18, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(121, '21K', 19, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(122, '21K', 19, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(123, '21K', 20, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(124, '21K', 20, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(125, '21K', 21, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(126, '21K', 21, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(127, '21K', 22, 5, '1,2', 3, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(128, '21K', 22, 6, '1,2', 3, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(129, '21K', 23, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(130, '21K', 23, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(131, '21K', 24, 5, '1,2', 3, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(132, '21K', 24, 6, '1,2', 3, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(133, '42K', 1, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(134, '42K', 1, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(135, '42K', 2, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(136, '42K', 2, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(137, '42K', 3, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(138, '42K', 3, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(139, '42K', 4, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(140, '42K', 4, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(141, '42K', 5, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(142, '42K', 5, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(143, '42K', 6, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(144, '42K', 6, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(145, '42K', 7, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(146, '42K', 7, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(147, '42K', 8, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(148, '42K', 8, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(149, '42K', 9, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(150, '42K', 9, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(151, '42K', 10, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(152, '42K', 10, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(153, '42K', 11, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(154, '42K', 11, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(155, '42K', 12, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(156, '42K', 12, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(157, '42K', 13, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(158, '42K', 13, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(159, '42K', 14, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(160, '42K', 14, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(161, '42K', 15, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(162, '42K', 15, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(163, '42K', 16, 5, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(164, '42K', 16, 6, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(165, '42K', 17, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(166, '42K', 17, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(167, '42K', 18, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(168, '42K', 18, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(169, '42K', 19, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(170, '42K', 19, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(171, '42K', 20, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(172, '42K', 20, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(173, '42K', 21, 5, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(174, '42K', 21, 6, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(175, '42K', 22, 5, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(176, '42K', 22, 6, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(177, '42K', 23, 5, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(178, '42K', 23, 6, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(179, '42K', 24, 5, '1,2,3,4,5,6', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(180, '42K', 24, 6, '1,2,3,4,5,6', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `week_wise_workouts`
--

DROP TABLE IF EXISTS `week_wise_workouts`;
CREATE TABLE IF NOT EXISTS `week_wise_workouts` (
  `id` bigint(20) unsigned NOT NULL,
  `week_wise_frequency_master_id` bigint(20) unsigned DEFAULT NULL,
  `week_wise_frequency_master_ids` text COLLATE utf8mb4_unicode_ci,
  `workout` int(11) NOT NULL COMMENT 'Workout number',
  `training_activity_id` bigint(20) NOT NULL COMMENT 'Training Activity id',
  `training_goal_id` bigint(20) NOT NULL COMMENT 'Training Goal id',
  `training_intensity_id` bigint(20) NOT NULL COMMENT 'Training intensity id',
  `THR` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'inputed from pdf',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Title of the week wise workouts',
  `note` text COLLATE utf8mb4_unicode_ci COMMENT 'notes of week wise workouts',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `week_wise_workouts`
--

INSERT INTO `week_wise_workouts` (`id`, `week_wise_frequency_master_id`, `week_wise_frequency_master_ids`, `workout`, `training_activity_id`, `training_goal_id`, `training_intensity_id`, `THR`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(2, 2, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(3, 3, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(4, 4, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(5, 5, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(6, 6, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(7, 7, NULL, 1, 1, 5, 6, '88-92', 'General Conditioning', 'To improve lactate threshold.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(8, 8, NULL, 1, 1, 5, 6, '88-92', 'General Conditioning', 'To improve lactate threshold.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(9, 7, NULL, 2, 1, 33, 3, '93-100', 'General Conditioning', 'To develop strength and aerobic fitness.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(10, 8, NULL, 2, 1, 33, 3, '93-100', 'General Conditioning', 'To develop strength and aerobic fitness.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(11, 7, NULL, 3, 1, 20, 3, '93-100', 'General Conditioning', 'Repeat the cycle to clock a total of 5km (3 miles).\r\nTo improve running speed and economy.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(12, 8, NULL, 3, 1, 20, 3, '93-100', 'General Conditioning', 'Repeat the cycle to clock a total of 5km (3 miles).\r\nTo improve running speed and economy.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(13, 7, NULL, 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(14, 8, NULL, 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(15, 9, NULL, 1, 1, 5, 6, '88-92', 'General Conditioning', 'To improve lactate threshold.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(16, 10, NULL, 1, 1, 5, 6, '88-92', 'General Conditioning', 'To improve lactate threshold.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(17, 9, NULL, 2, 1, 7, 1, '83-87', 'General Conditioning', 'Warm-up and cool-down based on your preferences and needs.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(18, 10, NULL, 2, 1, 7, 1, '83-87', 'General Conditioning', 'Warm-up and cool-down based on your preferences and needs.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(19, 9, NULL, 3, 1, 4, 5, '73-82', 'General Conditioning', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(20, 10, NULL, 3, 1, 4, 5, '73-82', 'General Conditioning', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(21, 9, NULL, 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(22, 10, NULL, 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(23, 11, NULL, 1, 1, 34, 3, '93-100', 'General Conditioning', 'To develop the aerobic system at race pace. The total distance should be less than 10k.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(24, 12, NULL, 1, 1, 34, 3, '93-100', 'General Conditioning', 'To develop the aerobic system at race pace. The total distance should be less than 10k.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(25, 11, NULL, 2, 1, 7, 1, '83-87', 'General Conditioning', 'Warm-up and cool-down based on your preferences and needs.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(26, 12, NULL, 2, 1, 7, 1, '83-87', 'General Conditioning', 'Warm-up and cool-down based on your preferences and needs.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(27, 11, NULL, 3, 1, 5, 6, '88-92', 'General Conditioning', 'Run the work intervals at your 5k goal race pace.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(28, 12, NULL, 3, 1, 5, 6, '88-92', 'General Conditioning', 'Run the work intervals at your 5k goal race pace.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(29, 11, NULL, 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(30, 12, NULL, 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(31, 13, NULL, 1, 1, 34, 3, '93-100', 'Recovery', 'Recovery week, reduce distance.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(32, 14, NULL, 1, 1, 34, 3, '93-100', 'Recovery', 'Recovery week, reduce distance.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(33, 13, NULL, 2, 1, 7, 1, '83-87', 'Recovery', 'Warm-up and cool-down accordingly. Run at your 5k race pace.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(34, 14, NULL, 2, 1, 7, 1, '83-87', 'Recovery', 'Warm-up and cool-down accordingly. Run at your 5k race pace.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(35, 13, NULL, 3, 1, 4, 5, '73-82', 'Recovery', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(36, 14, NULL, 3, 1, 4, 5, '73-82', 'Recovery', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(37, 13, NULL, 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(38, 14, NULL, 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(39, 15, NULL, 1, 1, 35, 3, '93-100', 'Specific Conditioning', 'High stride rate, pulling the knees up and forward, and staying on the balls of the feet. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(40, 16, NULL, 1, 1, 35, 3, '93-100', 'Specific Conditioning', 'High stride rate, pulling the knees up and forward, and staying on the balls of the feet. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(41, 15, NULL, 2, 1, 7, 1, '83-87', 'Specific Conditioning', 'Warm-up and cool-down accordingly.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(42, 16, NULL, 2, 1, 7, 1, '83-87', 'Specific Conditioning', 'Warm-up and cool-down accordingly.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(43, 15, NULL, 3, 1, 22, 6, '88-92', 'Specific Conditioning', 'Repeat the cycle for a total distance of 5km or 3 miles.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(44, 16, NULL, 3, 1, 22, 6, '88-92', 'Specific Conditioning', 'Repeat the cycle for a total distance of 5km or 3 miles.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(45, 15, NULL, 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(46, 16, NULL, 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(47, 17, NULL, 1, 1, 36, 3, '93-100', 'Specific Conditioning', 'Warm-up and cool-down accordingly.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(48, 18, NULL, 1, 1, 36, 3, '93-100', 'Specific Conditioning', 'Warm-up and cool-down accordingly.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(49, 17, NULL, 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'Warm-up and cool-down accordingly.\r\nRun at your lactate threshold pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(50, 18, NULL, 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'Warm-up and cool-down accordingly.\r\nRun at your lactate threshold pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(51, 17, NULL, 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Aim for 90 strides/ min.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(52, 18, NULL, 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Aim for 90 strides/ min.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(53, 17, NULL, 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(54, 18, NULL, 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(55, 19, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(56, 20, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(57, 19, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'Warm-up and cool-down accordingly. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(58, 20, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'Warm-up and cool-down accordingly. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(59, 19, NULL, 3, 1, 36, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(60, 20, NULL, 3, 1, 36, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(61, 19, NULL, 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(62, 20, NULL, 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(63, 21, NULL, 1, 1, 34, 3, '93-100', 'Recovery', 'Recovery week, reduce distance.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(64, 22, NULL, 1, 1, 34, 3, '93-100', 'Recovery', 'Recovery week, reduce distance.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(65, 21, NULL, 2, 1, 35, 3, '93-100', 'Recovery', 'Ensure adequate warm-up.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(66, 22, NULL, 2, 1, 35, 3, '93-100', 'Recovery', 'Ensure adequate warm-up.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(67, 21, NULL, 3, 1, 34, 3, '93-100', 'Recovery', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(68, 22, NULL, 3, 1, 34, 3, '93-100', 'Recovery', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(69, 21, NULL, 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(70, 22, NULL, 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(71, 23, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Ensure adequate warm-up.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(72, 24, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Ensure adequate warm-up.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(73, 23, NULL, 2, 1, 39, 6, '88-92', 'Final Conditioning', 'To develop the aerobic system at race pace. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(74, 24, NULL, 2, 1, 39, 6, '88-92', 'Final Conditioning', 'To develop the aerobic system at race pace. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(75, 23, NULL, 3, 1, 4, 5, '73-82', 'Final Conditioning', 'Race pace pickups only once or twice every 5 mins for 30 secs.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(76, 24, NULL, 3, 1, 4, 5, '73-82', 'Final Conditioning', 'Race pace pickups only once or twice every 5 mins for 30 secs.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(77, 23, NULL, 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(78, 24, NULL, 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(79, 27, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(80, 28, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(81, 29, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(82, 30, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(83, 31, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(84, 32, NULL, 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(85, 25, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Ensure adequate warm-up.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(86, 26, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Ensure adequate warm-up.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(87, 25, NULL, 2, 1, 5, 6, '88-92', 'Final Conditioning', 'To improve endurance.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(88, 26, NULL, 2, 1, 5, 6, '88-92', 'Final Conditioning', 'To improve endurance.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(89, 25, NULL, 3, 1, 5, 6, '88-92', 'Final Conditioning', 'Active recovery at an easy pace.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(90, 26, NULL, 3, 1, 5, 6, '88-92', 'Final Conditioning', 'Active recovery at an easy pace.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(91, 25, NULL, 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(92, 26, NULL, 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(93, 33, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 8km (5 miles).\r\nEnsure adequate warm-up.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(94, 34, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 8km (5 miles).\r\nEnsure adequate warm-up.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(95, 33, NULL, 2, 1, 5, 6, '88-92', 'Final Conditioning', 'To improve endurance.\r\nRun at your 5k race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(96, 34, NULL, 2, 1, 5, 6, '88-92', 'Final Conditioning', 'To improve endurance.\r\nRun at your 5k race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(97, 33, NULL, 3, 1, 34, 3, '93-100', 'Final Conditioning', 'Run at or faster than mile race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(98, 34, NULL, 3, 1, 34, 3, '93-100', 'Final Conditioning', 'Run at or faster than mile race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(99, 33, NULL, 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(100, 34, NULL, 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(101, 35, NULL, 1, 1, 34, 3, '93-100', 'Race Week', 'Reduce this week''s total distance. Repeat the intervals for a total of 6km (4 miles).', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(102, 36, NULL, 1, 1, 34, 3, '93-100', 'Race Week', 'Reduce this week''s total distance. Repeat the intervals for a total of 6km (4 miles).', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(103, 35, NULL, 2, 1, 34, 3, '93-100', 'Race Week', 'To maintain the cardiovascular fitness level.\r\nRun at your mile race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(104, 36, NULL, 2, 1, 34, 3, '93-100', 'Race Week', 'To maintain the cardiovascular fitness level.\r\nRun at your mile race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(105, 35, NULL, 3, 1, 8, 2, '65-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(106, 36, NULL, 3, 1, 8, 2, '65-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(107, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(108, NULL, '43,44', 1, 1, 36, 3, '93-100', 'General Conditioning', 'To improve speed and running economy. Run at mile race pace or faster.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(109, NULL, '43,44', 2, 1, 5, 6, '88-92', 'General Conditioning', 'To develop the cardiovascular fitness. \nActive recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(110, NULL, '43,44', 3, 1, 23, 3, '93-100', 'General Conditioning', 'Repeat the process for a distance of up to 10km.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(111, NULL, '43,44', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(112, NULL, '45,46', 1, 1, 34, 3, '93-100', 'General Conditioning', 'Repeat the cycle for a total of 10-12 laps.\nThe work laps distance should not exceed 5% of the week''s total distance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(113, NULL, '45,46', 2, 1, 5, 6, '88-92', 'General Conditioning', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(114, NULL, '45,46', 3, 1, 4, 2, '65-72', 'General Conditioning', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(115, NULL, '45,46', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(116, NULL, '47,48', 1, 1, 36, 3, '93-100', 'General Conditioning', 'Improve speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(117, NULL, '47,48', 2, 1, 5, 6, '88-92', 'General Conditioning', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(118, NULL, '47,48', 3, 1, 34, 3, '93-100', 'General Conditioning', 'Ensure the total distance does not exceed 8% of this week''s total distance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(119, NULL, '47,48', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(120, NULL, '49,50', 1, 1, 24, 6, '88-92', 'Recovery', 'Reduce total weekly distance.\r\nTo improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(121, NULL, '49,50', 2, 1, 5, 6, '88-92', 'Recovery', 'To develop cardiovascular fitness.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(122, NULL, '49,50', 3, 1, 4, 5, '73-82', 'Recovery', 'To develop cardiovascular fitness.\r\nTo increase the ability of the body to tolerate repeated impact from running.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(123, NULL, '49,50', 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(124, NULL, '51,52', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'Total distance ran should not exceed 5% of the week''s total distance. Active recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(125, NULL, '51,52', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'Ensure adequate warm-up and cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(126, NULL, '51,52', 3, 1, 22, 3, '93-100', 'Specific Conditioning', 'Repeat the process for a total distance of 10km.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(127, NULL, '51,52', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(128, NULL, '53,54', 1, 1, 21, 3, '93-100', 'Specific Conditioning', 'To improve speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(129, NULL, '53,54', 2, 1, 34, 3, '93-100', 'Specific Conditioning', 'To improve cardiovascular fitness at race pace. Total distance covered should be less than 10km (6 miles).', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(130, NULL, '53,54', 3, 1, 5, 6, '88-92', 'Specific Conditioning', 'Ensure adequate warm-up and cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(131, NULL, '53,54', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(132, NULL, '55,56', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'Ensure adquate warm-up and cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(133, NULL, '55,56', 2, 1, 34, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovascular fitness at race pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(134, NULL, '55,56', 3, 1, 5, 6, '88-92', 'Specific Conditioning', 'Ensure adequate warm-up and cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(135, NULL, '55,56', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(136, NULL, '57,58', 1, 1, 34, 3, '93-100', 'Recovery', 'To develop aerobic power.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(137, NULL, '57,58', 2, 1, 5, 6, '88-92', 'Recovery', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(138, NULL, '57,58', 3, 1, 24, 6, '88-92', 'Recovery', 'Active recovery at easy pace', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(139, NULL, '57,58', 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(140, NULL, '59,60', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'Improve endurance. Active recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(141, NULL, '59,60', 2, 1, 34, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovascular system at race pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(142, NULL, '59,60', 3, 1, 5, 6, '93-100', 'Specific Conditioning', 'To improve endurance.\r\nActive recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(143, NULL, '59,60', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(144, NULL, '61,62', 1, 1, 34, 3, '93-100', 'Specific Conditioning', 'Active recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(145, NULL, '61,62', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'Repeat the whole cycle 4 times. Allocate time for cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(146, NULL, '61,62', 3, 1, 34, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovascular system at race pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(147, NULL, '61,62', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(148, NULL, '63,64', 1, 1, 25, 3, '93-100', 'Specific Conditioning', 'Active recovery at easy pace. Allocate time for cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(149, NULL, '63,64', 2, 1, 34, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovascular system at race pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(150, NULL, '63,64', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Have at least 6 x 30 secs pickups within the run. Gradually increase the pace to race pace. Have at least 5 mins of easy pace run before the next pickups.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(151, NULL, '63,64', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(152, NULL, '65,66', 1, 1, 5, 6, '88-92', 'Recovery', 'Reduce weekly total distance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(153, NULL, '65,66', 2, 1, 5, 6, '88-92', 'Recovery', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(154, NULL, '65,66', 3, 1, 36, 3, '93-100', 'Recovery', 'To improve speed and running economy.\r\nEnsure full recoveries between each run.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(155, NULL, '65,66', 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(156, NULL, '67,68', 1, 1, 34, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovascular system at race pace and to improve speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(157, NULL, '67,68', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(158, NULL, '67,68', 3, 1, 23, 3, '93-100', 'Specific Conditioning', 'Repeat the process and run up to 60 mins.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(159, NULL, '67,68', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(160, NULL, '69,70', 1, 1, 26, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovascular system at race pace and to improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(161, NULL, '69,70', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To develop the cardiovascular system at race pace and to improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(162, NULL, '69,70', 3, 1, 34, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovasucular system.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(163, NULL, '69,70', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(164, NULL, '71,72', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(165, NULL, '71,72', 2, 1, 4, 5, '73-82', 'Specific Conditioning', 'To develop the cardiovascular system and to promote positive physiological adaptations.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(166, NULL, '71,72', 3, 1, 22, 6, '88-92', 'Specific Conditioning', 'Repeat the process and run a total of 60 mins in duration.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(167, NULL, '71,72', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(168, NULL, '73,74', 1, 1, 5, 6, '88-92', 'Recovery', 'To improve lactate threshold.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(169, NULL, '73,74', 2, 1, 34, 3, '93-100', 'Recovery', 'To develop the cardiovascular system and to improve speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(170, NULL, '73,74', 3, 1, 34, 3, '93-100', 'Recovery', 'To stress the aerobic power and to improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(171, NULL, '73,74', 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes. Keep the distance short.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(172, NULL, '75,76', 1, 1, 5, 6, '88-92', 'Final Conditioning', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(173, NULL, '75,76', 2, 1, 34, 3, '93-100', 'Final Conditioning', 'To develop the cardiovascular system.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(174, NULL, '75,76', 3, 1, 26, 3, '93-100', 'Final Conditioning', 'To improve endurance, speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(175, NULL, '75,76', 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(176, NULL, '77,78', 1, 1, 5, 6, '88-92', 'Race Week', 'To improve endurance, speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(177, NULL, '77,78', 2, 1, 8, 2, '65-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(178, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 2, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(179, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 3, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(180, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 4, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(181, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 5, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(182, NULL, '85,86,87,88,89,90,91,92,93,94,95,96', 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(183, NULL, '97,98', 1, 1, 34, 3, '93-100', 'General Conditioning', 'To stress the aerobic system.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(185, NULL, '97,98', 2, 1, 29, 6, '88-92', 'General Conditioning', 'Try to perform this workout on a track. Run 1.6km (1 mile) in each direction (clockwise\nand anticlock-wise)\nEasy run on the curves and push moderately-hard on the straights.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(186, NULL, '97,98', 3, 1, 4, 5, '73-82', 'General Conditioning', 'To develop the cardiovascular system.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(187, NULL, '97,98', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(188, NULL, '99,100', 1, 1, 34, 3, '93-100', 'General Conditioning', 'Develop the aerobic fitness.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(189, NULL, '99,100', 2, 1, 34, 3, '93-100', 'General Conditioning', 'Run slightly faster than your pace for 5k.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(190, NULL, '99,100', 3, 1, 4, 5, '73-82', 'General Conditioning', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(191, NULL, '99,100', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(192, NULL, '101,102', 1, 1, 7, 6, '88-92', 'General Conditioning', 'To develop cardiovascular system at race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(193, NULL, '101,102', 2, 1, 5, 6, '88-92', 'General Conditioning', 'To improve lactate threshold.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(194, NULL, '101,102', 3, 1, 4, 5, '73-82', 'General Conditioning', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(195, NULL, '101,102', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(196, NULL, '103,104', 1, 1, 5, 6, '88-92', 'Recovery', 'Reduce total weekly distance for this week to promote recovery.\nTo improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(197, NULL, '103,104', 2, 1, 34, 3, '93-100', 'Recovery', 'To develop cardiovascular fitness.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(198, NULL, '103,104', 3, 1, 4, 5, '73-82', 'Recovery', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(199, NULL, '103,104', 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(200, NULL, '105,106', 1, 1, 22, 6, '88-92', 'Specific Conditioning', 'Run hard for the time stated and easy jog for half of that time.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(201, NULL, '105,106', 2, 1, 34, 3, '93-100', 'Specific Conditioning', 'Have adequate warm-up and cool-down.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(202, NULL, '105,106', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(203, NULL, '105,106', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(204, NULL, '107,108', 1, 1, 36, 3, '93-100', 'Specific Conditioning', 'Get the HR up quickly in the initial 30 secs and maintain it for 4.5 mins.\nDuring the recovery jog, allow the heart rate to drop significantly.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(205, NULL, '107,108', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve lactate threshold and cardiovascular fitness.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(206, NULL, '107,108', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(207, NULL, '107,108', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(208, NULL, '109,110', 1, 1, 33, 3, '93-100', 'Specific Conditioning', 'Focus on maintaining posture and a high stride rate.\nActive recovery at an easy pace/ walk.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(209, NULL, '109,110', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve your lactate threshold.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(210, NULL, '109,110', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(211, NULL, '109,110', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(212, NULL, '111,112', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve cardiovascular fitness.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(213, NULL, '111,112', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve endurance power.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(214, NULL, '111,112', 3, 1, 39, 6, '88-92', 'Specific Conditioning', 'To improve cardiovascular endurance at race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(215, NULL, '111,112', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(216, NULL, '113,114', 1, 1, 33, 3, '93-100', 'Specific Conditioning', 'Focus on maintaining posture and a high stride rate.\r\nActive recovery at easy pace/ walk.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(217, NULL, '113,114', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'Keep the intensity consistent.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(218, NULL, '113,114', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Make sure the run distance does not exceed 5% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(219, NULL, '113,114', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(220, NULL, '115,116', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve on cardiovascular fitness.\r\nIf possible, maintain the intensity.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(221, NULL, '115,116', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(222, NULL, '115,116', 3, 1, 36, 3, '93-100', 'Specific Conditioning', 'To improve running speed and economy.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(223, NULL, '115,116', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(224, NULL, '117,118', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To develop the cardiovascular system at race pace.\r\nRepeat the first set of workout 10 times, second set of workout 4 times and last\r\nset of workout 10 times.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(225, NULL, '117,118', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(226, NULL, '117,118', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(227, NULL, '117,118', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(228, NULL, '119,120', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To stress the cardiovascular system.', '2019-11-13 00:00:00', '2019-11-13 00:00:00'),
(229, NULL, '119,120', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve endurance.', '2019-11-13 00:00:00', '2019-11-13 00:00:00'),
(230, NULL, '119,120', 3, 1, 36, 3, '93-100', 'Specific Conditioning', 'To improve speed and running economy.', '2019-11-13 00:00:00', '2019-11-13 00:00:00'),
(231, NULL, '119,120', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-13 00:00:00', '2019-11-13 00:00:00'),
(232, NULL, '121,122', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To develop the cardiovascular system.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(233, NULL, '121,122', 2, 1, 4, 5, '73-82', 'Specific Conditioning', 'To improve endurance.\r\nIncreasing the ability of the muscles, tendons, and bones to tolerate repeated\r\nimpact from running.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(234, NULL, '121,122', 3, 1, 26, 3, '93-100', 'Specific Conditioning', 'To develop both cardiovascular endurance and power.\r\nRepeat 8x for both first and last set of workout.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(235, NULL, '121,122', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(236, NULL, '123,124', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'Allocate time to cool down.\r\nTo improve cardiovascular endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(237, NULL, '123,124', 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'To develop the cardiovascular system.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(238, NULL, '123,124', 3, 1, 36, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovasucular system at race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(239, NULL, '123,124', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(240, NULL, '125,126', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'Allocate time to cool down.\r\nTo improve aerobic power.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(241, NULL, '125,126', 2, 1, 35, 3, '93-100', 'Specific Conditioning', 'To develop strength specific to running.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(242, NULL, '125,126', 3, 1, 5, 6, '88-92', 'Specific Conditioning', 'Run as fast as possible at a steady pace for the duration.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(243, NULL, '125,126', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(244, NULL, '127,128', 1, 1, 5, 6, '88-92', 'Recovery', 'To improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(245, NULL, '127,128', 2, 1, 26, 3, '93-100', 'Recovery', 'To improve cardiovascular power and running speed and economy.\r\nAllocate time to cool down.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(246, NULL, '127,128', 3, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(247, NULL, '129,130', 1, 1, 5, 6, '88-92', 'Final Conditioning', 'Reduce weekly distance by 5-10%.\r\nAllocate time to cool-down.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(248, NULL, '129,130', 2, 1, 5, 6, '88-92', 'Final Conditioning', 'Allocate 10-15 mins to cool-down.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(249, NULL, '129,130', 3, 1, 5, 3, '93-100', 'Final Conditioning', 'To maintain cardiovascular endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(250, NULL, '129,130', 4, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(251, NULL, '131,132', 1, 1, 4, 5, '73-82', 'Race Week', 'Include approximately 5 pickups within the run.\r\nPickups pace at or faster than mile race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(252, NULL, '131,132', 2, 1, 5, 6, '88-92', 'Race Week', 'Reduce the total distance covered.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(253, NULL, '131,132', 3, 1, 8, 2, '65-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(254, NULL, '133,134,135,136,137,138,139,140,141,142,143,144', 1, 1, 8, 2, '65-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running. ', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(255, NULL, '145,146', 1, 1, 22, 6, '88-92', 'General Conditioning', 'To develop aerobic endurance and improve lactate tolerance. ', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(256, NULL, '145,146', 2, 1, 5, 6, '88-92', 'General Conditioning', 'Ensure adequate warm-up.\nAllow the heart rate to fluctuate but do not drop below 88% of HRmax (RPE 4-6).', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(257, NULL, '145,146', 3, 1, 24, 6, '88-92', 'General Conditioning', 'To develop cardiovascular power and strength specific to running.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(258, NULL, '145,146', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(259, NULL, '147,148', 1, 1, 5, 6, '88-92', 'General Conditioning', 'To improve lactate threshold.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(260, NULL, '147,148', 2, 1, 5, 6, '88-92', 'General Conditioning', 'To develop the aerobic power.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(261, NULL, '147,148', 3, 1, 35, 3, '93-100', 'General Conditioning', 'Focus on leg extension and knee drive to produce the most force and power on \r\neach stride.\r\nTo improve running speed and economy.\r\nTo develop strength specific to running.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(262, NULL, '147,148', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(263, NULL, '149,150', 1, 1, 36, 3, '93-100', 'General Conditioning', 'To improve running speed and economy.\r\nAllocate time for cool-down. ', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(264, NULL, '149,150', 2, 1, 34, 3, '93-100', 'General Conditioning', 'To develop cardiovascular power.\r\nAllocate time for cool-down.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(265, NULL, '149,150', 3, 1, 5, 6, '88-92', 'General Conditioning', 'Allow heart rate to fluctuate, but do not let it drop below 88% of HRmax (RPE: 4-6)', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(266, NULL, '149,150', 4, 1, 8, 2, '65-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(267, NULL, '151,152', 1, 1, 34, 3, '93-100', 'Recovery', 'Reduce total weekly distance.\r\nTo improve cardiovascular power.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(268, NULL, '151,152', 2, 1, 7, 3, '93-100', 'Recovery', 'Keep the run steady.\nAllocate time to cool-down.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(269, NULL, '151,152', 3, 1, 35, 3, '93-100', 'Recovery', 'To develop strength specific to running.\nFocus on leg extension and knee drive to produce high force and power on each stride.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(270, NULL, '151,152', 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(271, NULL, '153,154', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To develop cardiovascular power.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(272, NULL, '153,154', 2, 1, 34, 3, '93-100', 'Specific Conditioning', 'Total workout duration of at least 75 mins.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(273, NULL, '153,154', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Workout distance should not exceed 25% of weekly distance.\r\nFocus on stride rate and keep a relaxed upper body.\r\nIf you feel fatigue, insert a few 20 secs pickups throughout the run (with several mins apart) to break up the monotony of it.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(274, NULL, '153,154', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(275, NULL, '155,156', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To develop cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(276, NULL, '155,156', 2, 1, 28, 3, '93-100', 'Specific Conditioning', 'To improve endurance and cardiovascular fitness at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(277, NULL, '155,156', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Workout distance should not exceed 25% of weekly distance.\r\nFocus on form and count stride rate periodically during the run.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(278, NULL, '155,156', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(279, NULL, '157,158', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To stress the aerobic system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(280, NULL, '157,158', 2, 1, 28, 3, '93-100', 'Specific Conditioning', 'To improve running speed and economy.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(281, NULL, '157,158', 3, 1, 40, 3, '93-100', 'Specific Conditioning', 'Develop the cardiovascular system at race pace.\r\nTo increase lactate threshold tolerance.\r\nRepeat the second set of intervals to clock a total of 9.5km (6 miles).', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(282, NULL, '157,158', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03');
INSERT INTO `week_wise_workouts` (`id`, `week_wise_frequency_master_id`, `week_wise_frequency_master_ids`, `workout`, `training_activity_id`, `training_goal_id`, `training_intensity_id`, `THR`, `name`, `note`, `created_at`, `updated_at`) VALUES
(283, NULL, '159,160', 1, 1, 34, 3, '93-100', 'Recovery', 'Reduce weekly total distance.\r\nTo improve endurance.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(284, NULL, '159,160', 2, 1, 7, 3, '93-100', 'Recovery', 'To stress the cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(285, NULL, '159,160', 3, 1, 22, 6, '88-92', 'Recovery', 'During the interval run, run as fast as you can maintain for the prescribed duration.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(286, NULL, '159,160', 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(287, NULL, '161,162', 1, 1, 40, 3, '93-100', 'Specific Conditioning', 'To stress the cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(288, NULL, '161,162', 2, 1, 40, 3, '93-100', 'Specific Conditioning', 'Allow time to cool-down.\r\nTo stress the cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(289, NULL, '161,162', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Run at a steady and easy pace.\r\nWorkout distance should not exceed 25% of weekly distance.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(290, NULL, '161,162', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(291, NULL, '163,164', 1, 1, 40, 3, '93-100', 'Specific Conditioning', 'To develop on cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(292, NULL, '163,164', 2, 1, 22, 3, '93-100', 'Specific Conditioning', 'Continue the second set of interval pattern for 16km (10 miles).', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(293, NULL, '163,164', 3, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(294, NULL, '165,166', 1, 1, 5, 6, '88-92', 'Specific Conditioning', 'To improve endurance and threshold tolerance.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(295, NULL, '165,166', 2, 1, 39, 6, '88-92', 'Specific Conditioning', 'To stress the cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(296, NULL, '165,166', 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Workout distance should not exceed 25% of weekly distance.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(297, NULL, '165,166', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(298, NULL, '167,168', 1, 1, 40, 3, '93-100', 'Recovery', 'Reduce the total distance for this week.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(299, NULL, '167,168', 2, 1, 34, 3, '93-100', 'Recovery', 'To develop cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(300, NULL, '167,168', 3, 1, 4, 5, '73-82', 'Recovery', 'Run at a steady pace.\r\nTo increase the body''s ability to tolerate repeated impact from running.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(301, NULL, '167,168', 4, 1, 8, 2, '65-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(302, NULL, '169,170', 1, 1, 40, 3, '93-100', 'Specific Conditioning', 'To develop the cardiovascular system.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(303, NULL, '169,170', 2, 1, 4, 5, '73-82', 'Specific Conditioning', 'Run at a steady pace.\r\nTo increase the body''s ability to tolerate repeated impact from running.\r\n', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(304, NULL, '169,170', 3, 1, 34, 3, '93-100', 'Specific Conditioning', 'To develop cardiovascular endurance at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(305, NULL, '169,170', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(306, NULL, '171,172', 1, 1, 34, 3, '93-100', 'Specific Conditioning', 'Allow adequate warm-up and cool down.\r\nTo improve cardiovascular endurance at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(307, NULL, '171,172', 2, 1, 4, 5, '72-82', 'Specific Conditioning', 'Workout distance should not exceed 25% of weekly distance or 24km (15 miles).', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(308, NULL, '171,172', 3, 1, 5, 6, '88-92', 'Specific Conditioning', 'Allow time to warm-up and cool-down.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(309, NULL, '171,172', 4, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(310, NULL, '173,174', 1, 1, 4, 5, '73-82', 'Specific Conditioning', 'To develop the cardiovascular system.\nTo increase the body''s ability to tolerate repeated impact from running.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(311, NULL, '173,174', 2, 1, 7, 3, '93-100', 'Specific Conditioning', 'To stress cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(312, NULL, '173,174', 3, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(313, NULL, '175,176', 1, 1, 7, 3, '93-100', 'Specific Conditioning', 'To stress the cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(314, NULL, '175,176', 2, 1, 7, 6, '88-92', 'Specific Conditioning', 'Run at goal race pace or threshold pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(315, NULL, '175,176', 3, 1, 8, 2, '65-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(316, NULL, '177,178', 1, 1, 7, 3, '93-100', 'Final Conditioning', 'Include warm-up and cool-down.\r\nStress cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(317, NULL, '177,178', 2, 1, 7, 3, '93-100', 'Final Conditioning', 'Practice striding. Ensure full recoveries between each practice.\nStress cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(318, NULL, '177,178', 3, 1, 8, 2, '65-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(319, NULL, '179,180', 1, 1, 4, 5, '73-82', 'Race Week', 'Develop cardiovascular system.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(320, NULL, '179,180', 2, 1, 4, 5, '73-82', 'Race Week', 'Practice 5x fast strides at mile race pace or faster. Ensure full recoveries between each practice.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(321, NULL, '179,180', 3, 1, 7, 3, '93-100', 'Race Week', 'To improve aerobic power.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(322, NULL, '179,180', 4, 1, 8, 2, '65-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(323, NULL, '179,180', 5, 1, 8, 2, '65-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological \nchanges. Practice 4x fast strides at mile race pace or faster. Ensure full recoveries between each practice.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(324, NULL, '179,180', 6, 1, 8, 2, '65-72', 'Race Week', 'Easy run to promote recovery.', '2019-11-18 05:52:03', '2019-11-18 05:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `workout_wise_laps`
--

DROP TABLE IF EXISTS `workout_wise_laps`;
CREATE TABLE IF NOT EXISTS `workout_wise_laps` (
  `id` bigint(20) unsigned NOT NULL,
  `week_wise_workout_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'week_wise_workouts ids',
  `lap` int(11) NOT NULL COMMENT 'lap number',
  `percent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'percent of current lap',
  `distance` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'distance of current lap',
  `duration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'duration of current lap',
  `speed` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'speed of current lap',
  `rest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rest of current lap',
  `VDOT` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'VDOT for calculate speed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1936 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workout_wise_laps`
--

INSERT INTO `workout_wise_laps` (`id`, `week_wise_workout_ids`, `lap`, `percent`, `distance`, `duration`, `speed`, `rest`, `VDOT`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5,6,79,80,81,82,83,84', 1, '0.00', '2.5-5km', NULL, NULL, NULL, 'E/M', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(7, '7,8', 1, '0.00', '0.4km', NULL, NULL, NULL, 'T', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(8, '7,8', 2, '0.00', '0.4km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(9, '7,8', 3, '0.00', '0.4km', NULL, NULL, NULL, 'T', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(10, '7,8', 4, '0.00', '0.4km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(11, '7,8', 5, '0.00', '0.4km', NULL, NULL, NULL, 'T', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(12, '7,8', 6, '0.00', '0.4km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(13, '7,8', 1, '0.00', '0.2km', NULL, NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(14, '7,8', 2, '0.00', '0.2km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(15, '7,8', 3, '0.00', '0.2km', NULL, NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(16, '7,8', 4, '0.00', '0.2km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(17, '7,8', 5, '0.00', '0.2km', NULL, NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(18, '7,8', 6, '0.00', '0.2km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(19, '7,8', 7, '0.00', '0.2km', NULL, NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(20, '7,8', 8, '0.00', '0.2km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(35, '9,10', 1, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(36, '9,10', 2, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(37, '9,10', 3, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(38, '9,10', 4, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(39, '9,10', 5, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(40, '9,10', 6, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(41, '9,10', 7, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(42, '9,10', 8, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(43, '9,10', 9, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(44, '9,10', 10, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(45, '11,12', 1, '0', NULL, '0:02:00', NULL, NULL, 'R', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(46, '11,12', 2, '0', NULL, '0:01:00', NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(47, '11,12', 3, '0', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(48, '11,12', 4, '0', NULL, '0:00:30', NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(49, '11,12', 5, '0', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(50, '11,12', 6, '0', NULL, '0:02:00', NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(51, '13,14', 1, '0', '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(53, '15,16', 1, '0', '0.4km', NULL, NULL, NULL, 'T', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(54, '15,16', 2, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(55, '15,16', 3, '0', '0.4km', NULL, NULL, NULL, 'T', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(56, '15,16', 4, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(57, '15,16', 5, '0', '0.4km', NULL, NULL, NULL, 'T', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(58, '15,16', 6, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(59, '15,16', 7, '0', '0.4km', NULL, NULL, NULL, 'T', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(60, '15,16', 8, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(61, '15,16', 1, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(62, '15,16', 2, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(63, '15,16', 3, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(64, '15,16', 4, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(65, '15,16', 5, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(66, '15,16', 6, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(67, '15,16', 7, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(68, '15,16', 8, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(69, '15,16', 9, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(70, '15,16', 10, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(71, '17,18', 1, '0', NULL, '0:30:00', NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(72, '19,20', 1, '0', NULL, '1:00:00', NULL, NULL, 'M', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(73, '21,22', 1, '0', '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(74, '23,24', 1, '0', '0.2km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(75, '23,24', 2, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(76, '23,24', 3, '0', '0.2km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(77, '23,24', 4, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(78, '23,24', 1, '0', '0.4km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(79, '23,24', 2, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(80, '23,24', 1, '0', '0.8km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(81, '23,24', 2, '0', '0.8km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(82, '23,24', 1, '0', '0.4km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(83, '23,24', 2, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(84, '23,24', 1, '0', '0.2km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(85, '23,24', 2, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(86, '23,24', 3, '0', '0.2km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(87, '23,24', 4, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(88, '25,26', 1, '0', '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(89, '25,26', 2, '0', NULL, NULL, NULL, '0:02:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(90, '25,26', 3, '0', '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(91, '25,26', 4, '0', NULL, NULL, NULL, '0:02:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(92, '25,26', 5, '0', '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(93, '25,26', 6, '0', NULL, NULL, NULL, '0:02:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(94, '25,26', 7, '0', '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(95, '25,26', 8, '0', NULL, NULL, NULL, '0:02:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(96, '27,28', 1, '0', NULL, '0:03:00', NULL, NULL, 'T', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(97, '27,28', 2, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(98, '27,28', 3, '0', NULL, '0:03:00', NULL, NULL, 'T', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(99, '27,28', 4, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(100, '27,28', 5, '0', NULL, '0:03:00', NULL, NULL, 'T', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(101, '27,28', 6, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(102, '27,28', 7, '0', NULL, '0:03:00', NULL, NULL, 'T', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(103, '27,28', 8, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(112, '29,30', 1, '0', '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(113, '31,32', 1, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(114, '31,32', 2, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(115, '31,32', 3, '0', '0.4km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(116, '31,32', 4, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(117, '31,32', 5, '0', '0.8km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(118, '31,32', 6, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(119, '31,32', 7, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(120, '31,32', 8, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(121, '31,32', 9, '0', '0.4km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(122, '31,32', 10, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(123, '31,32', 11, '0', '0.8km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(124, '31,32', 12, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(125, '33,34', 1, '0', NULL, '0:30:00 - 0:40:00', NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(126, '35,36', 1, '0', NULL, '0:50:00-1:00:00', NULL, NULL, 'M', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(127, '37,38', 1, '0', '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(128, '39,40', 1, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(129, '39,40', 2, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(130, '39,40', 3, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(131, '39,40', 4, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(132, '39,40', 5, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(133, '39,40', 6, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(134, '39,40', 7, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(135, '39,40', 8, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(136, '39,40', 9, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(137, '39,40', 10, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(138, '41,42', 1, NULL, '4-5km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(139, '41,42', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(140, '41,42', 3, NULL, '2.4-3km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(141, '41,42', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(142, '41,42', 5, NULL, '0.8-1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(143, '43,44', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(144, '43,44', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(145, '43,44', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(146, '43,44', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(147, '43,44', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(148, '43,44', 6, NULL, NULL, '0:02:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(149, '45,46', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(150, '47,48', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(151, '47,48', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(152, '47,48', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(153, '47,48', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(154, '47,48', 5, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(155, '47,48', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(156, '47,48', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(157, '47,48', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(158, '47,48', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(159, '47,48', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(160, '47,48', 5, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(161, '47,48', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(162, '47,48', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(163, '47,48', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(164, '47,48', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(165, '47,48', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(166, '47,48', 5, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(167, '47,48', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(168, '49,50', 1, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(169, '49,50', 2, NULL, NULL, '0:05:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(170, '49,50', 3, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(171, '51,52', 1, NULL, NULL, '0:50:00-1:05:00', NULL, NULL, 'M', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(172, '53,54', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(173, '55,56', 1, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(174, '55,56', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(175, '57,58', 1, NULL, '3.2km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(176, '57,58', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(177, '57,58', 3, NULL, '3.2km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(178, '57,58', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(179, '57,58', 5, NULL, '3.2km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(180, '57,58', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(181, '59,60', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(182, '59,60', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(183, '59,60', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(184, '59,60', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(185, '59,60', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(186, '59,60', 6, NULL, NULL, '0:02:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(187, '61,62', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(188, '63,64', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(189, '63,64', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(190, '63,64', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(191, '63,64', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(192, '63,64', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(193, '63,64', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(194, '63,64', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(195, '63,64', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(196, '63,64', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(197, '63,64', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(198, '63,64', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(199, '63,64', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(200, '63,64', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(201, '63,64', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(202, '63,64', 15, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(203, '63,64', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(204, '65,66', 1, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(205, '65,66', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(206, '65,66', 3, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(207, '65,66', 4, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(208, '65,66', 5, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(209, '65,66', 6, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(210, '65,66', 7, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(211, '65,66', 8, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(212, '65,66', 9, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(213, '65,66', 10, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(214, '65,66', 11, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(215, '65,66', 12, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(216, '65,66', 1, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(217, '65,66', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(218, '65,66', 3, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(219, '65,66', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(220, '65,66', 5, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(221, '65,66', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(222, '65,66', 7, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(223, '65,66', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(224, '67,68', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(225, '67,68', 2, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(226, '69,70', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(227, '71,72', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(228, '71,72', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(229, '71,72', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(230, '71,72', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(231, '71,72', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(232, '71,72', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(233, '71,72', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(234, '71,72', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(235, '71,72', 9, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(236, '71,72', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(237, '73,74', 1, NULL, '2.4km', NULL, NULL, NULL, 'T', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(238, '73,74', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(239, '73,74', 3, NULL, '2.4km', NULL, NULL, NULL, 'T', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(240, '73,74', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(241, '73,74', 5, NULL, '2.4km', NULL, NULL, NULL, 'T', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(242, '73,74', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(245, '75,76', 1, NULL, '12-25km', NULL, NULL, NULL, 'M', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(246, '75,76', 2, NULL, NULL, NULL, NULL, NULL, 'T', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(247, '77,78', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(248, '85,86', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(249, '85,86', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(250, '85,86', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(251, '85,86', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(252, '85,86', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(253, '85,86', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(254, '85,86', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(255, '85,86', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(256, '85,86', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(257, '85,86', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(258, '85,86', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(259, '85,86', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(260, '87,88', 1, NULL, NULL, '0:12:00', NULL, NULL, 'T', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(261, '87,88', 2, NULL, NULL, '0:03:00', NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(262, '87,88', 3, NULL, NULL, '0:12:00', NULL, NULL, 'T', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(263, '89,90', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(264, '89,90', 2, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(265, '89,90', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(266, '89,90', 4, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(267, '89,90', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(268, '89,90', 6, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(269, '91,92', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-11-20 00:00:00', '2019-11-20 00:00:00'),
(270, '93,94', 1, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(271, '93,94', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(272, '95,96', 1, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(273, '95,96', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(274, '95,96', 3, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(275, '95,96', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(276, '95,96', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(277, '95,96', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(278, '97,98', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(279, '97,98', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(280, '97,98', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(281, '97,98', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(282, '97,98', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(283, '97,98', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(284, '97,98', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(285, '97,98', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(286, '97,98', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(287, '97,98', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(288, '97,98', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(289, '97,98', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(290, '97,98', 13, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(291, '97,98', 14, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(292, '99,100', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(293, '101,102', 1, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(294, '101,102', 1, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(295, '103,104', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(296, '103,104', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(297, '103,104', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(298, '103,104', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(299, '103,104', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(300, '103,104', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(301, '103,104', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(302, '103,104', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(303, '105,106', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(304, '107', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(305, '108', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(306, '108', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(307, '108', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(308, '108', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(309, '108', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(310, '108', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(311, '108', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(312, '108', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(313, '108', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(314, '108', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(315, '109', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(316, '109', 2, NULL, NULL, NULL, NULL, '0:01:00 - 0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(317, '109', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(318, '109', 4, NULL, NULL, NULL, NULL, '0:01:00 - 0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(319, '109', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(320, '109', 6, NULL, NULL, NULL, NULL, '0:01:00 - 0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(321, '109', 7, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(322, '109', 8, NULL, NULL, NULL, NULL, '0:01:00 - 0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(323, '110', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(324, '110', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(325, '110', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(326, '110', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(327, '110', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(328, '110', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(329, '111', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(330, '112', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(331, '112', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(332, '112', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(333, '112', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(334, '112', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(335, '112', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(336, '112', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(337, '112', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(338, '112', 9, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(339, '112', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(340, '112', 11, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(341, '112', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(342, '112', 13, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(343, '112', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(344, '112', 15, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(345, '112', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(346, '112', 17, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(347, '112', 18, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(348, '112', 19, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(349, '112', 20, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(350, '113', 1, NULL, NULL, '0:30:00-0:40:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(351, '114', 1, NULL, '12-40km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(352, '115', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(353, '116', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(354, '116', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(355, '116', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(356, '116', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(357, '116', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(358, '116', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(359, '116', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(360, '116', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(361, '116', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(362, '116', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(363, '116', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(364, '116', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(365, '116', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(366, '116', 2, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(367, '116', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(368, '116', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(369, '116', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(370, '116', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(371, '116', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(372, '116', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(373, '116', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(374, '116', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(375, '116', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(376, '116', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(377, '116', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(378, '116', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(379, '117', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(380, '117', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(381, '117', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(382, '117', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(383, '117', 5, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(384, '117', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(385, '118', 1, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(386, '118', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(387, '118', 3, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(388, '118', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(389, '118', 5, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(390, '118', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(391, '118', 7, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(392, '118', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(393, '118', 9, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(394, '118', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(395, '119', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(396, '120', 1, '4-6', NULL, '0:03:00-0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(397, '120', 2, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(398, '120', 3, '4-6', NULL, '0:03:00-0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(399, '120', 4, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(400, '120', 5, '4-6', NULL, '0:03:00-0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(401, '120', 6, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(402, '120', 7, '4-6', NULL, '0:03:00-0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(403, '120', 8, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(404, '121', 1, NULL, NULL, '0:40:00-0:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(405, '122', 1, NULL, NULL, '1:00:00', NULL, NULL, 'M', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(406, '123', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(407, '124', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(408, '124', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(409, '124', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(410, '124', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(411, '124', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(412, '124', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(413, '124', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(414, '124', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(415, '124', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(416, '124', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(417, '124', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(418, '124', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(419, '124', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(420, '124', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(421, '124', 15, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(422, '124', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(423, '124', 17, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(424, '124', 18, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(425, '124', 19, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(426, '124', 20, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(427, '125', 1, NULL, '4.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(428, '125', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(429, '125', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(430, '125', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(431, '125', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(432, '126', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(433, '126', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(434, '126', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(435, '126', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(436, '126', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(437, '126', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(438, '127', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(439, '128', 1, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(440, '128', 2, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(441, '128', 3, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(442, '128', 4, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(443, '128', 5, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(444, '128', 6, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(445, '128', 7, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(446, '128', 8, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(447, '128', 9, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(448, '128', 10, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(449, '128', 11, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(450, '128', 12, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(451, '128', 13, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(452, '128', 14, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(453, '128', 15, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(454, '128', 16, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(455, '129', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(456, '129', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(457, '129', 3, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(458, '129', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(459, '129', 5, NULL, NULL, NULL, NULL, '0:01:30-0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(460, '129', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(461, '129', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(462, '129', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(463, '129', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(464, '129', 5, NULL, NULL, NULL, NULL, '0:01:30-0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(465, '129', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(466, '129', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(467, '129', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(468, '129', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(469, '129', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(470, '129', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(471, '129', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(472, '129', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(473, '130', 1, NULL, NULL, '0:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(474, '131', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(475, '132', 1, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(476, '132', 2, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(477, '132', 3, NULL, NULL, '0:15:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(478, '132', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(479, '132', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(480, '132', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(481, '132', 7, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(482, '132', 8, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(483, '133', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(484, '133', 2, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(485, '133', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(486, '133', 4, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(487, '133', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(488, '133', 6, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(489, '133', 7, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(490, '133', 8, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(491, '133', 9, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(492, '133', 10, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(493, '133', 11, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(494, '133', 12, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(495, '134', 1, NULL, NULL, '0:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(496, '135', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(497, '136', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(498, '136', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(499, '136', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(500, '136', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(501, '136', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(502, '136', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(503, '136', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(504, '136', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(505, '136', 9, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(506, '136', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(507, '136', 11, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(508, '136', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(509, '136', 13, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(510, '136', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(511, '136', 15, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(512, '136', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(513, '136', 17, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(514, '136', 18, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(515, '136', 19, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(516, '136', 20, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(517, '137', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(518, '137', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00');
INSERT INTO `workout_wise_laps` (`id`, `week_wise_workout_ids`, `lap`, `percent`, `distance`, `duration`, `speed`, `rest`, `VDOT`, `created_at`, `updated_at`) VALUES
(519, '137', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(520, '137', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(521, '137', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(522, '137', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(523, '138', 1, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(524, '138', 2, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(525, '138', 3, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(526, '138', 4, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(527, '138', 5, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(528, '138', 6, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(529, '138', 7, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(530, '138', 8, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(531, '138', 9, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(532, '138', 10, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(533, '138', 11, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(534, '138', 12, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(535, '138', 13, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(536, '138', 14, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(537, '138', 15, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(538, '138', 16, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(539, '138', 17, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(540, '138', 18, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(541, '138', 19, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(542, '138', 20, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(543, '139', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(544, '140', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(545, '140', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(546, '140', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(547, '140', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(548, '140', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(549, '140', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(550, '140', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(551, '140', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(552, '141', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(553, '141', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(554, '141', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(555, '141', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(556, '141', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(557, '141', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(558, '141', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(559, '141', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(560, '141', 1, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(561, '141', 2, NULL, '1km', NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(562, '141', 3, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(563, '141', 4, NULL, '1km', NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(564, '141', 5, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(565, '141', 6, NULL, '1km', NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(566, '141', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(567, '141', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(568, '141', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(569, '141', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(570, '142', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(571, '142', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(572, '142', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(573, '142', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(574, '142', 5, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(575, '142', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(576, '142', 7, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(577, '142', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(578, '143', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(579, '144', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(580, '144', 2, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(581, '144', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(582, '144', 4, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(583, '144', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(584, '144', 6, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(585, '144', 1, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(586, '144', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(587, '144', 3, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(588, '144', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(589, '144', 5, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(590, '144', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(591, '145', 1, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(592, '145', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(593, '145', 3, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(594, '145', 4, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(595, '145', 5, NULL, NULL, '0:15:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(596, '145', 6, NULL, NULL, NULL, NULL, '0:06:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(597, '145', 7, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(598, '145', 8, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(599, '145', 9, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(600, '146', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(601, '146', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(602, '146', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(603, '146', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(604, '146', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(605, '146', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(606, '146', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(607, '146', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(608, '146', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(609, '146', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(610, '146', 3, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(611, '146', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(612, '147', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(613, '148', 1, NULL, '2-2.5km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(614, '148', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(615, '148', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(616, '148', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(617, '148', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(618, '148', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(619, '148', 5, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(620, '148', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(621, '148', 7, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(622, '148', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(623, '148', 1, NULL, NULL, NULL, NULL, '0:05:00', 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(624, '149', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(625, '149', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(626, '149', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(627, '149', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(628, '149', 5, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(629, '149', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(630, '149', 7, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(631, '149', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(632, '149', 9, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(633, '149', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(634, '150', 1, NULL, '12-40km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(635, '151', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(636, '152', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(637, '152', 2, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(638, '152', 3, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(639, '152', 4, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(640, '152', 1, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(641, '152', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(642, '152', 3, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(643, '152', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(644, '153', 1, NULL, '4.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(645, '153', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(646, '153', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(647, '153', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(648, '153', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(649, '153', 6, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(650, '154', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(651, '154', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(652, '154', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(653, '154', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(654, '154', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(655, '154', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(656, '154', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(657, '154', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(658, '154', 9, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(659, '154', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(660, '154', 11, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(661, '154', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(662, '154', 13, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(663, '154', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(664, '154', 15, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(665, '154', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(666, '155', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(667, '156', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(668, '156', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(669, '156', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(670, '156', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(671, '156', 1, NULL, '3.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(672, '156', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(673, '156', 3, NULL, '3.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(674, '156', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(675, '156', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(676, '156', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(677, '156', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(678, '156', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(679, '157', 1, NULL, NULL, '0:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(680, '158', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(681, '158', 2, NULL, NULL, '0:02:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(682, '158', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(683, '158', 4, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(684, '158', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(685, '158', 6, NULL, NULL, '0:05:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(686, '159', 2, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(687, '160', 1, NULL, '3-4km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(688, '160', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(689, '160', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(690, '160', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(691, '160', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(692, '160', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(693, '160', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(694, '160', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(695, '160', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(696, '161', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(697, '161', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(698, '161', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(699, '161', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(700, '161', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(701, '161', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(702, '161', 3, NULL, '1.5km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(703, '162', 1, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(704, '162', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(705, '162', 3, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(706, '162', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(707, '162', 5, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(708, '162', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(709, '162', 7, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(710, '162', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(711, '162', 9, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(712, '162', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(713, '163', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(714, '164', 1, NULL, NULL, '0:40:00-00:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(715, '165', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(716, '166', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(717, '166', 2, NULL, NULL, '0:02:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(718, '166', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(719, '166', 4, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(720, '166', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(721, '166', 6, NULL, NULL, '0:05:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(722, '167', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(723, '168', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(724, '168', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(725, '168', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(726, '168', 4, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(727, '168', 5, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(728, '168', 6, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(729, '169', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(730, '169', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(731, '169', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(732, '169', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(733, '169', 1, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(734, '169', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(735, '169', 3, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(736, '169', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(737, '169', 5, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(738, '169', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(739, '169', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(740, '169', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(741, '169', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(742, '169', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(743, '170', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(744, '170', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(745, '170', 1, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(746, '170', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(747, '170', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(748, '170', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(749, '170', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(750, '170', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(751, '170', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(752, '170', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(753, '171', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(754, '172', 1, NULL, NULL, '0:30:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(755, '173', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(756, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(757, '173', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(758, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(759, '173', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(760, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(761, '173', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(762, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(763, '173', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(764, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(765, '173', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(766, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(767, '173', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(768, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(769, '173', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(770, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(771, '173', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(772, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(773, '173', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(774, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(775, '174', 1, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(776, '174', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(777, '174', 3, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(778, '174', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(779, '174', 5, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(780, '174', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(781, '174', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(782, '174', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(783, '174', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(784, '174', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(785, '174', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(786, '174', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(787, '174', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(788, '174', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(789, '174', 1, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(790, '174', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(791, '174', 3, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(792, '174', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(793, '174', 5, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(794, '174', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(795, '174', 7, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(796, '174', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(797, '174', 9, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(798, '174', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(799, '174', 11, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(800, '174', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(801, '175', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(802, '176', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(803, '176', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(804, '176', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(805, '176', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(806, '176', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(807, '176', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(808, '176', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(809, '177', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(810, '178', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(811, '179', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(812, '180', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(813, '181', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(814, '182', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(815, '183', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(816, '183', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(817, '183', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(818, '183', 4, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(819, '183', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(820, '183', 6, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(821, '185', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(822, '185', 2, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(825, '186', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(826, '187', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(827, '188', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(828, '188', 2, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(829, '188', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(830, '188', 4, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(831, '188', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(832, '188', 6, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(833, '189', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(834, '189', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(835, '189', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(836, '189', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(837, '189', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(838, '189', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(839, '189', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(840, '189', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(841, '189', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(842, '189', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(843, '189', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(844, '189', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(845, '189', 13, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(846, '189', 14, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(847, '189', 15, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(848, '189', 16, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(849, '190', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(850, '191', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(851, '192', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(852, '192', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(853, '192', 3, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(854, '192', 4, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(855, '193', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(856, '193', 2, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(857, '193', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(858, '193', 4, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(859, '193', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(860, '193', 6, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(861, '193', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(862, '193', 8, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(863, '193', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(864, '193', 10, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(865, '193', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(866, '193', 12, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(867, '193', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(868, '193', 2, NULL, '0.2km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(869, '193', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(870, '193', 4, NULL, '0.2km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(871, '193', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(872, '193', 6, NULL, '0.2km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(873, '194', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(874, '195', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(875, '196', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(876, '196', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(877, '196', 3, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(878, '196', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(879, '196', 5, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(880, '196', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(881, '197', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(882, '197', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(883, '197', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(884, '197', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(885, '197', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(886, '197', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(887, '197', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(888, '197', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(889, '197', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(890, '197', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(891, '197', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(892, '197', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(893, '197', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(894, '197', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(895, '197', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(896, '197', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(897, '198', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(898, '199', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(899, '200', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(900, '200', 2, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(901, '200', 3, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(902, '200', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(903, '200', 5, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(904, '200', 6, NULL, NULL, NULL, NULL, '0:01:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(905, '200', 7, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(906, '200', 8, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(907, '200', 9, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(908, '200', 10, NULL, NULL, NULL, NULL, '0:00:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(909, '200', 11, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(910, '200', 12, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(911, '200', 13, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(912, '200', 14, NULL, NULL, NULL, NULL, '0:01:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(913, '200', 15, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(914, '200', 16, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(915, '200', 17, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(916, '200', 18, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(917, '201', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(918, '201', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(919, '201', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(920, '201', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(921, '201', 1, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(922, '201', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(923, '201', 3, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(924, '201', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(925, '201', 1, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(926, '201', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(927, '201', 3, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(928, '201', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(929, '201', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(930, '201', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(931, '201', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(932, '202', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(933, '203', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(950, '204', 1, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(951, '204', 2, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(952, '204', 3, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(953, '204', 4, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(954, '204', 5, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(955, '204', 6, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(956, '204', 7, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(957, '204', 8, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(958, '204', 9, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(959, '204', 10, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(960, '204', 11, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(961, '204', 12, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(962, '204', 13, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(963, '204', 14, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(964, '204', 15, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(965, '205', 1, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(966, '205', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(967, '205', 3, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(968, '205', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(969, '205', 5, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(970, '205', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(971, '205', 1, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(972, '205', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(973, '205', 3, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(974, '205', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(975, '205', 5, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(976, '205', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(977, '205', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(978, '205', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(979, '205', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(980, '205', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(981, '205', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(982, '205', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(983, '205', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(984, '205', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(985, '206', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(986, '207', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(987, '208', 1, '2-4', NULL, '0:04:00-0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(988, '208', 2, NULL, NULL, NULL, NULL, '0:04:00-0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(989, '208', 3, '2-4', NULL, '0:04:00-0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(990, '208', 4, NULL, NULL, NULL, NULL, '0:04:00-0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(991, '208', 5, '2-4', NULL, '0:04:00-0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(992, '208', 6, NULL, NULL, NULL, NULL, '0:04:00-0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(993, '208', 7, '2-4', NULL, '0:04:00-0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(994, '208', 8, NULL, NULL, NULL, NULL, '0:04:00-0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(995, '209', 1, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(996, '209', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(997, '209', 3, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(998, '209', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(999, '209', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1000, '209', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1001, '210', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1002, '211', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1003, '212', 1, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1004, '212', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1005, '212', 3, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1006, '212', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1007, '212', 5, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1008, '212', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1009, '212', 7, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1010, '212', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1011, '212', 9, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1012, '212', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1013, '212', 1, NULL, '0:05:00', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1014, '212', 1, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1015, '212', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1016, '212', 3, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1017, '212', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1018, '212', 5, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1019, '212', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1020, '213', 1, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1021, '213', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1022, '213', 3, NULL, NULL, '0:10:00', '0:03:00', NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1023, '213', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1024, '213', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1025, '213', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1026, '214', 1, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1027, '214', 2, NULL, NULL, '0:01:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1028, '214', 3, NULL, NULL, '0:01:30', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1029, '214', 4, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1030, '214', 5, NULL, NULL, '0:01:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1031, '214', 6, NULL, NULL, '0:01:30', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1032, '214', 7, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1033, '214', 8, NULL, NULL, '0:01:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03');
INSERT INTO `workout_wise_laps` (`id`, `week_wise_workout_ids`, `lap`, `percent`, `distance`, `duration`, `speed`, `rest`, `VDOT`, `created_at`, `updated_at`) VALUES
(1034, '214', 9, NULL, NULL, '0:01:30', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1035, '215', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1036, '216', 1, '2-4', NULL, '0:05:00-0:06:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1037, '216', 2, NULL, NULL, NULL, NULL, '0:05:00-0:06:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1038, '216', 1, '2-4', NULL, '0:05:00-0:06:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1039, '216', 2, NULL, NULL, NULL, NULL, '0:05:00-0:06:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1040, '216', 1, '2-4', NULL, '0:05:00-0:06:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1041, '216', 2, NULL, NULL, NULL, NULL, '0:05:00-0:06:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1042, '216', 1, '2-4', NULL, '0:05:00-0:06:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1043, '216', 2, NULL, NULL, NULL, NULL, '0:05:00-0:06:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1044, '217', 1, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1045, '217', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1046, '217', 3, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1047, '217', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1048, '217', 5, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1049, '217', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1050, '217', 7, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1051, '217', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1052, '217', 9, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1053, '217', 10, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1054, '218', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1055, '219', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1056, '220', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1057, '220', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1058, '220', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1059, '220', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1060, '220', 5, NULL, '1.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1061, '220', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1062, '220', 7, NULL, '1.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1063, '220', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1064, '220', 9, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1065, '220', 10, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1066, '220', 11, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1067, '220', 12, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1068, '220', 13, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1069, '220', 14, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1070, '221', 1, NULL, NULL, '0:30:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1071, '222', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1072, '222', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1073, '222', 3, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1074, '222', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1075, '222', 5, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1076, '222', 6, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1077, '223', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1078, '224', 1, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1079, '224', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1080, '224', 3, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1081, '224', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1082, '224', 5, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1083, '224', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1084, '224', 7, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1085, '224', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1086, '224', 9, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1087, '224', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1088, '224', 11, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1089, '224', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1090, '224', 13, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1091, '224', 14, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1092, '224', 15, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1093, '224', 16, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1094, '224', 17, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1095, '224', 18, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1096, '224', 19, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1097, '224', 20, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1098, '224', 1, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1099, '224', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1100, '224', 3, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1101, '224', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1102, '224', 5, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1103, '224', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1104, '224', 7, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1105, '224', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1106, '224', 1, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1107, '224', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1108, '224', 3, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1109, '224', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1110, '224', 5, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1111, '224', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1112, '224', 7, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1113, '224', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1114, '224', 9, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1115, '224', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1116, '224', 11, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1117, '224', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1118, '224', 13, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1119, '224', 14, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1120, '224', 15, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1121, '224', 16, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1122, '224', 17, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1123, '224', 18, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1124, '224', 19, NULL, '0.2km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1125, '224', 20, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1126, '225', 1, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1127, '225', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1128, '225', 3, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1129, '225', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1130, '225', 5, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1131, '225', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1132, '225', 7, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1133, '225', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1134, '226', 1, NULL, '12-40km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1135, '227', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1136, '228', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1137, '228', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1138, '228', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1139, '228', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1140, '228', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1141, '228', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1142, '228', 7, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1143, '228', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1144, '228', 9, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1145, '228', 10, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1146, '228', 11, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1147, '228', 12, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1148, '229', 1, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1149, '229', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1150, '229', 3, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1151, '229', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1152, '229', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1153, '229', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1154, '230', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1155, '230', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1156, '230', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1157, '230', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1158, '230', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1159, '230', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1160, '230', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1161, '230', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1162, '230', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1163, '230', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1164, '230', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1165, '230', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1166, '230', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1167, '230', 14, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1168, '230', 14, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1169, '230', 16, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1170, '231', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1171, '232', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1172, '232', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1173, '232', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1174, '232', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1175, '232', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1176, '232', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1177, '232', 6, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1178, '232', 7, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1179, '232', 8, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1180, '232', 9, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1181, '232', 10, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1182, '232', 11, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1183, '232', 12, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1184, '233', 1, NULL, '21-24km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1185, '234', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1186, '234', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1187, '234', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1188, '234', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1189, '234', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1190, '234', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1191, '234', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1192, '234', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1193, '234', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1194, '234', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1195, '234', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1196, '234', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1197, '234', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1198, '234', 14, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1199, '234', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1200, '234', 16, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1201, '234', 1, NULL, '4.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1202, '234', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1203, '234', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1204, '234', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1205, '234', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1206, '234', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1207, '234', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1208, '234', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1209, '234', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1210, '234', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1211, '234', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1212, '234', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1213, '234', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1214, '234', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1215, '234', 14, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1216, '234', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1217, '234', 16, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1218, '235', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1219, '236', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1220, '236', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1221, '236', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1222, '236', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1223, '236', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1224, '236', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1225, '236', 6, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1226, '236', 7, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1227, '236', 8, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1228, '236', 9, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1229, '236', 10, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1230, '236', 11, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1231, '236', 12, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1232, '236', 13, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1233, '236', 14, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1234, '236', 15, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1235, '236', 16, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1236, '236', 1, NULL, '0.8km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1237, '237', 1, NULL, NULL, '0:20:00-0:25:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1238, '237', 1, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1239, '237', 2, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1240, '237', 3, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1241, '237', 4, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1242, '237', 5, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1243, '237', 6, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1244, '237', 7, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1245, '237', 8, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1246, '237', 9, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1247, '237', 10, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1248, '237', 11, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1249, '237', 12, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1250, '237', 1, NULL, NULL, '0:20:00-0:25:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1251, '238', 1, NULL, '4.8km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1252, '238', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1253, '238', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1254, '238', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1255, '238', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1256, '238', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1257, '238', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1258, '238', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1259, '238', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1260, '238', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1261, '238', 10, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1262, '238', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1263, '238', 12, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1264, '238', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1265, '238', 14, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1266, '238', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1267, '238', 16, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1268, '238', 1, NULL, '4.8km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1269, '239', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1270, '240', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1271, '240', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1272, '240', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1273, '240', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1274, '240', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1275, '240', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1276, '240', 6, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1277, '240', 7, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1278, '240', 8, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1279, '240', 9, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1280, '240', 10, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1281, '240', 11, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1282, '240', 12, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1283, '240', 13, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1284, '240', 14, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1285, '240', 15, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1286, '240', 16, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1287, '240', 1, NULL, '0.8km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1288, '241', 1, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1289, '241', 2, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1290, '241', 3, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1291, '241', 4, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1292, '241', 5, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1293, '241', 6, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1294, '241', 7, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1295, '241', 8, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1296, '241', 9, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1297, '241', 10, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1298, '241', 11, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1299, '241', 12, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1300, '242', 1, NULL, NULL, '1:00:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1301, '243', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1302, '244', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1303, '244', 2, NULL, NULL, '0:15:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1304, '244', 3, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1305, '244', 4, NULL, NULL, '0:15:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1306, '244', 1, NULL, NULL, '0:05:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1307, '244', 2, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1308, '244', 3, NULL, NULL, '0:05:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1309, '244', 4, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1310, '245', 1, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1311, '245', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1312, '245', 3, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1313, '245', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1314, '245', 5, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1315, '245', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1316, '245', 7, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1317, '245', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1318, '245', 1, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1319, '245', 2, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1320, '245', 3, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1321, '245', 4, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1322, '245', 5, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1323, '245', 6, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1324, '245', 7, NULL, '0.4km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1325, '245', 8, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1326, '245', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1327, '245', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1328, '245', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1329, '245', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1330, '245', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1331, '245', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1332, '245', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1333, '245', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1334, '245', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1335, '245', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1336, '245', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1337, '245', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1338, '245', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1339, '245', 14, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1340, '245', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1341, '245', 16, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1342, '246', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1343, '247', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1344, '247', 2, NULL, '6.4km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1345, '247', 3, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1346, '247', 4, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1347, '248', 1, NULL, NULL, '0:20:00-0:30:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1348, '248', 1, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1349, '248', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1350, '248', 3, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1351, '248', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1352, '249', 1, NULL, '8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1353, '250', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1354, '251', 1, NULL, NULL, '0:45:00-1:00:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1355, '251', 1, NULL, NULL, '0:00:20-0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1356, '252', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1357, '252', 1, NULL, '0.8-1.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1358, '252', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1359, '252', 3, NULL, '0.8-1.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1360, '252', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1361, '252', 5, NULL, '0.8-1.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1362, '252', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1363, '253', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1364, '254', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1365, '255', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1366, '255', 1, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1367, '255', 2, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1368, '255', 3, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1369, '255', 4, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1370, '255', 5, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1371, '255', 6, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1372, '255', 7, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1373, '255', 8, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1374, '255', 9, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1375, '255', 10, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1376, '255', 1, NULL, NULL, '0:15:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1377, '256', 1, NULL, '9.5-11km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1378, '257', 1, '5-6', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1379, '257', 2, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1380, '257', 3, '5-6', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1381, '257', 4, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1382, '257', 5, '5-6', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1383, '257', 6, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1384, '257', 7, '5-6', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1385, '257', 8, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1386, '257', 9, '5-6', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1387, '257', 10, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1388, '257', 11, '5-6', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1389, '257', 12, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1390, '257', 13, '5-6', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1391, '257', 14, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1392, '257', 15, '5-6', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1393, '257', 16, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1394, '258', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1395, '259', 1, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1396, '259', 2, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1397, '259', 3, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1398, '259', 4, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1399, '259', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1400, '259', 6, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1401, '259', 7, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1402, '259', 8, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1403, '260', 1, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1404, '260', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1405, '260', 3, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1406, '260', 4, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1407, '260', 5, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1408, '260', 6, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1409, '260', 7, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1410, '260', 8, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1411, '260', 9, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1412, '260', 10, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1413, '261', 1, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1414, '261', 2, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1415, '261', 3, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1416, '261', 4, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1417, '261', 5, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1418, '261', 6, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1419, '261', 7, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1420, '261', 8, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1421, '261', 9, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1422, '261', 10, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1423, '261', 11, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1424, '261', 12, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1425, '262', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1426, '263', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1427, '263', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1428, '263', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1429, '263', 3, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1430, '263', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1431, '263', 5, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1432, '263', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1433, '263', 7, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1434, '263', 8, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1435, '263', 9, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1436, '263', 10, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1437, '263', 11, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1438, '263', 12, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1439, '263', 13, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1440, '263', 14, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1441, '263', 15, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1442, '263', 16, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1443, '263', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1444, '264', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1445, '264', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1446, '264', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1447, '264', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1448, '264', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1449, '264', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1452, '264', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1453, '264', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1454, '264', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1455, '264', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1456, '265', 1, NULL, NULL, '1:00:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1457, '266', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1458, '267', 1, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1459, '267', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1460, '267', 3, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1461, '267', 4, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1462, '267', 5, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1463, '267', 6, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1464, '267', 7, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1465, '267', 8, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1466, '267', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1467, '267', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1468, '267', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1469, '267', 4, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1470, '267', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1471, '267', 6, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1472, '267', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1473, '267', 8, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1474, '268', 1, NULL, NULL, '0:30:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1475, '269', 1, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1476, '269', 2, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1477, '269', 3, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1478, '269', 4, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1479, '269', 5, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1480, '269', 6, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1481, '269', 7, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1482, '269', 8, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1483, '269', 9, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1484, '269', 10, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1485, '270', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1486, '271', 1, NULL, '2.5-4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1487, '271', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1488, '271', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1489, '271', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1490, '271', 2, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1491, '271', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1492, '271', 4, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1493, '271', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1494, '271', 6, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1495, '271', 7, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1496, '271', 8, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1497, '271', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1498, '271', 2, NULL, NULL, NULL, NULL, '0:10:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1499, '272', 1, NULL, NULL, '0:15:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1500, '272', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1501, '272', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1502, '272', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1503, '272', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1504, '272', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1505, '272', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1506, '272', 7, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1507, '272', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1508, '272', 9, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1509, '272', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1510, '272', 11, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1511, '272', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1512, '272', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1513, '272', 2, NULL, NULL, '0:10:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1514, '272', 1, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1515, '273', 1, NULL, NULL, '01:30:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1516, '274', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1517, '275', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1518, '275', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1519, '275', 2, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1520, '275', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1521, '275', 4, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1522, '275', 5, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1523, '275', 6, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1524, '275', 7, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03');
INSERT INTO `workout_wise_laps` (`id`, `week_wise_workout_ids`, `lap`, `percent`, `distance`, `duration`, `speed`, `rest`, `VDOT`, `created_at`, `updated_at`) VALUES
(1525, '275', 8, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1526, '275', 1, NULL, '3.2km', NULL, NULL, NULL, 'I-5k', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1527, '275', 1, NULL, '11km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1528, '275', 2, NULL, '0.5km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1529, '275', 3, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1530, '275', 4, NULL, '0.5km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1531, '276', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1532, '276', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1533, '276', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1534, '276', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1535, '276', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1536, '276', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1537, '276', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1538, '276', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1539, '276', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1540, '276', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1541, '276', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1542, '276', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1543, '276', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1544, '276', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1545, '276', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1546, '276', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1547, '276', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1548, '276', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1549, '276', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1550, '276', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1551, '276', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1552, '276', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1553, '276', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1554, '276', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1555, '276', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1556, '276', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1557, '276', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1558, '276', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1559, '276', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1560, '276', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1561, '276', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1562, '276', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1563, '277', 1, NULL, NULL, '01:30:00-01:45:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1564, '278', 1, NULL, '6-12', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1565, '279', 1, NULL, NULL, '0:15:00-0:25:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1566, '279', 1, NULL, NULL, '0:20:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1567, '279', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1568, '279', 3, NULL, NULL, '0:20:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1569, '279', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1570, '279', 1, NULL, NULL, '0:15:00-0:25:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1571, '280', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1572, '280', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1573, '280', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1574, '280', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1575, '280', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1576, '280', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1577, '280', 7, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1578, '280', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1579, '280', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1580, '280', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1581, '280', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1582, '280', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1583, '280', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1584, '280', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1585, '280', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1586, '280', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1587, '280', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1588, '280', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1589, '280', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1590, '280', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1591, '280', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1592, '280', 14, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1593, '280', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1594, '280', 16, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1595, '280', 17, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1596, '280', 18, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1597, '280', 19, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1598, '280', 20, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1599, '280', 21, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1600, '280', 22, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1601, '280', 23, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1602, '280', 24, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1603, '280', 25, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1604, '280', 26, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1605, '280', 27, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1606, '280', 28, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1607, '280', 29, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1608, '280', 30, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1609, '280', 31, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1610, '280', 32, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1611, '280', 33, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1612, '280', 34, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1613, '280', 35, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1614, '280', 36, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1615, '280', 37, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1616, '280', 38, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1617, '280', 39, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1618, '281', 1, NULL, NULL, '0:15:00-0:25:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1619, '281', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1620, '281', 2, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1621, '281', 1, NULL, NULL, '0:10:00-0:20:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1622, '282', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1623, '283', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1624, '283', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1625, '283', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1626, '283', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1627, '283', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1628, '283', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1629, '283', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1630, '283', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1631, '283', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1632, '283', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1633, '283', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1634, '283', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1635, '283', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1636, '283', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1637, '283', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1638, '283', 15, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1639, '283', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1640, '283', 17, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1641, '283', 18, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1642, '283', 19, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1643, '283', 20, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1644, '283', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1645, '284', 1, NULL, NULL, '0:15:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1646, '284', 1, NULL, NULL, '0:30:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1647, '284', 2, NULL, NULL, NULL, NULL, '0:06:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1648, '284', 3, NULL, NULL, '0:30:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1649, '284', 4, NULL, NULL, NULL, NULL, '0:06:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1650, '284', 1, NULL, NULL, '0:15:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1651, '285', 1, NULL, NULL, '0:30:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1652, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1653, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1654, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1655, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1656, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1657, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1658, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1659, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1660, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1661, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1662, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1663, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1664, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1665, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1666, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1667, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1668, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1669, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1670, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1671, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1672, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1673, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1674, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1675, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1676, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1677, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1678, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1679, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1680, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1681, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1682, '285', 1, NULL, NULL, '0:30:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1683, '286', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1684, '287', 1, NULL, '1.6km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1685, '287', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1686, '287', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1687, '287', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1688, '287', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1689, '287', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1690, '287', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1691, '287', 1, NULL, '3.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1692, '287', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1693, '287', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1694, '287', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1695, '287', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1696, '287', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1697, '287', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1698, '287', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1699, '287', 1, NULL, '0.8-1.6km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1700, '288', 1, NULL, NULL, '0:10:00-0:20:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1701, '288', 1, NULL, NULL, '0:20:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1702, '288', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1703, '288', 3, NULL, NULL, '0:20:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1704, '288', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1705, '288', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1706, '288', 2, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1707, '288', 3, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1708, '288', 4, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1709, '289', 1, NULL, NULL, '2:00:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1710, '290', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1711, '291', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1712, '291', 1, NULL, NULL, '0:35:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1713, '291', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1714, '291', 3, NULL, NULL, '0:35:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1715, '291', 4, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1716, '291', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1717, '292', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1718, '292', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1719, '292', 2, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1720, '292', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1721, '292', 4, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1722, '292', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1723, '293', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1724, '294', 1, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1725, '294', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1726, '294', 3, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1727, '294', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1728, '294', 5, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1729, '294', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1730, '294', 7, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1731, '294', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1732, '294', 9, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1733, '294', 10, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1734, '294', 11, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1735, '294', 12, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1736, '295', 1, NULL, NULL, '0:15:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1737, '295', 2, NULL, NULL, '0:40:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1738, '295', 3, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1739, '295', 4, NULL, NULL, '0:15:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1740, '295', 4, NULL, NULL, '0:15:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1741, '296', 1, NULL, NULL, '2:00:00-2:30:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1742, '297', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1743, '298', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1744, '298', 1, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1745, '298', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1746, '298', 3, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1747, '298', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1748, '298', 5, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1749, '298', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1750, '298', 7, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1751, '298', 7, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1752, '298', 9, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1753, '298', 10, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1754, '298', 11, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1755, '298', 12, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1756, '298', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1757, '299', 1, NULL, NULL, '0:10:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1758, '299', 1, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1759, '299', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1760, '299', 3, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1761, '299', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1762, '299', 5, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1763, '299', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1764, '299', 7, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1765, '299', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1766, '299', 1, NULL, NULL, '0:10:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1767, '300', 1, NULL, '29-30km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1768, '301', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1770, '302', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1771, '302', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1772, '302', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1773, '302', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1774, '302', 5, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1775, '302', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1776, '302', 7, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1777, '302', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1778, '302', 1, NULL, NULL, NULL, NULL, '0:04:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1779, '302', 1, NULL, '0.8km', '', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1780, '302', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1781, '302', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1782, '302', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1783, '302', 5, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1784, '302', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1785, '302', 7, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1786, '302', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1787, '303', 1, NULL, '29-30km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1788, '304', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1789, '304', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1790, '304', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1791, '304', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1792, '304', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1793, '304', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1794, '304', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1795, '304', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1796, '304', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1797, '304', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1798, '304', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1799, '304', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1800, '304', 13, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1801, '304', 14, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1802, '304', 15, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1803, '304', 16, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1804, '304', 17, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1805, '304', 18, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1806, '304', 19, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1807, '304', 20, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1808, '304', 1, NULL, '4.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1809, '304', 2, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1810, '304', 3, NULL, '4.8km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1811, '305', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1812, '306', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1813, '306', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1814, '306', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1815, '306', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1816, '306', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1817, '306', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1818, '306', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1819, '306', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1820, '306', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1821, '306', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1822, '306', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1823, '306', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1824, '306', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1825, '306', 14, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1826, '306', 15, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1827, '306', 16, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1828, '306', 17, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1829, '306', 18, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1830, '306', 19, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1831, '306', 20, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1832, '306', 1, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1833, '306', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1834, '306', 2, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1835, '306', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1836, '306', 4, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1837, '307', 1, NULL, '24km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1838, '308', 1, NULL, '6.4km', NULL, NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1839, '308', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1840, '308', 3, NULL, '6.4km', NULL, NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1841, '309', 1, NULL, '6 - 12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1842, '310', 1, NULL, '32-35km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1843, '311', 1, NULL, '1.6km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1844, '311', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1845, '311', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1846, '311', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1847, '311', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1848, '311', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1849, '311', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1850, '311', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1851, '311', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1852, '311', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1853, '311', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1854, '311', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1855, '311', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1856, '311', 13, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1857, '311', 14, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1858, '311', 15, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1859, '311', 16, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1860, '311', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1861, '311', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1862, '311', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1863, '311', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1864, '311', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1865, '311', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1866, '311', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1867, '311', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1868, '311', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1869, '311', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1870, '311', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1871, '311', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1872, '311', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1873, '311', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1874, '311', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1875, '311', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1876, '311', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1877, '311', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1878, '311', 1, NULL, '0.8km-1.6km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1879, '312', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1880, '313', 1, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1881, '313', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1882, '313', 3, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1883, '313', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1884, '313', 5, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1885, '313', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1886, '314', 1, NULL, NULL, '0:20:00-0:30:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1887, '314', 2, NULL, NULL, '2:00:00-2:30:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1888, '315', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1889, '316', 1, NULL, NULL, '0:30:00-0:40:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1890, '316', 1, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1891, '316', 2, NULL, NULL, '0:30:00-0:40:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1892, '316', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1893, '317', 1, NULL, NULL, '0:15:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1894, '317', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1895, '317', 3, NULL, NULL, '0:15:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1896, '317', 4, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1897, '317', 1, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1898, '317', 2, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1899, '317', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1900, '317', 4, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1901, '317', 5, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1902, '317', 6, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1903, '317', 7, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1904, '317', 8, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1905, '317', 9, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1906, '317', 10, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1907, '318', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1908, '319', 1, NULL, NULL, '1:00:00-1:15:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1909, '320', 1, NULL, NULL, '0:45:00-1:00:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1910, '320', 1, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1911, '320', 2, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1912, '320', 3, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1913, '320', 4, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1914, '320', 5, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1915, '321', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1916, '321', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1917, '321', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1918, '321', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1919, '321', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1920, '321', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1921, '322', 1, NULL, NULL, '0:35:00-0:45:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1922, '323', 1, NULL, NULL, '0:35:00-0:45:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1923, '323', 1, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1924, '323', 2, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1925, '323', 3, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1926, '323', 4, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1927, '324', 1, NULL, NULL, '0:20:00-0:30:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1933, '225', 9, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1934, '225', 10, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1935, '280', 40, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_forces`
--
ALTER TABLE `action_forces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available_times`
--
ALTER TABLE `available_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `available_times_code_unique` (`code`);

--
-- Indexes for table `billing_informations`
--
ALTER TABLE `billing_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `body_parts`
--
ALTER TABLE `body_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_clients`
--
ALTER TABLE `booked_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `bookmarks_event_id_foreign` (`event_id`),
  ADD KEY `bookmarks_professional_id_foreign` (`professional_id`);

--
-- Indexes for table `cancellation_policies`
--
ALTER TABLE `cancellation_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_libraries`
--
ALTER TABLE `common_libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_programs_weeks`
--
ALTER TABLE `common_programs_weeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_programs_weeks_laps`
--
ALTER TABLE `common_programs_weeks_laps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `common_programs_weeks_laps_common_programs_week_id_foreign` (`common_programs_week_id`);

--
-- Indexes for table `completed_training_logs`
--
ALTER TABLE `completed_training_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completed_training_programs`
--
ALTER TABLE `completed_training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_common_libraries_details`
--
ALTER TABLE `custom_common_libraries_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_training_programs`
--
ALTER TABLE `custom_training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_comments`
--
ALTER TABLE `feed_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_likes`
--
ALTER TABLE `feed_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `load_center_events`
--
ALTER TABLE `load_center_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_center_events_user_id_foreign` (`user_id`);

--
-- Indexes for table `load_center_feed_reports`
--
ALTER TABLE `load_center_feed_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `load_center_feed_users_reports`
--
ALTER TABLE `load_center_feed_users_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `load_center_requests`
--
ALTER TABLE `load_center_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_center_requests_user_id_foreign` (`user_id`),
  ADD KEY `load_center_requests_country_id_foreign` (`country_id`);

--
-- Indexes for table `log_cardio_validations`
--
ALTER TABLE `log_cardio_validations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_cardio_validations_training_activity_id_index` (`training_activity_id`),
  ADD KEY `log_cardio_validations_training_goal_id_index` (`training_goal_id`);

--
-- Indexes for table `log_resistance_validations`
--
ALTER TABLE `log_resistance_validations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_conversation`
--
ALTER TABLE `message_conversation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`from_id`),
  ADD KEY `messages_receiver_id_foreign` (`to_id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `conversation_id` (`conversation_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_options`
--
ALTER TABLE `payment_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preset_training_programs`
--
ALTER TABLE `preset_training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professional_types`
--
ALTER TABLE `professional_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repetition_maxes`
--
ALTER TABLE `repetition_maxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_workouts`
--
ALTER TABLE `saved_workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_log_id` (`training_log_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_premium`
--
ALTER TABLE `setting_premium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_professional_profiles`
--
ALTER TABLE `setting_professional_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_professional_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `setting_race_distances`
--
ALTER TABLE `setting_race_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_trainings`
--
ALTER TABLE `setting_trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `targeted_muscles`
--
ALTER TABLE `targeted_muscles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_activity`
--
ALTER TABLE `training_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_frequencies`
--
ALTER TABLE `training_frequencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_goal`
--
ALTER TABLE `training_goal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_intensity`
--
ALTER TABLE `training_intensity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_log_styles`
--
ALTER TABLE `training_log_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_logs`
--
ALTER TABLE `training_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_programs`
--
ALTER TABLE `training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_setting_units`
--
ALTER TABLE `training_setting_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_emergency_contacts`
--
ALTER TABLE `user_emergency_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_emergency_contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_followers_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_relations`
--
ALTER TABLE `users_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_snoozes`
--
ALTER TABLE `users_snoozes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week_wise_frequency_masters`
--
ALTER TABLE `week_wise_frequency_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week_wise_workouts`
--
ALTER TABLE `week_wise_workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `week_wise_workouts_week_wise_frequency_master_id_foreign` (`week_wise_frequency_master_id`);

--
-- Indexes for table `workout_wise_laps`
--
ALTER TABLE `workout_wise_laps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `action_forces`
--
ALTER TABLE `action_forces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `available_times`
--
ALTER TABLE `available_times`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `billing_informations`
--
ALTER TABLE `billing_informations`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `body_parts`
--
ALTER TABLE `body_parts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `booked_clients`
--
ALTER TABLE `booked_clients`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `cancellation_policies`
--
ALTER TABLE `cancellation_policies`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `common_libraries`
--
ALTER TABLE `common_libraries`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `common_programs_weeks`
--
ALTER TABLE `common_programs_weeks`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `common_programs_weeks_laps`
--
ALTER TABLE `common_programs_weeks_laps`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `completed_training_logs`
--
ALTER TABLE `completed_training_logs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `completed_training_programs`
--
ALTER TABLE `completed_training_programs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2473;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `custom_common_libraries_details`
--
ALTER TABLE `custom_common_libraries_details`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `custom_training_programs`
--
ALTER TABLE `custom_training_programs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feed_comments`
--
ALTER TABLE `feed_comments`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `feed_likes`
--
ALTER TABLE `feed_likes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `libraries`
--
ALTER TABLE `libraries`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `load_center_events`
--
ALTER TABLE `load_center_events`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `load_center_feed_reports`
--
ALTER TABLE `load_center_feed_reports`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `load_center_feed_users_reports`
--
ALTER TABLE `load_center_feed_users_reports`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `load_center_requests`
--
ALTER TABLE `load_center_requests`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `log_cardio_validations`
--
ALTER TABLE `log_cardio_validations`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `log_resistance_validations`
--
ALTER TABLE `log_resistance_validations`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `message_conversation`
--
ALTER TABLE `message_conversation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `payment_options`
--
ALTER TABLE `payment_options`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `preset_training_programs`
--
ALTER TABLE `preset_training_programs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `professional_types`
--
ALTER TABLE `professional_types`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `repetition_maxes`
--
ALTER TABLE `repetition_maxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `saved_workouts`
--
ALTER TABLE `saved_workouts`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting_premium`
--
ALTER TABLE `setting_premium`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `setting_professional_profiles`
--
ALTER TABLE `setting_professional_profiles`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `setting_race_distances`
--
ALTER TABLE `setting_race_distances`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `setting_trainings`
--
ALTER TABLE `setting_trainings`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `targeted_muscles`
--
ALTER TABLE `targeted_muscles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `training_activity`
--
ALTER TABLE `training_activity`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `training_frequencies`
--
ALTER TABLE `training_frequencies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `training_goal`
--
ALTER TABLE `training_goal`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `training_intensity`
--
ALTER TABLE `training_intensity`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `training_log_styles`
--
ALTER TABLE `training_log_styles`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `training_logs`
--
ALTER TABLE `training_logs`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `training_programs`
--
ALTER TABLE `training_programs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `training_setting_units`
--
ALTER TABLE `training_setting_units`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_emergency_contacts`
--
ALTER TABLE `user_emergency_contacts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_followers`
--
ALTER TABLE `user_followers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users_relations`
--
ALTER TABLE `users_relations`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_snoozes`
--
ALTER TABLE `users_snoozes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `week_wise_frequency_masters`
--
ALTER TABLE `week_wise_frequency_masters`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `week_wise_workouts`
--
ALTER TABLE `week_wise_workouts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=325;
--
-- AUTO_INCREMENT for table `workout_wise_laps`
--
ALTER TABLE `workout_wise_laps`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1936;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `load_center_events` (`id`),
  ADD CONSTRAINT `bookmarks_professional_id_foreign` FOREIGN KEY (`professional_id`) REFERENCES `setting_professional_profiles` (`id`),
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `load_center_events`
--
ALTER TABLE `load_center_events`
  ADD CONSTRAINT `load_center_events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `load_center_requests`
--
ALTER TABLE `load_center_requests`
  ADD CONSTRAINT `load_center_requests_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `load_center_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `setting_professional_profiles`
--
ALTER TABLE `setting_professional_profiles`
  ADD CONSTRAINT `setting_professional_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_emergency_contacts`
--
ALTER TABLE `user_emergency_contacts`
  ADD CONSTRAINT `user_emergency_contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD CONSTRAINT `user_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `week_wise_workouts`
--
ALTER TABLE `week_wise_workouts`
  ADD CONSTRAINT `week_wise_workouts_week_wise_frequency_master_id_foreign` FOREIGN KEY (`week_wise_frequency_master_id`) REFERENCES `week_wise_frequency_masters` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
