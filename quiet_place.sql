-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 17, 2020 at 06:12 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiet_place`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_name`, `email`, `phone_no`, `address`, `room_id`, `booking_date`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aung aung', 'aa@gmailcom', '09123456789', 'yangon', 92, '2020-01-30', '9 am - 12 pm', 'ok', '2020-01-30 21:25:52', '2020-01-30 21:25:52'),
(3, 'aung aung', 'aa@gmailcom', '09123456789', 'yangon', 4, '2020-01-31', '9 am - 12 pm', 'ok', '2020-02-03 08:23:15', '2020-02-03 08:23:15'),
(4, 'Mg Mg', 'mgmg@gmail.com', '09123456789', 'yangon', 4, '2020-01-31', '3 pm - 6 pm', 'ok', '2020-02-03 08:23:47', '2020-02-03 08:23:47'),
(5, 'aung aung', 'mgmg@gmail.com', '09123456789', 'yangon', 4, '2020-01-30', '9 am - 12 pm', 'ok', '2020-02-03 10:42:56', '2020-02-03 10:42:56'),
(7, 'aung aung', 'aa@gmailcom', '09123456789', 'yangon', 4, '2020-01-31', '12 pm - 3 pm', 'ok', '2020-02-05 07:47:48', '2020-02-05 07:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_24_063637_create_events_table', 1),
(6, '2020_01_24_105826_create_townships_table', 2),
(7, '2020_01_24_112453_create_services_table', 3),
(11, '2020_01_25_180114_create_rooms_table', 4),
(13, '2020_01_26_031447_create_room_service_table', 5),
(14, '2020_01_28_095211_create_bookings_table', 6),
(15, '2020_02_03_041655_create_permission_tables', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', NULL, NULL),
(2, 'Member', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roomtype_id` bigint(20) UNSIGNED NOT NULL,
  `township_id` bigint(20) UNSIGNED NOT NULL,
  `size` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `price`, `photo`, `description`, `roomtype_id`, `township_id`, `size`, `capacity`, `created_at`, `updated_at`) VALUES
(3, 8000, 'storage/image/e24.jpg', 'This beautiful space has seating for 30, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 2, 40, 30, '2020-01-25 20:45:37', '2020-01-29 12:14:35'),
(4, 6000, 'storage/image/class2.jpeg', 'This beautiful space has seating for 25, a whiteboard, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 4, 30, 25, '2020-01-25 20:56:23', '2020-01-29 12:17:44'),
(7, 5500, 'storage/image/class3.jpeg', 'This beautiful space has seating for 20, a whiteboard, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 5, 30, 20, '2020-01-26 21:09:01', '2020-01-29 12:18:20'),
(8, 6000, 'storage/image/class4.jpg', 'This beautiful space has seating for 30, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 6, 40, 30, '2020-01-27 15:21:42', '2020-01-29 12:20:32'),
(9, 5000, 'storage/image/class27.jpg', 'This beautiful space has seating for 20, a whiteboard, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 8, 25, 20, '2020-01-27 15:22:42', '2020-01-29 12:20:52'),
(10, 5500, 'storage/image/c.jpg', 'This beautiful space has seating for 30, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 7, 30, 30, '2020-01-27 15:24:22', '2020-01-29 12:21:05'),
(11, 4500, 'storage/image/c7.jpg', 'This beautiful space has seating for 8, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 2, 20, 8, '2020-01-27 15:25:58', '2020-01-29 12:21:32'),
(12, 5000, 'storage/image/c8.jpg', 'This beautiful space has seating for 15, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 4, 20, 15, '2020-01-27 15:27:12', '2020-01-29 12:22:01'),
(13, 6000, 'storage/image/meet3.jpg', 'This beautiful space has seating for 10, TV, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 5, 10, 10, '2020-01-27 15:29:59', '2020-01-29 12:22:17'),
(14, 5500, 'storage/image/meet5.jpg', 'This beautiful space has seating for 20, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 6, 20, 20, '2020-01-27 15:31:34', '2020-01-29 12:22:31'),
(15, 4500, 'storage/image/meet6.jpg', 'This beautiful space has seating for 10, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 7, 10, 10, '2020-01-27 15:33:26', '2020-01-29 12:24:10'),
(16, 6000, 'storage/image/meet2.jpeg', 'This beautiful space has seating for 10, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 8, 15, 10, '2020-01-27 15:34:41', '2020-01-29 12:24:40'),
(17, 6000, 'storage/image/empty-classroom.jpg', 'This beautiful space has seating for 30, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 2, 25, 30, '2020-01-27 15:50:41', '2020-01-29 12:25:07'),
(18, 6000, 'storage/image/class28.jpg', 'This beautiful space has seating for 20, a Whiteboard,Television, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 2, 20, 20, '2020-01-27 15:52:21', '2020-01-29 12:25:26'),
(19, 6500, 'storage/image/event.jpeg', 'This beautiful space has seating for 35, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 5, 40, 35, '2020-01-27 15:54:36', '2020-01-29 12:25:45'),
(20, 5500, 'storage/image/meet4.jpg', 'This beautiful space has seating for 15,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 2, 20, 15, '2020-01-27 15:57:22', '2020-01-29 12:26:02'),
(21, 6000, 'storage/image/a_view_of_training_room_1_with_a_projector_podium_set_up_in_a_classroom_configuration.jpg', 'This beautiful space has seating for 24, Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 4, 30, 24, '2020-01-27 20:10:39', '2020-01-29 12:26:29'),
(22, 8000, 'storage/image/44dd835453d25d9ea9c57adc5ed07b54.jpg', 'This beautiful space has seating for 30, Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 5, 40, 30, '2020-01-27 20:12:06', '2020-01-29 12:26:48'),
(23, 7000, 'storage/image/CR2-render-1920-1.jpg', 'This beautiful space has seating for 20, Television, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 5, 30, 20, '2020-01-27 20:16:20', '2020-01-29 12:27:05'),
(24, 7000, 'storage/image/f12c8d3b4c55ac1792cb6d0aacc391eb.jpg', 'This beautiful space has seating for 35, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 2, 40, 35, '2020-01-27 20:25:44', '2020-01-29 12:27:19'),
(25, 6000, 'storage/image/Muskoka5-845x684.jpg', 'This beautiful space has seating for 30, Television, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 2, 50, 30, '2020-01-27 20:27:14', '2020-01-29 12:27:40'),
(26, 6500, 'storage/image/classroom-2093743_1920.jpg', 'This beautiful space has seating for 30, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 4, 30, 30, '2020-01-27 20:30:28', '2020-01-29 12:28:03'),
(27, 7000, 'storage/image/training_room_solution_image-1024x768.jpg', 'This beautiful space has seating for 30, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 5, 40, 30, '2020-01-27 20:32:41', '2020-01-29 12:28:23'),
(28, 6500, 'storage/image/c2.jpeg', 'This beautiful space has seating for 20, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 4, 30, 20, '2020-01-27 20:39:21', '2020-01-29 12:28:43'),
(29, 7000, 'storage/image/c2.jpg', 'This beautiful space has seating for 25, Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 4, 30, 25, '2020-01-27 21:12:52', '2020-01-29 12:28:59'),
(30, 4500, 'storage/image/meet4.jpg', 'This beautiful space has seating for 10,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 2, 10, 10, '2020-01-27 21:28:23', '2020-01-29 12:29:44'),
(31, 6500, 'storage/image/meet8.jpg', 'This beautiful space has seating for 10, Whiteboard,Television, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 2, 20, 10, '2020-01-27 21:35:23', '2020-01-29 12:30:33'),
(32, 5500, 'storage/image/meeting-room.png', 'This beautiful space has seating for 8,  Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 2, 10, 8, '2020-01-27 21:37:01', '2020-01-29 12:30:51'),
(33, 6500, 'storage/image/c6.jpg', 'This beautiful space has seating for 8,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 5, 20, 8, '2020-01-27 21:42:04', '2020-01-29 12:31:05'),
(34, 7000, 'storage/image/room-1.jpg', 'This beautiful space has seating for 15,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 5, 20, 15, '2020-01-27 21:46:10', '2020-01-29 12:31:27'),
(35, 7000, 'storage/image/MG_5527E.jpg', 'This beautiful space has seating for 15, Television, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 5, 30, 15, '2020-01-27 21:48:35', '2020-01-29 12:31:48'),
(36, 6000, 'storage/image/nddgycnzwpj.jpeg', 'This beautiful space has seating for 12, a Whiteboard,Television, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 5, 20, 12, '2020-01-27 21:51:38', '2020-01-29 12:32:04'),
(37, 7000, 'storage/image/class6.jpg', 'This beautiful space has seating for 15,Projector,Television, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 4, 40, 15, '2020-01-27 21:53:29', '2020-01-29 12:33:32'),
(38, 6000, 'storage/image/class7.jpg', 'This beautiful space has seating for 15,  Whiteboard, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 8, 30, 15, '2020-01-27 21:54:28', '2020-01-29 12:33:50'),
(39, 6000, 'storage/image/class8.jpg', 'This beautiful space has seating for 30, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 8, 40, 30, '2020-01-27 21:55:29', '2020-01-29 12:34:07'),
(40, 6000, 'storage/image/class9.jpg', 'This beautiful space has seating for 20, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 8, 30, 20, '2020-01-27 21:56:05', '2020-01-29 12:34:25'),
(41, 5500, 'storage/image/class10.jpg', 'This beautiful space has seating for 20, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 8, 30, 20, '2020-01-27 21:57:17', '2020-01-29 12:34:45'),
(42, 5500, 'storage/image/class15.jpg', 'This beautiful space has seating for 20,  Whiteboard,Television, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 6, 30, 20, '2020-01-27 21:58:07', '2020-01-29 12:35:00'),
(43, 7500, 'storage/image/class13.jpg', 'This beautiful space has seating for 35, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 6, 40, 35, '2020-01-27 21:58:48', '2020-01-29 12:35:17'),
(44, 5500, 'storage/image/class14.jpg', 'This beautiful space has seating for 25, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 6, 40, 25, '2020-01-27 21:59:44', '2020-01-29 12:35:39'),
(45, 6000, 'storage/image/class16.jpeg', 'This beautiful space has seating for 20, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 6, 30, 20, '2020-01-27 22:01:45', '2020-01-29 12:35:57'),
(46, 6500, 'storage/image/class17.jpg', 'This beautiful space has seating for 20, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 7, 30, 20, '2020-01-27 22:02:47', '2020-01-29 12:36:24'),
(47, 5500, 'storage/image/class19.jpg', 'This beautiful space has seating for 30, a Whiteboard, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 7, 30, 30, '2020-01-27 22:03:43', '2020-01-29 12:36:54'),
(48, 6000, 'storage/image/class25.jpg', 'This beautiful space has seating for 25, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 7, 40, 25, '2020-01-27 22:04:54', '2020-01-29 12:37:19'),
(49, 6000, 'storage/image/class26.jpeg', 'This beautiful space has seating for 20, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 4, 7, 30, 20, '2020-01-27 22:05:36', '2020-01-29 12:37:38'),
(50, 5500, 'storage/image/meet12.jpeg', 'This beautiful space has seating for 15, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 5, 25, 15, '2020-01-27 22:11:57', '2020-01-29 12:38:05'),
(51, 6500, 'storage/image/meet13.jpg', 'This beautiful space has seating for 20,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 4, 30, 20, '2020-01-27 22:13:36', '2020-01-29 12:41:32'),
(52, 7000, 'storage/image/meet14.jpg', 'This beautiful space has seating for 25,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 4, 30, 25, '2020-01-27 22:14:59', '2020-01-29 12:41:51'),
(53, 6000, 'storage/image/meet20.jpg', 'This beautiful space has seating for 10, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 4, 15, 10, '2020-01-27 22:16:05', '2020-01-29 12:42:26'),
(54, 6500, 'storage/image/meet23.jpg', 'This beautiful space has seating for 20, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 4, 30, 20, '2020-01-27 22:17:11', '2020-01-29 12:43:10'),
(55, 5500, 'storage/image/meet24.jpeg', 'This beautiful space has seating for 15, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 8, 20, 15, '2020-01-27 22:20:18', '2020-01-29 12:43:38'),
(56, 6000, 'storage/image/meet24.jpg', 'This beautiful space has seating for 20,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 8, 20, 20, '2020-01-27 22:21:34', '2020-01-29 12:48:28'),
(57, 6500, 'storage/image/meet25.jpg', 'This beautiful space has seating for 20,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 8, 40, 20, '2020-01-27 22:22:15', '2020-01-29 12:49:25'),
(58, 6000, 'storage/image/meet28.jpg', 'This beautiful space has seating for 10,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 8, 15, 10, '2020-01-27 22:23:26', '2020-01-29 12:49:53'),
(59, 7000, 'storage/image/meet29.jpg', 'This beautiful space has seating for 12,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 6, 15, 12, '2020-01-27 22:25:14', '2020-01-29 12:50:52'),
(60, 6500, 'storage/image/meet30.jpg', 'This beautiful space has seating for 10, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 6, 20, 10, '2020-01-27 22:26:03', '2020-01-29 12:51:10'),
(61, 6000, 'storage/image/meet31.jpg', 'This beautiful space has seating for 15, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 6, 25, 15, '2020-01-27 22:27:14', '2020-01-29 12:51:54'),
(62, 6500, 'storage/image/meet32.jpg', 'This beautiful space has seating for 15,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 6, 20, 15, '2020-01-27 22:28:10', '2020-01-29 12:52:10'),
(63, 5500, 'storage/image/meet35.jpg', 'This beautiful space has seating for 15,  Air Condition,Tables and Chairs to do your best brainstorming.', 2, 7, 25, 15, '2020-01-27 22:29:19', '2020-01-29 12:52:28'),
(64, 6000, 'storage/image/meet34.jpg', 'This beautiful space has seating for 15, Television, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 7, 20, 15, '2020-01-27 22:30:43', '2020-01-29 12:52:47'),
(65, 5500, 'storage/image/meet33.jpg', 'This beautiful space has seating for 10, Television, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 7, 20, 10, '2020-01-27 22:32:00', '2020-01-29 12:54:55'),
(66, 6500, 'storage/image/meet21.jpg', 'This beautiful space has seating for 20, a Whiteboard, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 7, 35, 20, '2020-01-27 22:33:50', '2020-01-29 12:55:13'),
(67, 50000, 'storage/image/event3.jpg', 'This beautiful space has seating for 100 , Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 2, 130, 100, '2020-01-27 22:38:27', '2020-01-29 12:57:59'),
(68, 60000, 'storage/image/e.jpg', 'This beautiful space has seating for 100,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 2, 120, 100, '2020-01-27 23:34:32', '2020-01-29 13:00:40'),
(69, 80000, 'storage/image/e4.jpg', 'This beautiful space has seating for 150, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 2, 160, 150, '2020-01-27 23:54:57', '2020-01-29 13:01:46'),
(70, 120000, 'storage/image/e5.jpg', 'This beautiful space has seating for 150,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 2, 200, 150, '2020-01-27 23:55:53', '2020-01-29 13:04:38'),
(71, 70000, 'storage/image/e6.jpg', 'This beautiful space has seating for 50, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 2, 100, 50, '2020-01-27 23:56:52', '2020-01-29 13:08:55'),
(72, 150000, 'storage/image/e10.jpg', 'This beautiful space has seating for 150, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 5, 180, 150, '2020-01-27 23:57:38', '2020-01-29 13:09:24'),
(73, 90000, 'storage/image/e11.jpg', 'This beautiful space has seating for 50,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 5, 80, 50, '2020-01-27 23:58:41', '2020-01-29 13:12:26'),
(74, 150000, 'storage/image/e12.jpg', 'This beautiful space has seating for 100 ,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 5, 120, 100, '2020-01-27 23:59:27', '2020-01-29 13:12:46'),
(75, 130000, 'storage/image/e13.jpg', 'This beautiful space has seating for 100, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 5, 150, 100, '2020-01-28 00:00:18', '2020-01-29 13:13:07'),
(76, 140000, 'storage/image/e14.jpg', 'This beautiful space has seating for 70,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 2, 5, 100, 70, '2020-01-28 00:01:00', '2020-01-29 13:13:27'),
(77, 170000, 'storage/image/e15.jpg', 'This beautiful space has seating for 200, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 4, 250, 200, '2020-01-28 00:02:19', '2020-01-29 13:13:46'),
(78, 180000, 'storage/image/e17.jpg', 'This beautiful space has seating for 100, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 4, 150, 100, '2020-01-28 00:03:02', '2020-01-29 13:14:05'),
(79, 130000, 'storage/image/e19.jpg', 'This beautiful space has seating for 100, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 4, 120, 100, '2020-01-28 00:03:57', '2020-01-29 13:14:32'),
(80, 120000, 'storage/image/e20.jpg', 'This beautiful space has seating for 100, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 4, 130, 100, '2020-01-28 00:05:09', '2020-01-29 13:14:55'),
(81, 100000, 'storage/image/e23.jpg', 'This beautiful space has seating for 100, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 4, 120, 100, '2020-01-28 00:06:26', '2020-01-29 13:15:15'),
(82, 180000, 'storage/image/e25.jpg', 'This beautiful space has seating for 150, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 8, 200, 150, '2020-01-28 00:07:10', '2020-01-29 13:15:34'),
(83, 130000, 'storage/image/e26.jpg', 'This beautiful space has seating for 150, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 8, 200, 150, '2020-01-28 00:07:53', '2020-01-29 13:15:52'),
(84, 90000, 'storage/image/e27.jpg', 'This beautiful space has seating for 80, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 8, 120, 80, '2020-01-28 00:08:53', '2020-01-29 13:16:16'),
(85, 150000, 'storage/image/e28.jpg', 'This beautiful space has seating for 100, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 8, 150, 100, '2020-01-28 00:10:33', '2020-01-29 13:16:33'),
(86, 170000, 'storage/image/e29.jpg', 'This beautiful space has seating for 150, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 8, 200, 150, '2020-01-28 00:11:13', '2020-01-29 13:17:01'),
(87, 70000, 'storage/image/event4.jpg', 'This beautiful space has seating for 70, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 6, 100, 70, '2020-01-28 00:12:20', '2020-01-29 13:17:20'),
(88, 70000, 'storage/image/event6.jpg', 'This beautiful space has seating for 50, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 6, 100, 50, '2020-01-28 00:12:56', '2020-01-29 13:17:48'),
(89, 120000, 'storage/image/event7.jpg', 'This beautiful space has seating for 100, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 6, 150, 100, '2020-01-28 00:13:37', '2020-01-29 13:18:07'),
(90, 50000, 'storage/image/event8.jpg', 'This beautiful space has seating for 60,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 6, 100, 60, '2020-01-28 00:14:16', '2020-01-29 13:18:27'),
(91, 80000, 'storage/image/event10.jpg', 'This beautiful space has seating for 100,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 6, 120, 100, '2020-01-28 00:14:50', '2020-01-29 13:18:42'),
(92, 70000, 'storage/image/event11.jpg', 'This beautiful space has seating for 70,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 7, 100, 70, '2020-01-28 00:15:47', '2020-01-29 13:18:57'),
(93, 100000, 'storage/image/event12.jpg', 'This beautiful space has seating for 100, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 7, 150, 100, '2020-01-28 00:16:22', '2020-01-29 13:19:17'),
(94, 90000, 'storage/image/e.jpg', 'This beautiful space has seating for 100, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 7, 120, 100, '2020-01-28 00:17:11', '2020-01-29 13:19:41'),
(95, 80000, 'storage/image/e3.jpg', 'This beautiful space has seating for 100, a Whiteboard,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 7, 150, 100, '2020-01-28 00:18:02', '2020-01-29 13:20:08'),
(96, 120000, 'storage/image/e9.jpg', 'This beautiful space has seating for 150, Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 7, 200, 150, '2020-01-28 00:18:42', '2020-01-29 13:20:31'),
(97, 120000, 'storage/image/e18.jpg', 'This beautiful space has seating for 150,Projector, Air Condition,Tables and Chairs to do your best brainstorming.', 5, 2, 180, 150, '2020-01-28 00:21:06', '2020-01-29 13:20:46'),
(102, 200000, 'storage/image/s1.jpg', 'very', 2, 2, 45, 34, '2020-01-30 04:09:59', '2020-01-30 04:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `roomtypes`
--

CREATE TABLE `roomtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roomtypes`
--

INSERT INTO `roomtypes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Meeting Room', '2020-01-24 04:39:29', '2020-01-28 21:39:06'),
(4, 'Class Room', '2020-01-24 11:04:31', '2020-01-27 15:02:40'),
(5, 'Event Room', '2020-01-27 15:03:32', '2020-01-27 15:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `room_service`
--

CREATE TABLE `room_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_service`
--

INSERT INTO `room_service` (`id`, `room_id`, `service_id`, `created_at`, `updated_at`) VALUES
(35, 4, 2, '2020-01-27 15:16:21', '2020-01-27 15:16:21'),
(36, 4, 3, '2020-01-27 15:16:21', '2020-01-27 15:16:21'),
(37, 4, 5, '2020-01-27 15:16:21', '2020-01-27 15:16:21'),
(38, 4, 6, '2020-01-27 15:16:21', '2020-01-27 15:16:21'),
(39, 4, 8, '2020-01-27 15:16:21', '2020-01-27 15:16:21'),
(40, 7, 3, '2020-01-27 15:17:59', '2020-01-27 15:17:59'),
(41, 7, 4, '2020-01-27 15:17:59', '2020-01-27 15:17:59'),
(42, 7, 5, '2020-01-27 15:17:59', '2020-01-27 15:17:59'),
(43, 7, 6, '2020-01-27 15:17:59', '2020-01-27 15:17:59'),
(44, 7, 8, '2020-01-27 15:17:59', '2020-01-27 15:17:59'),
(51, 8, 2, '2020-01-27 15:21:42', '2020-01-27 15:21:42'),
(52, 8, 3, '2020-01-27 15:21:42', '2020-01-27 15:21:42'),
(53, 8, 4, '2020-01-27 15:21:42', '2020-01-27 15:21:42'),
(54, 8, 5, '2020-01-27 15:21:42', '2020-01-27 15:21:42'),
(55, 8, 6, '2020-01-27 15:21:42', '2020-01-27 15:21:42'),
(56, 8, 8, '2020-01-27 15:21:42', '2020-01-27 15:21:42'),
(72, 11, 2, '2020-01-27 15:25:58', '2020-01-27 15:25:58'),
(73, 11, 3, '2020-01-27 15:25:58', '2020-01-27 15:25:58'),
(74, 11, 5, '2020-01-27 15:25:58', '2020-01-27 15:25:58'),
(75, 11, 6, '2020-01-27 15:25:58', '2020-01-27 15:25:58'),
(76, 11, 8, '2020-01-27 15:25:58', '2020-01-27 15:25:58'),
(77, 12, 2, '2020-01-27 15:27:12', '2020-01-27 15:27:12'),
(78, 12, 3, '2020-01-27 15:27:12', '2020-01-27 15:27:12'),
(79, 12, 5, '2020-01-27 15:27:12', '2020-01-27 15:27:12'),
(80, 12, 6, '2020-01-27 15:27:12', '2020-01-27 15:27:12'),
(81, 12, 8, '2020-01-27 15:27:12', '2020-01-27 15:27:12'),
(82, 13, 3, '2020-01-27 15:29:59', '2020-01-27 15:29:59'),
(83, 13, 5, '2020-01-27 15:29:59', '2020-01-27 15:29:59'),
(84, 13, 6, '2020-01-27 15:29:59', '2020-01-27 15:29:59'),
(85, 13, 8, '2020-01-27 15:29:59', '2020-01-27 15:29:59'),
(86, 13, 9, '2020-01-27 15:29:59', '2020-01-27 15:29:59'),
(87, 14, 2, '2020-01-27 15:31:35', '2020-01-27 15:31:35'),
(88, 14, 3, '2020-01-27 15:31:35', '2020-01-27 15:31:35'),
(89, 14, 5, '2020-01-27 15:31:35', '2020-01-27 15:31:35'),
(90, 14, 6, '2020-01-27 15:31:35', '2020-01-27 15:31:35'),
(91, 14, 8, '2020-01-27 15:31:35', '2020-01-27 15:31:35'),
(92, 15, 3, '2020-01-27 15:33:26', '2020-01-27 15:33:26'),
(93, 15, 5, '2020-01-27 15:33:26', '2020-01-27 15:33:26'),
(94, 15, 6, '2020-01-27 15:33:26', '2020-01-27 15:33:26'),
(95, 15, 8, '2020-01-27 15:33:26', '2020-01-27 15:33:26'),
(96, 16, 2, '2020-01-27 15:34:42', '2020-01-27 15:34:42'),
(97, 16, 3, '2020-01-27 15:34:42', '2020-01-27 15:34:42'),
(98, 16, 5, '2020-01-27 15:34:42', '2020-01-27 15:34:42'),
(99, 16, 6, '2020-01-27 15:34:42', '2020-01-27 15:34:42'),
(100, 16, 8, '2020-01-27 15:34:42', '2020-01-27 15:34:42'),
(101, 10, 2, '2020-01-27 15:39:24', '2020-01-27 15:39:24'),
(102, 10, 3, '2020-01-27 15:39:24', '2020-01-27 15:39:24'),
(103, 10, 5, '2020-01-27 15:39:24', '2020-01-27 15:39:24'),
(104, 10, 6, '2020-01-27 15:39:24', '2020-01-27 15:39:24'),
(105, 10, 8, '2020-01-27 15:39:24', '2020-01-27 15:39:24'),
(106, 17, 2, '2020-01-27 15:50:41', '2020-01-27 15:50:41'),
(107, 17, 4, '2020-01-27 15:50:41', '2020-01-27 15:50:41'),
(108, 17, 5, '2020-01-27 15:50:41', '2020-01-27 15:50:41'),
(109, 17, 6, '2020-01-27 15:50:41', '2020-01-27 15:50:41'),
(110, 17, 8, '2020-01-27 15:50:41', '2020-01-27 15:50:41'),
(116, 19, 2, '2020-01-27 15:54:36', '2020-01-27 15:54:36'),
(117, 19, 3, '2020-01-27 15:54:36', '2020-01-27 15:54:36'),
(118, 19, 5, '2020-01-27 15:54:36', '2020-01-27 15:54:36'),
(119, 19, 6, '2020-01-27 15:54:36', '2020-01-27 15:54:36'),
(120, 19, 8, '2020-01-27 15:54:36', '2020-01-27 15:54:36'),
(121, 20, 2, '2020-01-27 15:57:22', '2020-01-27 15:57:22'),
(122, 20, 3, '2020-01-27 15:57:22', '2020-01-27 15:57:22'),
(123, 20, 5, '2020-01-27 15:57:22', '2020-01-27 15:57:22'),
(124, 20, 6, '2020-01-27 15:57:22', '2020-01-27 15:57:22'),
(125, 20, 8, '2020-01-27 15:57:22', '2020-01-27 15:57:22'),
(132, 21, 2, '2020-01-27 20:10:39', '2020-01-27 20:10:39'),
(133, 21, 3, '2020-01-27 20:10:39', '2020-01-27 20:10:39'),
(134, 21, 4, '2020-01-27 20:10:39', '2020-01-27 20:10:39'),
(135, 21, 5, '2020-01-27 20:10:39', '2020-01-27 20:10:39'),
(136, 21, 6, '2020-01-27 20:10:39', '2020-01-27 20:10:39'),
(137, 21, 8, '2020-01-27 20:10:39', '2020-01-27 20:10:39'),
(138, 22, 2, '2020-01-27 20:12:06', '2020-01-27 20:12:06'),
(139, 22, 3, '2020-01-27 20:12:06', '2020-01-27 20:12:06'),
(140, 22, 4, '2020-01-27 20:12:06', '2020-01-27 20:12:06'),
(141, 22, 5, '2020-01-27 20:12:06', '2020-01-27 20:12:06'),
(142, 22, 6, '2020-01-27 20:12:06', '2020-01-27 20:12:06'),
(143, 22, 8, '2020-01-27 20:12:06', '2020-01-27 20:12:06'),
(144, 23, 3, '2020-01-27 20:16:21', '2020-01-27 20:16:21'),
(145, 23, 5, '2020-01-27 20:16:21', '2020-01-27 20:16:21'),
(146, 23, 6, '2020-01-27 20:16:21', '2020-01-27 20:16:21'),
(147, 23, 8, '2020-01-27 20:16:21', '2020-01-27 20:16:21'),
(148, 23, 9, '2020-01-27 20:16:21', '2020-01-27 20:16:21'),
(149, 24, 2, '2020-01-27 20:25:44', '2020-01-27 20:25:44'),
(150, 24, 3, '2020-01-27 20:25:44', '2020-01-27 20:25:44'),
(151, 24, 5, '2020-01-27 20:25:44', '2020-01-27 20:25:44'),
(152, 24, 6, '2020-01-27 20:25:44', '2020-01-27 20:25:44'),
(153, 24, 8, '2020-01-27 20:25:44', '2020-01-27 20:25:44'),
(154, 25, 3, '2020-01-27 20:27:14', '2020-01-27 20:27:14'),
(155, 25, 5, '2020-01-27 20:27:14', '2020-01-27 20:27:14'),
(156, 25, 6, '2020-01-27 20:27:14', '2020-01-27 20:27:14'),
(157, 25, 8, '2020-01-27 20:27:14', '2020-01-27 20:27:14'),
(158, 25, 9, '2020-01-27 20:27:14', '2020-01-27 20:27:14'),
(165, 27, 2, '2020-01-27 20:32:41', '2020-01-27 20:32:41'),
(166, 27, 3, '2020-01-27 20:32:41', '2020-01-27 20:32:41'),
(167, 27, 4, '2020-01-27 20:32:41', '2020-01-27 20:32:41'),
(168, 27, 5, '2020-01-27 20:32:41', '2020-01-27 20:32:41'),
(169, 27, 6, '2020-01-27 20:32:41', '2020-01-27 20:32:41'),
(170, 27, 8, '2020-01-27 20:32:41', '2020-01-27 20:32:41'),
(177, 28, 2, '2020-01-27 20:44:05', '2020-01-27 20:44:05'),
(178, 28, 3, '2020-01-27 20:44:05', '2020-01-27 20:44:05'),
(179, 28, 4, '2020-01-27 20:44:05', '2020-01-27 20:44:05'),
(180, 28, 5, '2020-01-27 20:44:05', '2020-01-27 20:44:05'),
(181, 28, 6, '2020-01-27 20:44:05', '2020-01-27 20:44:05'),
(182, 28, 8, '2020-01-27 20:44:05', '2020-01-27 20:44:05'),
(183, 26, 2, '2020-01-27 20:53:20', '2020-01-27 20:53:20'),
(184, 26, 3, '2020-01-27 20:53:20', '2020-01-27 20:53:20'),
(185, 26, 4, '2020-01-27 20:53:20', '2020-01-27 20:53:20'),
(186, 26, 5, '2020-01-27 20:53:20', '2020-01-27 20:53:20'),
(187, 26, 6, '2020-01-27 20:53:20', '2020-01-27 20:53:20'),
(188, 26, 8, '2020-01-27 20:53:20', '2020-01-27 20:53:20'),
(189, 29, 2, '2020-01-27 21:12:52', '2020-01-27 21:12:52'),
(190, 29, 3, '2020-01-27 21:12:52', '2020-01-27 21:12:52'),
(191, 29, 4, '2020-01-27 21:12:52', '2020-01-27 21:12:52'),
(192, 29, 5, '2020-01-27 21:12:52', '2020-01-27 21:12:52'),
(193, 29, 6, '2020-01-27 21:12:52', '2020-01-27 21:12:52'),
(194, 29, 8, '2020-01-27 21:12:52', '2020-01-27 21:12:52'),
(212, 30, 2, '2020-01-27 21:37:39', '2020-01-27 21:37:39'),
(213, 30, 3, '2020-01-27 21:37:39', '2020-01-27 21:37:39'),
(214, 30, 5, '2020-01-27 21:37:39', '2020-01-27 21:37:39'),
(215, 30, 6, '2020-01-27 21:37:39', '2020-01-27 21:37:39'),
(216, 30, 8, '2020-01-27 21:37:39', '2020-01-27 21:37:39'),
(217, 31, 3, '2020-01-27 21:38:36', '2020-01-27 21:38:36'),
(218, 31, 4, '2020-01-27 21:38:36', '2020-01-27 21:38:36'),
(219, 31, 5, '2020-01-27 21:38:36', '2020-01-27 21:38:36'),
(220, 31, 6, '2020-01-27 21:38:36', '2020-01-27 21:38:36'),
(221, 31, 8, '2020-01-27 21:38:36', '2020-01-27 21:38:36'),
(222, 31, 9, '2020-01-27 21:38:36', '2020-01-27 21:38:36'),
(223, 32, 2, '2020-01-27 21:39:07', '2020-01-27 21:39:07'),
(224, 32, 3, '2020-01-27 21:39:07', '2020-01-27 21:39:07'),
(225, 32, 4, '2020-01-27 21:39:07', '2020-01-27 21:39:07'),
(226, 32, 5, '2020-01-27 21:39:07', '2020-01-27 21:39:07'),
(227, 32, 6, '2020-01-27 21:39:07', '2020-01-27 21:39:07'),
(228, 32, 8, '2020-01-27 21:39:07', '2020-01-27 21:39:07'),
(234, 34, 3, '2020-01-27 21:46:10', '2020-01-27 21:46:10'),
(235, 34, 5, '2020-01-27 21:46:10', '2020-01-27 21:46:10'),
(236, 34, 6, '2020-01-27 21:46:10', '2020-01-27 21:46:10'),
(237, 34, 8, '2020-01-27 21:46:10', '2020-01-27 21:46:10'),
(242, 35, 3, '2020-01-27 21:49:00', '2020-01-27 21:49:00'),
(243, 35, 5, '2020-01-27 21:49:00', '2020-01-27 21:49:00'),
(244, 35, 6, '2020-01-27 21:49:00', '2020-01-27 21:49:00'),
(245, 35, 8, '2020-01-27 21:49:00', '2020-01-27 21:49:00'),
(246, 35, 9, '2020-01-27 21:49:00', '2020-01-27 21:49:00'),
(252, 33, 2, '2020-01-27 21:49:35', '2020-01-27 21:49:35'),
(253, 33, 3, '2020-01-27 21:49:35', '2020-01-27 21:49:35'),
(254, 33, 5, '2020-01-27 21:49:35', '2020-01-27 21:49:35'),
(255, 33, 6, '2020-01-27 21:49:35', '2020-01-27 21:49:35'),
(256, 33, 8, '2020-01-27 21:49:35', '2020-01-27 21:49:35'),
(257, 36, 3, '2020-01-27 21:51:38', '2020-01-27 21:51:38'),
(258, 36, 4, '2020-01-27 21:51:38', '2020-01-27 21:51:38'),
(259, 36, 5, '2020-01-27 21:51:38', '2020-01-27 21:51:38'),
(260, 36, 6, '2020-01-27 21:51:38', '2020-01-27 21:51:38'),
(261, 36, 8, '2020-01-27 21:51:38', '2020-01-27 21:51:38'),
(262, 36, 9, '2020-01-27 21:51:38', '2020-01-27 21:51:38'),
(263, 37, 2, '2020-01-27 21:53:29', '2020-01-27 21:53:29'),
(264, 37, 3, '2020-01-27 21:53:29', '2020-01-27 21:53:29'),
(265, 37, 5, '2020-01-27 21:53:29', '2020-01-27 21:53:29'),
(266, 37, 6, '2020-01-27 21:53:29', '2020-01-27 21:53:29'),
(267, 37, 8, '2020-01-27 21:53:29', '2020-01-27 21:53:29'),
(268, 37, 9, '2020-01-27 21:53:29', '2020-01-27 21:53:29'),
(269, 38, 3, '2020-01-27 21:54:28', '2020-01-27 21:54:28'),
(270, 38, 4, '2020-01-27 21:54:28', '2020-01-27 21:54:28'),
(271, 38, 5, '2020-01-27 21:54:28', '2020-01-27 21:54:28'),
(272, 38, 6, '2020-01-27 21:54:28', '2020-01-27 21:54:28'),
(273, 38, 8, '2020-01-27 21:54:28', '2020-01-27 21:54:28'),
(274, 39, 2, '2020-01-27 21:55:29', '2020-01-27 21:55:29'),
(275, 39, 3, '2020-01-27 21:55:29', '2020-01-27 21:55:29'),
(276, 39, 4, '2020-01-27 21:55:29', '2020-01-27 21:55:29'),
(277, 39, 5, '2020-01-27 21:55:29', '2020-01-27 21:55:29'),
(278, 39, 6, '2020-01-27 21:55:29', '2020-01-27 21:55:29'),
(279, 39, 8, '2020-01-27 21:55:29', '2020-01-27 21:55:29'),
(280, 40, 2, '2020-01-27 21:56:06', '2020-01-27 21:56:06'),
(281, 40, 3, '2020-01-27 21:56:06', '2020-01-27 21:56:06'),
(282, 40, 4, '2020-01-27 21:56:06', '2020-01-27 21:56:06'),
(283, 40, 5, '2020-01-27 21:56:06', '2020-01-27 21:56:06'),
(284, 40, 6, '2020-01-27 21:56:06', '2020-01-27 21:56:06'),
(285, 40, 8, '2020-01-27 21:56:06', '2020-01-27 21:56:06'),
(286, 41, 2, '2020-01-27 21:57:18', '2020-01-27 21:57:18'),
(287, 41, 3, '2020-01-27 21:57:18', '2020-01-27 21:57:18'),
(288, 41, 4, '2020-01-27 21:57:18', '2020-01-27 21:57:18'),
(289, 41, 5, '2020-01-27 21:57:18', '2020-01-27 21:57:18'),
(290, 41, 6, '2020-01-27 21:57:18', '2020-01-27 21:57:18'),
(291, 41, 8, '2020-01-27 21:57:18', '2020-01-27 21:57:18'),
(298, 43, 2, '2020-01-27 21:58:48', '2020-01-27 21:58:48'),
(299, 43, 3, '2020-01-27 21:58:48', '2020-01-27 21:58:48'),
(300, 43, 4, '2020-01-27 21:58:48', '2020-01-27 21:58:48'),
(301, 43, 5, '2020-01-27 21:58:48', '2020-01-27 21:58:48'),
(302, 43, 6, '2020-01-27 21:58:48', '2020-01-27 21:58:48'),
(303, 43, 8, '2020-01-27 21:58:48', '2020-01-27 21:58:48'),
(304, 44, 2, '2020-01-27 21:59:44', '2020-01-27 21:59:44'),
(305, 44, 3, '2020-01-27 21:59:44', '2020-01-27 21:59:44'),
(306, 44, 4, '2020-01-27 21:59:44', '2020-01-27 21:59:44'),
(307, 44, 5, '2020-01-27 21:59:44', '2020-01-27 21:59:44'),
(308, 44, 6, '2020-01-27 21:59:44', '2020-01-27 21:59:44'),
(309, 44, 8, '2020-01-27 21:59:44', '2020-01-27 21:59:44'),
(310, 42, 3, '2020-01-27 22:00:48', '2020-01-27 22:00:48'),
(311, 42, 4, '2020-01-27 22:00:48', '2020-01-27 22:00:48'),
(312, 42, 5, '2020-01-27 22:00:48', '2020-01-27 22:00:48'),
(313, 42, 6, '2020-01-27 22:00:48', '2020-01-27 22:00:48'),
(314, 42, 8, '2020-01-27 22:00:48', '2020-01-27 22:00:48'),
(315, 42, 9, '2020-01-27 22:00:48', '2020-01-27 22:00:48'),
(316, 45, 2, '2020-01-27 22:01:45', '2020-01-27 22:01:45'),
(317, 45, 3, '2020-01-27 22:01:45', '2020-01-27 22:01:45'),
(318, 45, 4, '2020-01-27 22:01:45', '2020-01-27 22:01:45'),
(319, 45, 5, '2020-01-27 22:01:45', '2020-01-27 22:01:45'),
(320, 45, 6, '2020-01-27 22:01:45', '2020-01-27 22:01:45'),
(321, 45, 8, '2020-01-27 22:01:45', '2020-01-27 22:01:45'),
(322, 46, 2, '2020-01-27 22:02:47', '2020-01-27 22:02:47'),
(323, 46, 3, '2020-01-27 22:02:47', '2020-01-27 22:02:47'),
(324, 46, 5, '2020-01-27 22:02:47', '2020-01-27 22:02:47'),
(325, 46, 6, '2020-01-27 22:02:47', '2020-01-27 22:02:47'),
(326, 46, 8, '2020-01-27 22:02:47', '2020-01-27 22:02:47'),
(327, 47, 3, '2020-01-27 22:03:43', '2020-01-27 22:03:43'),
(328, 47, 4, '2020-01-27 22:03:43', '2020-01-27 22:03:43'),
(329, 47, 5, '2020-01-27 22:03:43', '2020-01-27 22:03:43'),
(330, 47, 6, '2020-01-27 22:03:43', '2020-01-27 22:03:43'),
(331, 47, 8, '2020-01-27 22:03:43', '2020-01-27 22:03:43'),
(332, 48, 2, '2020-01-27 22:04:54', '2020-01-27 22:04:54'),
(333, 48, 3, '2020-01-27 22:04:54', '2020-01-27 22:04:54'),
(334, 48, 4, '2020-01-27 22:04:54', '2020-01-27 22:04:54'),
(335, 48, 5, '2020-01-27 22:04:54', '2020-01-27 22:04:54'),
(336, 48, 6, '2020-01-27 22:04:54', '2020-01-27 22:04:54'),
(337, 48, 8, '2020-01-27 22:04:54', '2020-01-27 22:04:54'),
(338, 49, 2, '2020-01-27 22:05:37', '2020-01-27 22:05:37'),
(339, 49, 3, '2020-01-27 22:05:37', '2020-01-27 22:05:37'),
(340, 49, 4, '2020-01-27 22:05:37', '2020-01-27 22:05:37'),
(341, 49, 5, '2020-01-27 22:05:37', '2020-01-27 22:05:37'),
(342, 49, 6, '2020-01-27 22:05:37', '2020-01-27 22:05:37'),
(343, 49, 8, '2020-01-27 22:05:37', '2020-01-27 22:05:37'),
(344, 9, 2, '2020-01-27 22:07:49', '2020-01-27 22:07:49'),
(345, 9, 3, '2020-01-27 22:07:49', '2020-01-27 22:07:49'),
(346, 9, 4, '2020-01-27 22:07:49', '2020-01-27 22:07:49'),
(347, 9, 5, '2020-01-27 22:07:49', '2020-01-27 22:07:49'),
(348, 9, 6, '2020-01-27 22:07:49', '2020-01-27 22:07:49'),
(349, 9, 8, '2020-01-27 22:07:49', '2020-01-27 22:07:49'),
(350, 18, 3, '2020-01-27 22:09:08', '2020-01-27 22:09:08'),
(351, 18, 4, '2020-01-27 22:09:08', '2020-01-27 22:09:08'),
(352, 18, 5, '2020-01-27 22:09:08', '2020-01-27 22:09:08'),
(353, 18, 6, '2020-01-27 22:09:08', '2020-01-27 22:09:08'),
(354, 18, 8, '2020-01-27 22:09:08', '2020-01-27 22:09:08'),
(355, 18, 9, '2020-01-27 22:09:08', '2020-01-27 22:09:08'),
(356, 50, 2, '2020-01-27 22:11:58', '2020-01-27 22:11:58'),
(357, 50, 3, '2020-01-27 22:11:58', '2020-01-27 22:11:58'),
(358, 50, 5, '2020-01-27 22:11:58', '2020-01-27 22:11:58'),
(359, 50, 6, '2020-01-27 22:11:58', '2020-01-27 22:11:58'),
(360, 50, 8, '2020-01-27 22:11:58', '2020-01-27 22:11:58'),
(361, 51, 2, '2020-01-27 22:13:36', '2020-01-27 22:13:36'),
(362, 51, 3, '2020-01-27 22:13:36', '2020-01-27 22:13:36'),
(363, 51, 5, '2020-01-27 22:13:36', '2020-01-27 22:13:36'),
(364, 51, 6, '2020-01-27 22:13:36', '2020-01-27 22:13:36'),
(365, 51, 8, '2020-01-27 22:13:36', '2020-01-27 22:13:36'),
(366, 52, 2, '2020-01-27 22:14:59', '2020-01-27 22:14:59'),
(367, 52, 3, '2020-01-27 22:14:59', '2020-01-27 22:14:59'),
(368, 52, 5, '2020-01-27 22:14:59', '2020-01-27 22:14:59'),
(369, 52, 6, '2020-01-27 22:14:59', '2020-01-27 22:14:59'),
(370, 52, 8, '2020-01-27 22:14:59', '2020-01-27 22:14:59'),
(371, 53, 3, '2020-01-27 22:16:05', '2020-01-27 22:16:05'),
(372, 53, 5, '2020-01-27 22:16:05', '2020-01-27 22:16:05'),
(373, 53, 6, '2020-01-27 22:16:05', '2020-01-27 22:16:05'),
(374, 53, 8, '2020-01-27 22:16:05', '2020-01-27 22:16:05'),
(375, 54, 2, '2020-01-27 22:17:11', '2020-01-27 22:17:11'),
(376, 54, 3, '2020-01-27 22:17:11', '2020-01-27 22:17:11'),
(377, 54, 4, '2020-01-27 22:17:11', '2020-01-27 22:17:11'),
(378, 54, 5, '2020-01-27 22:17:11', '2020-01-27 22:17:11'),
(379, 54, 6, '2020-01-27 22:17:11', '2020-01-27 22:17:11'),
(380, 54, 8, '2020-01-27 22:17:11', '2020-01-27 22:17:11'),
(381, 55, 2, '2020-01-27 22:20:18', '2020-01-27 22:20:18'),
(382, 55, 3, '2020-01-27 22:20:18', '2020-01-27 22:20:18'),
(383, 55, 5, '2020-01-27 22:20:18', '2020-01-27 22:20:18'),
(384, 55, 6, '2020-01-27 22:20:18', '2020-01-27 22:20:18'),
(385, 55, 8, '2020-01-27 22:20:18', '2020-01-27 22:20:18'),
(386, 56, 2, '2020-01-27 22:21:35', '2020-01-27 22:21:35'),
(387, 56, 3, '2020-01-27 22:21:35', '2020-01-27 22:21:35'),
(388, 56, 5, '2020-01-27 22:21:35', '2020-01-27 22:21:35'),
(389, 56, 6, '2020-01-27 22:21:35', '2020-01-27 22:21:35'),
(390, 56, 8, '2020-01-27 22:21:35', '2020-01-27 22:21:35'),
(391, 57, 2, '2020-01-27 22:22:15', '2020-01-27 22:22:15'),
(392, 57, 3, '2020-01-27 22:22:15', '2020-01-27 22:22:15'),
(393, 57, 5, '2020-01-27 22:22:15', '2020-01-27 22:22:15'),
(394, 57, 6, '2020-01-27 22:22:15', '2020-01-27 22:22:15'),
(395, 57, 8, '2020-01-27 22:22:15', '2020-01-27 22:22:15'),
(396, 58, 2, '2020-01-27 22:23:26', '2020-01-27 22:23:26'),
(397, 58, 3, '2020-01-27 22:23:26', '2020-01-27 22:23:26'),
(398, 58, 5, '2020-01-27 22:23:26', '2020-01-27 22:23:26'),
(399, 58, 6, '2020-01-27 22:23:26', '2020-01-27 22:23:26'),
(400, 58, 8, '2020-01-27 22:23:26', '2020-01-27 22:23:26'),
(401, 59, 2, '2020-01-27 22:25:15', '2020-01-27 22:25:15'),
(402, 59, 3, '2020-01-27 22:25:15', '2020-01-27 22:25:15'),
(403, 59, 5, '2020-01-27 22:25:15', '2020-01-27 22:25:15'),
(404, 59, 6, '2020-01-27 22:25:15', '2020-01-27 22:25:15'),
(405, 59, 8, '2020-01-27 22:25:15', '2020-01-27 22:25:15'),
(406, 60, 2, '2020-01-27 22:26:03', '2020-01-27 22:26:03'),
(407, 60, 3, '2020-01-27 22:26:03', '2020-01-27 22:26:03'),
(408, 60, 5, '2020-01-27 22:26:03', '2020-01-27 22:26:03'),
(409, 60, 6, '2020-01-27 22:26:03', '2020-01-27 22:26:03'),
(410, 60, 8, '2020-01-27 22:26:03', '2020-01-27 22:26:03'),
(411, 61, 2, '2020-01-27 22:27:14', '2020-01-27 22:27:14'),
(412, 61, 3, '2020-01-27 22:27:14', '2020-01-27 22:27:14'),
(413, 61, 5, '2020-01-27 22:27:14', '2020-01-27 22:27:14'),
(414, 61, 6, '2020-01-27 22:27:14', '2020-01-27 22:27:14'),
(415, 61, 8, '2020-01-27 22:27:14', '2020-01-27 22:27:14'),
(416, 62, 2, '2020-01-27 22:28:10', '2020-01-27 22:28:10'),
(417, 62, 3, '2020-01-27 22:28:10', '2020-01-27 22:28:10'),
(418, 62, 5, '2020-01-27 22:28:10', '2020-01-27 22:28:10'),
(419, 62, 6, '2020-01-27 22:28:10', '2020-01-27 22:28:10'),
(420, 62, 8, '2020-01-27 22:28:10', '2020-01-27 22:28:10'),
(421, 63, 3, '2020-01-27 22:29:19', '2020-01-27 22:29:19'),
(422, 63, 5, '2020-01-27 22:29:19', '2020-01-27 22:29:19'),
(423, 63, 6, '2020-01-27 22:29:19', '2020-01-27 22:29:19'),
(424, 63, 8, '2020-01-27 22:29:19', '2020-01-27 22:29:19'),
(425, 64, 3, '2020-01-27 22:30:43', '2020-01-27 22:30:43'),
(426, 64, 5, '2020-01-27 22:30:43', '2020-01-27 22:30:43'),
(427, 64, 6, '2020-01-27 22:30:43', '2020-01-27 22:30:43'),
(428, 64, 8, '2020-01-27 22:30:43', '2020-01-27 22:30:43'),
(429, 64, 9, '2020-01-27 22:30:43', '2020-01-27 22:30:43'),
(430, 65, 3, '2020-01-27 22:32:00', '2020-01-27 22:32:00'),
(431, 65, 5, '2020-01-27 22:32:00', '2020-01-27 22:32:00'),
(432, 65, 6, '2020-01-27 22:32:00', '2020-01-27 22:32:00'),
(433, 65, 8, '2020-01-27 22:32:00', '2020-01-27 22:32:00'),
(434, 65, 9, '2020-01-27 22:32:00', '2020-01-27 22:32:00'),
(435, 66, 3, '2020-01-27 22:33:50', '2020-01-27 22:33:50'),
(436, 66, 4, '2020-01-27 22:33:50', '2020-01-27 22:33:50'),
(437, 66, 5, '2020-01-27 22:33:50', '2020-01-27 22:33:50'),
(438, 66, 6, '2020-01-27 22:33:50', '2020-01-27 22:33:50'),
(439, 66, 8, '2020-01-27 22:33:50', '2020-01-27 22:33:50'),
(440, 67, 2, '2020-01-27 22:38:27', '2020-01-27 22:38:27'),
(441, 67, 3, '2020-01-27 22:38:27', '2020-01-27 22:38:27'),
(442, 67, 5, '2020-01-27 22:38:27', '2020-01-27 22:38:27'),
(443, 67, 6, '2020-01-27 22:38:27', '2020-01-27 22:38:27'),
(444, 67, 8, '2020-01-27 22:38:27', '2020-01-27 22:38:27'),
(445, 68, 2, '2020-01-27 23:34:32', '2020-01-27 23:34:32'),
(446, 68, 3, '2020-01-27 23:34:32', '2020-01-27 23:34:32'),
(447, 68, 5, '2020-01-27 23:34:32', '2020-01-27 23:34:32'),
(448, 68, 6, '2020-01-27 23:34:32', '2020-01-27 23:34:32'),
(449, 68, 8, '2020-01-27 23:34:32', '2020-01-27 23:34:32'),
(456, 69, 2, '2020-01-27 23:54:57', '2020-01-27 23:54:57'),
(457, 69, 3, '2020-01-27 23:54:57', '2020-01-27 23:54:57'),
(458, 69, 5, '2020-01-27 23:54:57', '2020-01-27 23:54:57'),
(459, 69, 6, '2020-01-27 23:54:57', '2020-01-27 23:54:57'),
(460, 69, 8, '2020-01-27 23:54:57', '2020-01-27 23:54:57'),
(461, 70, 2, '2020-01-27 23:55:53', '2020-01-27 23:55:53'),
(462, 70, 3, '2020-01-27 23:55:53', '2020-01-27 23:55:53'),
(463, 70, 5, '2020-01-27 23:55:53', '2020-01-27 23:55:53'),
(464, 70, 6, '2020-01-27 23:55:53', '2020-01-27 23:55:53'),
(465, 70, 8, '2020-01-27 23:55:53', '2020-01-27 23:55:53'),
(466, 71, 2, '2020-01-27 23:56:52', '2020-01-27 23:56:52'),
(467, 71, 3, '2020-01-27 23:56:52', '2020-01-27 23:56:52'),
(468, 71, 4, '2020-01-27 23:56:52', '2020-01-27 23:56:52'),
(469, 71, 5, '2020-01-27 23:56:52', '2020-01-27 23:56:52'),
(470, 71, 6, '2020-01-27 23:56:52', '2020-01-27 23:56:52'),
(471, 71, 8, '2020-01-27 23:56:52', '2020-01-27 23:56:52'),
(472, 72, 2, '2020-01-27 23:57:39', '2020-01-27 23:57:39'),
(473, 72, 3, '2020-01-27 23:57:39', '2020-01-27 23:57:39'),
(474, 72, 5, '2020-01-27 23:57:39', '2020-01-27 23:57:39'),
(475, 72, 6, '2020-01-27 23:57:39', '2020-01-27 23:57:39'),
(476, 72, 8, '2020-01-27 23:57:39', '2020-01-27 23:57:39'),
(477, 73, 2, '2020-01-27 23:58:42', '2020-01-27 23:58:42'),
(478, 73, 3, '2020-01-27 23:58:42', '2020-01-27 23:58:42'),
(479, 73, 5, '2020-01-27 23:58:42', '2020-01-27 23:58:42'),
(480, 73, 6, '2020-01-27 23:58:42', '2020-01-27 23:58:42'),
(481, 73, 8, '2020-01-27 23:58:42', '2020-01-27 23:58:42'),
(487, 75, 2, '2020-01-28 00:00:18', '2020-01-28 00:00:18'),
(488, 75, 3, '2020-01-28 00:00:18', '2020-01-28 00:00:18'),
(489, 75, 5, '2020-01-28 00:00:18', '2020-01-28 00:00:18'),
(490, 75, 6, '2020-01-28 00:00:18', '2020-01-28 00:00:18'),
(491, 75, 8, '2020-01-28 00:00:18', '2020-01-28 00:00:18'),
(492, 76, 2, '2020-01-28 00:01:00', '2020-01-28 00:01:00'),
(493, 76, 3, '2020-01-28 00:01:00', '2020-01-28 00:01:00'),
(494, 76, 5, '2020-01-28 00:01:00', '2020-01-28 00:01:00'),
(495, 76, 6, '2020-01-28 00:01:00', '2020-01-28 00:01:00'),
(496, 76, 8, '2020-01-28 00:01:00', '2020-01-28 00:01:00'),
(497, 77, 2, '2020-01-28 00:02:19', '2020-01-28 00:02:19'),
(498, 77, 3, '2020-01-28 00:02:19', '2020-01-28 00:02:19'),
(499, 77, 5, '2020-01-28 00:02:19', '2020-01-28 00:02:19'),
(500, 77, 6, '2020-01-28 00:02:19', '2020-01-28 00:02:19'),
(501, 77, 8, '2020-01-28 00:02:19', '2020-01-28 00:02:19'),
(502, 78, 2, '2020-01-28 00:03:03', '2020-01-28 00:03:03'),
(503, 78, 3, '2020-01-28 00:03:03', '2020-01-28 00:03:03'),
(504, 78, 5, '2020-01-28 00:03:03', '2020-01-28 00:03:03'),
(505, 78, 6, '2020-01-28 00:03:03', '2020-01-28 00:03:03'),
(506, 78, 8, '2020-01-28 00:03:03', '2020-01-28 00:03:03'),
(507, 79, 2, '2020-01-28 00:03:57', '2020-01-28 00:03:57'),
(508, 79, 3, '2020-01-28 00:03:57', '2020-01-28 00:03:57'),
(509, 79, 5, '2020-01-28 00:03:57', '2020-01-28 00:03:57'),
(510, 79, 6, '2020-01-28 00:03:57', '2020-01-28 00:03:57'),
(511, 79, 8, '2020-01-28 00:03:57', '2020-01-28 00:03:57'),
(512, 80, 2, '2020-01-28 00:05:09', '2020-01-28 00:05:09'),
(513, 80, 3, '2020-01-28 00:05:09', '2020-01-28 00:05:09'),
(514, 80, 4, '2020-01-28 00:05:09', '2020-01-28 00:05:09'),
(515, 80, 5, '2020-01-28 00:05:09', '2020-01-28 00:05:09'),
(516, 80, 6, '2020-01-28 00:05:09', '2020-01-28 00:05:09'),
(517, 80, 8, '2020-01-28 00:05:09', '2020-01-28 00:05:09'),
(518, 81, 2, '2020-01-28 00:06:27', '2020-01-28 00:06:27'),
(519, 81, 3, '2020-01-28 00:06:27', '2020-01-28 00:06:27'),
(520, 81, 5, '2020-01-28 00:06:27', '2020-01-28 00:06:27'),
(521, 81, 6, '2020-01-28 00:06:27', '2020-01-28 00:06:27'),
(522, 81, 8, '2020-01-28 00:06:27', '2020-01-28 00:06:27'),
(523, 82, 2, '2020-01-28 00:07:11', '2020-01-28 00:07:11'),
(524, 82, 3, '2020-01-28 00:07:11', '2020-01-28 00:07:11'),
(525, 82, 5, '2020-01-28 00:07:11', '2020-01-28 00:07:11'),
(526, 82, 6, '2020-01-28 00:07:11', '2020-01-28 00:07:11'),
(527, 82, 8, '2020-01-28 00:07:11', '2020-01-28 00:07:11'),
(533, 84, 2, '2020-01-28 00:08:53', '2020-01-28 00:08:53'),
(534, 84, 3, '2020-01-28 00:08:53', '2020-01-28 00:08:53'),
(535, 84, 5, '2020-01-28 00:08:53', '2020-01-28 00:08:53'),
(536, 84, 6, '2020-01-28 00:08:53', '2020-01-28 00:08:53'),
(537, 84, 8, '2020-01-28 00:08:53', '2020-01-28 00:08:53'),
(538, 83, 2, '2020-01-28 00:09:28', '2020-01-28 00:09:28'),
(539, 83, 3, '2020-01-28 00:09:28', '2020-01-28 00:09:28'),
(540, 83, 5, '2020-01-28 00:09:28', '2020-01-28 00:09:28'),
(541, 83, 6, '2020-01-28 00:09:28', '2020-01-28 00:09:28'),
(542, 83, 8, '2020-01-28 00:09:28', '2020-01-28 00:09:28'),
(543, 85, 2, '2020-01-28 00:10:33', '2020-01-28 00:10:33'),
(544, 85, 3, '2020-01-28 00:10:33', '2020-01-28 00:10:33'),
(545, 85, 4, '2020-01-28 00:10:33', '2020-01-28 00:10:33'),
(546, 85, 5, '2020-01-28 00:10:33', '2020-01-28 00:10:33'),
(547, 85, 6, '2020-01-28 00:10:33', '2020-01-28 00:10:33'),
(548, 85, 8, '2020-01-28 00:10:33', '2020-01-28 00:10:33'),
(549, 86, 2, '2020-01-28 00:11:13', '2020-01-28 00:11:13'),
(550, 86, 3, '2020-01-28 00:11:13', '2020-01-28 00:11:13'),
(551, 86, 4, '2020-01-28 00:11:13', '2020-01-28 00:11:13'),
(552, 86, 5, '2020-01-28 00:11:13', '2020-01-28 00:11:13'),
(553, 86, 6, '2020-01-28 00:11:13', '2020-01-28 00:11:13'),
(554, 86, 8, '2020-01-28 00:11:13', '2020-01-28 00:11:13'),
(555, 87, 2, '2020-01-28 00:12:20', '2020-01-28 00:12:20'),
(556, 87, 3, '2020-01-28 00:12:20', '2020-01-28 00:12:20'),
(557, 87, 4, '2020-01-28 00:12:20', '2020-01-28 00:12:20'),
(558, 87, 5, '2020-01-28 00:12:20', '2020-01-28 00:12:20'),
(559, 87, 6, '2020-01-28 00:12:20', '2020-01-28 00:12:20'),
(560, 87, 8, '2020-01-28 00:12:20', '2020-01-28 00:12:20'),
(561, 88, 2, '2020-01-28 00:12:56', '2020-01-28 00:12:56'),
(562, 88, 3, '2020-01-28 00:12:56', '2020-01-28 00:12:56'),
(563, 88, 5, '2020-01-28 00:12:56', '2020-01-28 00:12:56'),
(564, 88, 6, '2020-01-28 00:12:56', '2020-01-28 00:12:56'),
(565, 88, 8, '2020-01-28 00:12:56', '2020-01-28 00:12:56'),
(566, 89, 2, '2020-01-28 00:13:37', '2020-01-28 00:13:37'),
(567, 89, 3, '2020-01-28 00:13:37', '2020-01-28 00:13:37'),
(568, 89, 5, '2020-01-28 00:13:37', '2020-01-28 00:13:37'),
(569, 89, 6, '2020-01-28 00:13:37', '2020-01-28 00:13:37'),
(570, 89, 8, '2020-01-28 00:13:37', '2020-01-28 00:13:37'),
(571, 90, 2, '2020-01-28 00:14:16', '2020-01-28 00:14:16'),
(572, 90, 3, '2020-01-28 00:14:16', '2020-01-28 00:14:16'),
(573, 90, 5, '2020-01-28 00:14:16', '2020-01-28 00:14:16'),
(574, 90, 6, '2020-01-28 00:14:16', '2020-01-28 00:14:16'),
(575, 90, 8, '2020-01-28 00:14:16', '2020-01-28 00:14:16'),
(576, 91, 2, '2020-01-28 00:14:52', '2020-01-28 00:14:52'),
(577, 91, 3, '2020-01-28 00:14:52', '2020-01-28 00:14:52'),
(578, 91, 5, '2020-01-28 00:14:52', '2020-01-28 00:14:52'),
(579, 91, 6, '2020-01-28 00:14:52', '2020-01-28 00:14:52'),
(580, 91, 8, '2020-01-28 00:14:52', '2020-01-28 00:14:52'),
(581, 92, 2, '2020-01-28 00:15:48', '2020-01-28 00:15:48'),
(582, 92, 3, '2020-01-28 00:15:48', '2020-01-28 00:15:48'),
(583, 92, 5, '2020-01-28 00:15:48', '2020-01-28 00:15:48'),
(584, 92, 6, '2020-01-28 00:15:48', '2020-01-28 00:15:48'),
(585, 92, 8, '2020-01-28 00:15:48', '2020-01-28 00:15:48'),
(586, 93, 2, '2020-01-28 00:16:23', '2020-01-28 00:16:23'),
(587, 93, 3, '2020-01-28 00:16:23', '2020-01-28 00:16:23'),
(588, 93, 5, '2020-01-28 00:16:23', '2020-01-28 00:16:23'),
(589, 93, 6, '2020-01-28 00:16:23', '2020-01-28 00:16:23'),
(590, 93, 8, '2020-01-28 00:16:23', '2020-01-28 00:16:23'),
(596, 95, 2, '2020-01-28 00:18:02', '2020-01-28 00:18:02'),
(597, 95, 3, '2020-01-28 00:18:02', '2020-01-28 00:18:02'),
(598, 95, 4, '2020-01-28 00:18:02', '2020-01-28 00:18:02'),
(599, 95, 5, '2020-01-28 00:18:02', '2020-01-28 00:18:02'),
(600, 95, 6, '2020-01-28 00:18:02', '2020-01-28 00:18:02'),
(601, 95, 8, '2020-01-28 00:18:02', '2020-01-28 00:18:02'),
(602, 96, 2, '2020-01-28 00:18:43', '2020-01-28 00:18:43'),
(603, 96, 3, '2020-01-28 00:18:43', '2020-01-28 00:18:43'),
(604, 96, 5, '2020-01-28 00:18:43', '2020-01-28 00:18:43'),
(605, 96, 6, '2020-01-28 00:18:43', '2020-01-28 00:18:43'),
(606, 96, 8, '2020-01-28 00:18:43', '2020-01-28 00:18:43'),
(607, 74, 2, '2020-01-28 00:20:06', '2020-01-28 00:20:06'),
(608, 74, 3, '2020-01-28 00:20:06', '2020-01-28 00:20:06'),
(609, 74, 5, '2020-01-28 00:20:06', '2020-01-28 00:20:06'),
(610, 74, 6, '2020-01-28 00:20:06', '2020-01-28 00:20:06'),
(611, 74, 8, '2020-01-28 00:20:06', '2020-01-28 00:20:06'),
(612, 97, 2, '2020-01-28 00:21:06', '2020-01-28 00:21:06'),
(613, 97, 3, '2020-01-28 00:21:06', '2020-01-28 00:21:06'),
(614, 97, 5, '2020-01-28 00:21:06', '2020-01-28 00:21:06'),
(615, 97, 6, '2020-01-28 00:21:06', '2020-01-28 00:21:06'),
(616, 97, 8, '2020-01-28 00:21:06', '2020-01-28 00:21:06'),
(617, 94, 2, '2020-01-28 08:51:21', '2020-01-28 08:51:21'),
(618, 94, 3, '2020-01-28 08:51:21', '2020-01-28 08:51:21'),
(619, 94, 5, '2020-01-28 08:51:21', '2020-01-28 08:51:21'),
(620, 94, 6, '2020-01-28 08:51:21', '2020-01-28 08:51:21'),
(621, 94, 8, '2020-01-28 08:51:21', '2020-01-28 08:51:21'),
(627, 99, 3, '2020-01-28 21:58:13', '2020-01-28 21:58:13'),
(628, 99, 4, '2020-01-28 21:58:13', '2020-01-28 21:58:13'),
(632, 98, 4, '2020-01-28 22:02:38', '2020-01-28 22:02:38'),
(633, 98, 4, '2020-01-28 22:03:05', '2020-01-28 22:03:05'),
(640, 3, 2, '2020-01-29 12:17:01', '2020-01-29 12:17:01'),
(641, 3, 3, '2020-01-29 12:17:01', '2020-01-29 12:17:01'),
(642, 3, 4, '2020-01-29 12:17:01', '2020-01-29 12:17:01'),
(643, 3, 5, '2020-01-29 12:17:01', '2020-01-29 12:17:01'),
(644, 3, 6, '2020-01-29 12:17:01', '2020-01-29 12:17:01'),
(645, 3, 8, '2020-01-29 12:17:01', '2020-01-29 12:17:01'),
(646, 101, 2, '2020-01-30 03:50:14', '2020-01-30 03:50:14'),
(647, 101, 3, '2020-01-30 03:50:14', '2020-01-30 03:50:14'),
(648, 101, 2, '2020-01-30 04:08:53', '2020-01-30 04:08:53'),
(649, 101, 3, '2020-01-30 04:08:53', '2020-01-30 04:08:53'),
(650, 101, 4, '2020-01-30 04:08:53', '2020-01-30 04:08:53'),
(655, 102, 2, '2020-01-30 04:10:37', '2020-01-30 04:10:37'),
(656, 102, 3, '2020-01-30 04:10:37', '2020-01-30 04:10:37'),
(657, 102, 4, '2020-01-30 04:10:37', '2020-01-30 04:10:37'),
(658, 102, 5, '2020-01-30 04:10:37', '2020-01-30 04:10:37'),
(659, 102, 6, '2020-01-30 04:10:37', '2020-01-30 04:10:37'),
(660, 102, 8, '2020-01-30 04:10:37', '2020-01-30 04:10:37'),
(661, 102, 9, '2020-01-30 04:10:37', '2020-01-30 04:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `s_photo`, `created_at`, `updated_at`) VALUES
(2, 'Projector', 'storage/image/p1.png', '2020-01-24 05:08:27', '2020-01-29 10:53:00'),
(3, 'Aircon', 'storage/image/a.png', '2020-01-24 11:22:16', '2020-01-29 10:53:35'),
(4, 'Whiteboard', 'storage/image/wb1.png', '2020-01-27 15:02:07', '2020-01-29 10:53:49'),
(5, 'Table', 'storage/image/t.png', '2020-01-27 15:03:49', '2020-01-29 13:49:26'),
(6, 'Chair', 'storage/image/c1.png', '2020-01-27 15:04:01', '2020-01-29 10:54:24'),
(8, 'Wi-Fi', 'storage/image/w.png', '2020-01-27 15:15:32', '2020-01-29 10:54:40'),
(9, 'Television', 'storage/image/tv2.png', '2020-01-27 15:28:29', '2020-01-29 10:55:08'),
(13, 'WI_FI', 'storage/image/a.png', '2020-02-02 23:28:09', '2020-02-02 23:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Hlaing', '2020-01-24 04:49:19', '2020-01-28 21:39:45'),
(4, 'Kyauktada', '2020-01-24 11:26:01', '2020-01-27 15:01:46'),
(5, 'Kamayut', '2020-01-27 15:01:19', '2020-01-27 15:01:19'),
(6, 'Bahan', '2020-01-27 15:19:13', '2020-01-27 15:19:13'),
(7, 'Yankin', '2020-01-27 15:19:19', '2020-01-27 15:19:19'),
(8, 'Lanmadaw', '2020-01-27 15:20:14', '2020-01-27 15:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'bb@gmail.com', NULL, '$2y$10$wqHWCnm5lcSz4WAXMuAK/OjvXLS42NdAtBsK2ExZerUeKNRhQ/SPy', NULL, '2020-01-27 01:31:55', '2020-01-27 01:31:55'),
(2, 'mgmg', 'mgmg@gmail.com', NULL, '$2y$10$SQRNyPBOGoPruU59rOP9Bum29MDuFOhGPltTFspspzrt5ptRprgja', NULL, '2020-02-02 21:52:47', '2020-02-02 21:52:47'),
(3, 'mgmg', 'mgmg1@gmail.com', NULL, '$2y$10$ppwEId5qtyajGrt0o4EBwuC40pNigdUVyakRQp1r2x53NNN6DQicS', NULL, '2020-02-02 21:53:58', '2020-02-02 21:53:58'),
(4, 'mgmg2', 'mgmg2@gmail.com', NULL, '$2y$10$TRZ/SGF3LUEclgzZbtwQcOVV3IeoGk/rhuAiLp3hdjrnogz//tfUe', NULL, '2020-02-02 21:57:58', '2020-02-02 21:57:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomtypes`
--
ALTER TABLE `roomtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_service`
--
ALTER TABLE `room_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `roomtypes`
--
ALTER TABLE `roomtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `room_service`
--
ALTER TABLE `room_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
