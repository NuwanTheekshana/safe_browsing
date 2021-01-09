-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2021 at 12:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safe_browsing_tbl`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `find_data_tbls`
--

CREATE TABLE `find_data_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reputation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `find_data_tbls`
--

INSERT INTO `find_data_tbls` (`id`, `url`, `ip_address`, `Reputation`, `country`, `user_ip`, `datetime`, `created_at`, `updated_at`) VALUES
(1, 'https://testsafebrowsing.appspot.com/s/phishing.html', '172.217.160.212', 'POTENTIAL', 'India', '127.0.0.1', '2021-01-09 11:33:24', '2021-01-09 06:03:24', '2021-01-09 06:03:24');

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
(4, '2020_12_25_162740_create_suspicious_tbls_table', 1),
(10, '2021_01_09_085007_create_find_data_tbls_table', 2);

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
-- Table structure for table `suspicious_tbls`
--

CREATE TABLE `suspicious_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suspicious_tbls`
--

INSERT INTO `suspicious_tbls` (`id`, `domain_type`, `domain_value`, `description`, `created_by`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'login', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'login-in', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'sign-in', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'signin', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'account', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'verification', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'verify', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'webscr', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'password', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'credential', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'support', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'activity', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'security', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'update', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'authentication', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'authenticate', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'authorize', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'wallet', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'alert', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'purchase', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'transaction', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'recover', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'unlock', '25', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'confirm', '20', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'live', '15', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'office', '15', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'service', '15', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'manage', '15', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'portal', '15', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'invoice', '15', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'secure', '10', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'customer', '10', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'client', '10', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'bill', '10', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'online', '10', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'safe', '10', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'form', '10', 'Generic suspicious', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'appleid', '70', 'Apple iCloud', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'icloud', '60', 'Apple iCloud', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'iforgot', '60', 'Apple iCloud', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'itunes', '50', 'Apple iCloud', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'apple', '30', 'Apple iCloud', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'office365', '50', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'microsoft', '60', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'windows', '30', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'protonmail', '70', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'tutanota', '60', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'hotmail', '60', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'gmail', '70', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'outlook', '60', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'yahoo', '60', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'google', '60', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'yandex', '60', 'Email', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'twitter', '60', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'facebook', '60', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'tumblr', '60', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'reddit', '60', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'youtube', '40', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'linkedin', '60', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'instagram', '60', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'flickr', '60', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'whatsapp', '60', 'Social Media', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'localbitcoin', '70', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'poloniex', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'coinhive', '70', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'bithumb', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'kraken', '50', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'bitstamp', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'bittrex', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'blockchain', '70', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'bitflyer', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'coinbase', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'hitbtc', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'lakebtc', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'bitfinex', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'bitconnect', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'coinsbank', '60', 'Cryptocurrency', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'paypal', '70', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'moneygram', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'westernunion', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'bankofamerica', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'wellsfargo', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'citigroup', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'santander', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'morganstanley', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'barclays', '50', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'hsbc', '50', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'scottrade', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'ameritrade', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'merilledge', '60', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'bank', '15', 'Bank/money', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'amazon', '60', 'Ecommerce', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'overstock', '60', 'Ecommerce', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'alibaba', '60', 'Ecommerce', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'aliexpress', '60', 'Ecommerce', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'leboncoin', '70', 'Ecommerce', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'netflix', '70', 'Other', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'skype', '60', 'Other', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'github', '60', 'Other', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'onedrive', '60', 'Other', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'dropbox', '60', 'Other', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'cgi', '0', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '.net', '0', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '.org', '0', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '.com', '0', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '.net.', '20', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '.org.', '20', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '.com.', '20', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '.gov', '0', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '.gov.', '30', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '.gouv', '0', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '.gouv.', '40', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'suivi', '50', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'laposte', '50', 'Miscellaneous & SE tricks', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '.lk', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '.gq', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '.ml', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '.cf', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '.tk', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '.xyz', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '.pw', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, '.cc', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '.club', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '.work', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '.top', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '.support', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, '.bank', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '.info', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '.study', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '.click', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '.country', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '.stream', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '.gdn', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '.mom', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '.xin', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '.kim', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '.men', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '.loan', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '.download', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '.racing', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '.online', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '.center', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '.ren', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '.gb', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '.win', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '.review', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '.vip', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '.party', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '.tech', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, '.science', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, '.business', '20', 'tlds', 'Nuwan Athukorala', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `find_data_tbls`
--
ALTER TABLE `find_data_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `suspicious_tbls`
--
ALTER TABLE `suspicious_tbls`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `find_data_tbls`
--
ALTER TABLE `find_data_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suspicious_tbls`
--
ALTER TABLE `suspicious_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
