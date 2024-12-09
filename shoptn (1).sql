-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 08:50 AM
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
-- Database: `shoptn`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE `addon_settings` (
  `id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

INSERT INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":0,\"sid\":null,\"messaging_service_sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":0,\"sid\":null,\"messaging_service_sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:29', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:36', NULL),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"test\",\"status\":\"0\",\"private_key\":\"data\",\"public_key\":\"data\"}', '{\"gateway\":\"liqpay\",\"mode\":\"test\",\"status\":\"0\",\"private_key\":\"data\",\"public_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:31', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":0,\"client_id\":null,\"client_secret\":null}', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":0,\"client_id\":null,\"client_secret\":null}', 'payment_config', 'live', 0, NULL, '2024-12-06 16:08:17', '{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":0,\"template_id\":null,\"auth_key\":null}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":0,\"template_id\":null,\"auth_key\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:48', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":0,\"api_key\":null,\"api_secret\":null,\"token\":null,\"from\":null,\"otp_template\":null}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":0,\"api_key\":null,\"api_secret\":null,\"token\":null,\"from\":null,\"otp_template\":null}', 'sms_config', 'live', 1, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:33', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\",\"merchant_id\":\"data\",\"merchant_website_link\":\"data\"}', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\",\"merchant_id\":\"data\",\"merchant_website_link\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-22 06:30:55', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:07', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"test\",\"status\":\"0\",\"profile_id\":\"data\",\"server_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"paytabs\",\"mode\":\"test\",\"status\":\"0\",\"profile_id\":\"data\",\"server_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:51', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:24', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:42:38', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:40', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:16:17', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:37:43', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:09', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:13', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:38', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"test\",\"status\":1,\"api_key\":\"sk_test_51NfB36LMdBzZrufDnK075wBuRcealbDTTsm3JO2x6CcGn23JSIJ3VeCA11wluxPQWcA4qrJGkxR6XnqWn7U6gsmT00iAvAZ9t8\",\"published_key\":\"pk_test_51NfB36LMdBzZrufD2XPdxdSrRjwdQZuvuo0BpT3KS68YDfnpaJfyRTCcQoTxjrWzKeGFC6kJDjtoRkeSSRhXX86h00DN3oKhwt\"}', '{\"gateway\":\"stripe\",\"mode\":\"test\",\"status\":1,\"api_key\":\"sk_test_51NfB36LMdBzZrufDnK075wBuRcealbDTTsm3JO2x6CcGn23JSIJ3VeCA11wluxPQWcA4qrJGkxR6XnqWn7U6gsmT00iAvAZ9t8\",\"published_key\":\"pk_test_51NfB36LMdBzZrufD2XPdxdSrRjwdQZuvuo0BpT3KS68YDfnpaJfyRTCcQoTxjrWzKeGFC6kJDjtoRkeSSRhXX86h00DN3oKhwt\"}', 'payment_config', 'test', 1, NULL, '2024-12-07 11:55:35', '{\"gateway_title\":\"Stripe\",\"gateway_image\":\"2024-12-06-67541c3207970.png\"}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:19:28', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:34', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:49:15', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:46', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:26', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `identity_image` varchar(255) DEFAULT NULL,
  `identity_type` varchar(255) DEFAULT NULL,
  `identity_number` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `identity_image`, `identity_type`, `identity_number`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`, `status`, `admin_role_id`) VALUES
(1, 'shop', 'shop', '849123456781', 'admin@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$seK0dIY0ASZzsMaeDtx3Ee667wT.XqogA1mdjehhVd3uiivPrFO.W', 'lDTOXug2W9M0jLVgImsIRowFk6oRWE8ewFFjQxkPuCJnuHnq9sAnayOTmUHL', '2024-12-05 23:17:07', '2024-12-05 23:17:07', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `module_access` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, '2022-06-17 16:45:59', '2022-06-17 16:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Weight / Grip', '2024-12-07 14:43:14', '2024-12-07 14:51:28'),
(3, 'Version', '2024-12-07 15:31:59', '2024-12-07 15:31:59'),
(4, 'Width Range', '2024-12-07 15:49:18', '2024-12-07 15:49:18'),
(5, 'Size', '2024-12-08 12:29:18', '2024-12-08 12:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `product_id`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'New EZONE', '2024-12-07-67545bddcaaec.png', NULL, 1, '2024-12-07 14:29:49', '2024-12-07 14:29:49', 16),
(3, 'yonex axesenl', '2024-12-07-67545d3c7f733.png', NULL, 1, '2024-12-07 14:35:40', '2024-12-07 14:35:40', 15),
(4, 'nanoflare', '2024-12-07-67545d68ee206.png', 2, 1, '2024-12-07 14:36:24', '2024-12-07 14:36:24', NULL),
(5, 'running', '2024-12-07-67545da5af546.png', NULL, 1, '2024-12-07 14:37:25', '2024-12-07 14:37:25', 18),
(6, 'beyond', '2024-12-07-67545dd790b58.png', NULL, 1, '2024-12-07 14:38:15', '2024-12-07 14:38:15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coverage` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `restaurant_id`, `name`, `email`, `phone`, `password`, `latitude`, `longitude`, `address`, `status`, `created_at`, `updated_at`, `coverage`, `remember_token`, `image`) VALUES
(1, NULL, 'YONEX', 'info@yonex.co.jp', '+81-3-3512-5201', '$2y$10$HJW/gFTjbpX8VIDp4I.EjO0QhlFTek7ydjRMkIiDjSuCHEpWZDafK', '35.551704200201385', '139.77281226588656', '1-1, Hiranomachi 3-chome, Chūō-ku, Tokyo 104-0033, Nhật Bản.', 1, '2021-02-24 09:45:49', '2024-12-07 15:03:16', 500, NULL, '2024-12-07-675462f7d7bed.png');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'self_pickup', '1', '2021-01-06 05:55:51', '2021-01-06 05:55:51'),
(3, 'restaurant_name', 'shoptn', NULL, NULL),
(4, 'currency', 'USD', NULL, NULL),
(5, 'logo', '2021-06-21-60d0370804378.png', NULL, NULL),
(6, 'mail_config', '{\"status\":0,\"name\":\"Delivery APP\",\"host\":\"mail.demo.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"tls\",\"password\":\"demo\"}', NULL, '2024-05-08 15:58:59'),
(7, 'delivery_charge', '100', NULL, NULL),
(8, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":null,\"store_password\":null}', NULL, '2021-07-25 09:32:22'),
(9, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}', NULL, '2021-07-25 09:32:42'),
(10, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', NULL, '2021-07-25 09:32:50'),
(11, 'phone', '0912312345', NULL, NULL),
(13, 'footer_text', '...', NULL, NULL),
(14, 'address', '123 Nguyen Van Linh, phường A, Quận B, TP.HCM', NULL, NULL),
(15, 'email_address', 'abcd@gmail.com', NULL, NULL),
(16, 'cash_on_delivery', '{\"status\":\"0\"}', NULL, '2024-12-06 16:18:10'),
(17, 'email_verification', '0', NULL, NULL),
(18, 'digital_payment', '{\"status\":\"1\"}', '2021-01-30 19:38:54', '2024-12-06 16:20:53'),
(19, 'terms_and_conditions', '<p></p>', NULL, '2021-05-30 08:51:56'),
(20, 'fcm_topic', '', NULL, NULL),
(21, 'fcm_project_id', '3f34f34', NULL, NULL),
(22, 'push_notification_key', 'demo', NULL, NULL),
(24, 'order_pending_message', '{\"status\":1,\"message\":\"Your order has been placed successfully.\"}', NULL, NULL),
(25, 'order_processing_message', '{\"status\":1,\"message\":\"Your order is going to the cook\"}', NULL, NULL),
(26, 'out_for_delivery_message', '{\"status\":1,\"message\":\"Order out for delivery.\"}', NULL, NULL),
(27, 'order_delivered_message', '{\"status\":1,\"message\":\"delivered\"}', NULL, NULL),
(28, 'delivery_boy_assign_message', '{\"status\":1,\"message\":\"boy assigned\"}', NULL, NULL),
(29, 'delivery_boy_start_message', '{\"status\":1,\"message\":\"start delivery\"}', NULL, NULL),
(30, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":\"boy delivered\"}', NULL, NULL),
(32, 'order_confirmation_msg', '{\"status\":1,\"message\":\"Your order has been confirmed.\"}', NULL, NULL),
(33, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', '2021-02-14 10:15:12', '2021-07-25 09:32:32'),
(34, 'location_coverage', '{\"status\":1,\"longitude\":\"91.410747\",\"latitude\":\"22.986282\",\"coverage\":\"20\"}', NULL, NULL),
(35, 'minimum_order_value', '50', NULL, NULL),
(36, 'software_mode', 'dev', NULL, NULL),
(37, 'software_version', NULL, NULL, NULL),
(38, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', '2021-04-24 18:40:34', '2021-07-25 09:33:19'),
(39, 'senang_pay', '{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}', '2021-04-27 14:02:18', '2021-07-25 09:33:06'),
(40, 'privacy_policy', '<p>rjdrjf</p>', NULL, '2021-05-30 08:52:40'),
(41, 'about_us', '<p><strong>hello</strong></p>', NULL, '2021-05-30 08:44:52'),
(42, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', NULL, '2021-07-25 09:33:19'),
(43, 'currency_symbol_position', 'right', NULL, NULL),
(44, 'country', 'VN', NULL, NULL),
(45, 'language', '[{\"id\":1,\"name\":\"en\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true}]', NULL, '2022-06-17 16:45:59'),
(46, 'time_zone', 'Asia/Bangkok', NULL, NULL),
(47, 'phone_verification', '0', NULL, NULL),
(48, 'maintenance_mode', '0', NULL, NULL),
(49, 'twilio_sms', '{\"status\":0,\"sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', '2021-09-05 09:16:15', '2021-09-05 09:16:15'),
(50, 'nexmo_sms', '{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":null}', '2021-09-05 09:16:20', '2021-09-05 09:16:20'),
(51, '2factor_sms', '{\"status\":\"0\",\"api_key\":null}', '2021-09-05 09:16:25', '2021-09-05 09:16:25'),
(52, 'msg91_sms', '{\"status\":0,\"template_id\":null,\"authkey\":null}', '2021-09-05 09:16:30', '2021-09-05 09:16:30'),
(53, 'pagination_limit', '10', NULL, NULL),
(54, 'map_api_key', '', NULL, NULL),
(55, 'delivery_management', '{\"status\":0,\"min_shipping_charge\":0,\"shipping_per_km\":0}', NULL, NULL),
(56, 'play_store_config', '{\"status\":\"\",\"link\":\"\",\"min_version\":\"1\"}', NULL, NULL),
(57, 'app_store_config', '{\"status\":\"\",\"link\":\"\",\"min_version\":\"1\"}', NULL, NULL),
(58, 'recaptcha', '{\"status\":\"0\",\"site_key\":\"\",\"secret_key\":\"\"}', NULL, NULL),
(59, 'decimal_point_settings', '2', NULL, NULL),
(60, 'time_format', '24', NULL, NULL),
(61, 'minimum_stock_limit', '1', NULL, NULL),
(62, 'faq', NULL, NULL, NULL),
(63, 'google_social_login', '1', NULL, NULL),
(64, 'facebook_social_login', '1', NULL, NULL),
(65, 'wallet_status', '0', NULL, NULL),
(66, 'loyalty_point_status', '0', NULL, NULL),
(67, 'ref_earning_status', '0', NULL, NULL),
(68, 'loyalty_point_exchange_rate', '0', NULL, NULL),
(69, 'ref_earning_exchange_rate', '0', NULL, NULL),
(70, 'loyalty_point_percent_on_item_purchase', '0', NULL, NULL),
(71, 'loyalty_point_minimum_point', '1', NULL, NULL),
(72, 'free_delivery_over_amount', '2000', NULL, NULL),
(73, 'maximum_amount_for_cod_order', '1000', NULL, NULL),
(74, 'cookies', '{\"status\":\"1\",\"text\":\"Allow Cookies for this site\"}', NULL, NULL),
(75, 'offline_payment', '{\"status\":\"1\"}', NULL, '2024-12-06 16:17:33'),
(76, 'product_vat_tax_status', 'excluded', NULL, NULL),
(77, 'whatsapp', '{\"status\":\"0\",\"number\":\"\"}', NULL, NULL),
(78, 'telegram', '{\"status\":\"0\",\"user_name\":\"\"}', NULL, NULL),
(79, 'messenger', '{\"status\":\"0\",\"user_name\":\"\"}', NULL, NULL),
(80, 'featured_product_status', '1', NULL, NULL),
(81, 'trending_product_status', '1', NULL, NULL),
(82, 'most_reviewed_product_status', '1', NULL, NULL),
(83, 'recommended_product_status', '1', NULL, NULL),
(84, 'fav_icon', '', NULL, NULL),
(85, 'dm_self_registration', '0', NULL, NULL),
(86, 'maximum_otp_hit', '5', NULL, NULL),
(87, 'otp_resend_time', '60', NULL, NULL),
(88, 'temporary_block_time', '600', NULL, NULL),
(89, 'maximum_login_hit', '5', NULL, NULL),
(90, 'temporary_login_block_time', '600', NULL, NULL),
(91, 'guest_checkout', '1', NULL, NULL),
(92, 'partial_payment', '1', NULL, NULL),
(93, 'partial_payment_combine_with', 'all', NULL, NULL),
(94, 'deliveryman_order_processing_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(95, 'add_fund_wallet_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(96, 'add_fund_wallet_bonus_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(97, 'apple_login', '{\"status\":0, \"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\"}', NULL, NULL),
(98, 'customer_notify_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(99, 'returned_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(100, 'failed_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(101, 'canceled_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(102, 'firebase_otp_verification', '{\"status\":0,\"web_api_key\":\"\"}', NULL, NULL),
(103, 'push_notification_service_file_content', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'def.png',
  `priority` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `image`, `priority`) VALUES
(15, 'Badminton', 0, 0, 1, '2024-12-07 13:59:17', '2024-12-07 13:59:17', '2024-12-07-675454b5e1fc5.png', 1),
(16, 'Tennis', 0, 0, 1, '2024-12-07 14:08:54', '2024-12-07 14:08:54', '2024-12-07-675456f6d9d22.png', 1),
(17, 'Golf', 0, 0, 1, '2024-12-07 14:09:43', '2024-12-07 14:09:43', '2024-12-07-675457275fe98.png', 1),
(18, 'Running', 0, 0, 1, '2024-12-07 14:10:18', '2024-12-07 14:11:20', '2024-12-07-67545788103fe.png', 1),
(19, 'Snowbroading', 0, 0, 1, '2024-12-07 14:12:35', '2024-12-07 14:12:35', '2024-12-07-675457d3cfb97.png', 1),
(20, 'Badminton', 15, 1, 1, '2024-12-07 14:12:59', '2024-12-07 14:12:59', 'def.png', 1),
(22, 'Clubs', 17, 1, 1, '2024-12-07 14:13:08', '2024-12-08 12:14:17', 'def.png', 1),
(25, 'Racquets', 15, 1, 1, '2024-12-07 15:53:06', '2024-12-07 15:53:06', 'def.png', 1),
(26, 'Strings', 15, 1, 1, '2024-12-07 15:53:12', '2024-12-07 15:53:12', 'def.png', 1),
(27, 'Shuttlecocks', 15, 1, 1, '2024-12-07 15:53:27', '2024-12-07 15:53:27', 'def.png', 1),
(28, 'Apparel', 15, 1, 1, '2024-12-07 15:53:32', '2024-12-07 15:53:32', 'def.png', 1),
(29, 'Footwear', 15, 1, 1, '2024-12-07 15:53:38', '2024-12-07 15:53:38', 'def.png', 1),
(30, 'Bags', 15, 1, 1, '2024-12-07 15:53:46', '2024-12-07 15:53:46', 'def.png', 1),
(31, 'Accessories', 15, 1, 1, '2024-12-07 15:53:52', '2024-12-07 15:53:52', 'def.png', 1),
(32, 'Shafts', 17, 1, 1, '2024-12-08 12:14:36', '2024-12-08 12:14:36', 'def.png', 1),
(35, 'Bags & Accessories', 17, 1, 1, '2024-12-08 12:15:53', '2024-12-08 12:15:53', 'def.png', 1),
(36, 'Junior', 17, 1, 1, '2024-12-08 12:15:59', '2024-12-08 12:15:59', 'def.png', 1),
(37, 'Racquets', 16, 1, 1, '2024-12-08 12:17:07', '2024-12-08 12:17:07', 'def.png', 1),
(38, 'Strings', 16, 1, 1, '2024-12-08 12:17:16', '2024-12-08 12:17:16', 'def.png', 1),
(39, 'Balls', 16, 1, 1, '2024-12-08 12:17:22', '2024-12-08 12:17:22', 'def.png', 1),
(40, 'Apparel', 16, 1, 1, '2024-12-08 12:17:27', '2024-12-08 12:17:27', 'def.png', 1),
(41, 'Footwear', 16, 1, 1, '2024-12-08 12:17:34', '2024-12-08 12:17:34', 'def.png', 1),
(42, 'Bags', 16, 1, 1, '2024-12-08 12:17:41', '2024-12-08 12:17:41', 'def.png', 1),
(43, 'Accessories', 16, 1, 1, '2024-12-08 12:17:46', '2024-12-08 12:17:46', 'def.png', 1),
(44, 'Junior Products', 16, 1, 1, '2024-12-08 12:17:51', '2024-12-08 12:17:51', 'def.png', 1),
(45, 'MEN', 18, 1, 1, '2024-12-08 12:18:13', '2024-12-08 12:18:13', 'def.png', 1),
(46, 'WOMEN', 18, 1, 1, '2024-12-08 12:19:06', '2024-12-08 12:19:06', 'def.png', 1),
(47, 'UNISEX', 18, 1, 1, '2024-12-08 12:19:12', '2024-12-08 12:19:12', 'def.png', 1),
(48, 'Boards', 19, 1, 1, '2024-12-08 12:19:25', '2024-12-08 12:19:25', 'def.png', 1),
(49, 'Boots & Bindings', 19, 1, 1, '2024-12-08 12:19:32', '2024-12-08 12:19:32', 'def.png', 1),
(50, 'Apparel', 19, 1, 1, '2024-12-08 12:19:38', '2024-12-08 12:19:38', 'def.png', 1),
(51, 'Accessories', 19, 1, 1, '2024-12-08 12:19:45', '2024-12-08 12:19:45', 'def.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_discounts`
--

CREATE TABLE `category_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `maximum_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_searched_by_user`
--

CREATE TABLE `category_searched_by_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_searched_by_user`
--

INSERT INTO `category_searched_by_user` (`id`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 15, '2024-12-07 16:01:27', '2024-12-07 16:01:27'),
(2, 2, 15, '2024-12-08 12:39:18', '2024-12-08 12:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `is_reply` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_id`, `message`, `reply`, `created_at`, `updated_at`, `checked`, `image`, `is_reply`) VALUES
(1, 2, 'tuoi', NULL, '2024-12-08 12:37:42', '2024-12-08 12:37:42', 0, 'null', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_type` varchar(255) NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `start_date`, `expire_date`, `min_purchase`, `max_discount`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`, `coupon_type`, `limit`, `customer_id`) VALUES
(1, 'FREE DELIVERY', 'u32csc3', '2024-12-08', '2024-12-18', 0.00, 1000.00, 30.00, 'percent', 1, '2024-12-08 12:43:06', '2024-12-08 12:45:39', 'first_order', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 1.00, NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', 1.00, NULL, NULL),
(3, 'Euro', 'EUR', '€', 1.00, NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', 'د.إ.‏', 1.00, NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '؋', 1.00, NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', 1.00, NULL, NULL),
(7, 'Armenian Dram', 'AMD', '֏', 1.00, NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', 1.00, NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', 1.00, NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '₼', 1.00, NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', 1.00, NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1.00, NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', 'лв.', 1.00, NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', 1.00, NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', 1.00, NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', 1.00, NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', 1.00, NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', 1.00, NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', 1.00, NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', 1.00, NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', 1.00, NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', 1.00, NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', 1.00, NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', 1.00, NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '¥', 1.00, NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', 1.00, NULL, NULL),
(27, 'Costa Rican Colón', 'CRC', '₡', 1.00, NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', 1.00, NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', 1.00, NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', 1.00, NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', 1.00, NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', 1.00, NULL, NULL),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', 1.00, NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', 1.00, NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E£‏', 1.00, NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', 1.00, NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', 1.00, NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '£', 1.00, NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', 1.00, NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH¢', 1.00, NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', 1.00, NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', 1.00, NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', 1.00, NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', 1.00, NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', 1.00, NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', 1.00, NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', 1.00, NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '₪', 1.00, NULL, NULL),
(49, 'Indian Rupee', 'INR', '₹', 1.00, NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', 'ع.د', 1.00, NULL, NULL),
(51, 'Iranian Rial', 'IRR', '﷼', 1.00, NULL, NULL),
(52, 'Icelandic Króna', 'ISK', 'kr', 1.00, NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', 1.00, NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', 'د.ا‏', 1.00, NULL, NULL),
(55, 'Japanese Yen', 'JPY', '¥', 1.00, NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', 1.00, NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '៛', 1.00, NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', 1.00, NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', 1.00, NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', 1.00, NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '₸.', 1.00, NULL, NULL),
(62, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 1.00, NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', 1.00, NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', 1.00, NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', 1.00, NULL, NULL),
(66, 'Libyan Dinar', 'LYD', 'د.ل.‏', 1.00, NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', 'د.م.‏', 1.00, NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', 1.00, NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', 1.00, NULL, NULL),
(70, 'Macedonian Denar', 'MKD', 'Ден', 1.00, NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', 1.00, NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', 1.00, NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', 1.00, NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', 1.00, NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', 1.00, NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', 1.00, NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', 1.00, NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '₦', 1.00, NULL, NULL),
(79, 'Nicaraguan Córdoba', 'NIO', 'C$', 1.00, NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', 1.00, NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', 1.00, NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', 1.00, NULL, NULL),
(83, 'Omani Rial', 'OMR', 'ر.ع.‏', 1.00, NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', 1.00, NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', 1.00, NULL, NULL),
(86, 'Philippine Peso', 'PHP', '₱', 1.00, NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', 1.00, NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'zł', 1.00, NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '₲', 1.00, NULL, NULL),
(90, 'Qatari Rial', 'QAR', 'ر.ق.‏', 1.00, NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', 1.00, NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', 1.00, NULL, NULL),
(93, 'Russian Ruble', 'RUB', '₽.', 1.00, NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', 1.00, NULL, NULL),
(95, 'Saudi Riyal', 'SAR', 'ر.س.‏', 1.00, NULL, NULL),
(96, 'Sudanese Pound', 'SDG', 'ج.س.', 1.00, NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', 1.00, NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', 1.00, NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', 1.00, NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS‏', 1.00, NULL, NULL),
(101, 'Thai Baht', 'THB', '฿', 1.00, NULL, NULL),
(102, 'Tunisian Dinar', 'TND', 'د.ت‏', 1.00, NULL, NULL),
(103, 'Tongan Paʻanga', 'TOP', 'T$', 1.00, NULL, NULL),
(104, 'Turkish Lira', 'TRY', '₺', 1.00, NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', 1.00, NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', 1.00, NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', 1.00, NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '₴', 1.00, NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', 1.00, NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', 1.00, NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', 1.00, NULL, NULL),
(112, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', 1.00, NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '₫', 1.00, NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', 1.00, NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', 1.00, NULL, NULL),
(116, 'Yemeni Rial', 'YER', '﷼‏', 1.00, NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', 1.00, NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', 1.00, NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) NOT NULL,
  `contact_person_number` varchar(20) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `road` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dc_conversations`
--

CREATE TABLE `dc_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `application_status` varchar(255) NOT NULL DEFAULT 'approved' COMMENT 'pending, approved, denied',
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `language_code` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_products`
--

CREATE TABLE `favorite_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite_products`
--

INSERT INTO `favorite_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2024-12-07 15:54:57', '2024-12-07 15:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deal_type` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_deal_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `language_code` varchar(255) NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `language_code`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '@', 'en', '2024-12-06 15:35:31', '2024-12-06 15:35:31'),
(2, '127.0.0.1', '@', 'en', '2024-12-06 15:35:32', '2024-12-06 15:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_transactions`
--

CREATE TABLE `loyalty_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `credit` decimal(24,2) NOT NULL DEFAULT 0.00,
  `debit` decimal(24,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(24,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(26, '2016_06_01_000004_create_oauth_clients_table', 17),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(68, '2021_03_07_065637_change_product_image_clumn_type', 42),
(69, '2021_03_11_061437_add_unit_column_to_products', 43),
(70, '2021_03_11_070016_add_unit_to_order_details', 43),
(71, '2021_04_04_153448_add_column_to_product_table', 44),
(72, '2021_04_05_071507_add_stock_info_in_order_details', 44),
(73, '2021_04_07_145217_update_product_price_column', 45),
(74, '2021_01_10_145134_create_time_slots_table', 46),
(75, '2021_03_22_164017_add_time_slot_id_to_orders_table', 46),
(76, '2021_03_24_154346_add_date_to_orders_table', 46),
(77, '2021_03_24_161320_add_date_to_time_slots_table', 46),
(78, '2021_03_27_100851_add_delivery_date_to_orders_table', 46),
(79, '2021_04_08_093406_add_capacity_to_products', 46),
(80, '2021_04_15_184101_add_delivery_date_and_time_to_order_details', 46),
(81, '2021_04_21_081459_add_stock_to_products', 46),
(82, '2021_04_21_094959_add_stock_info_to_order_details', 46),
(83, '2021_05_03_160034_add_callback_to_order', 47),
(84, '2021_06_17_054551_create_soft_credentials_table', 48),
(85, '2021_07_01_160828_add_col_daily_needs_products', 49),
(86, '2021_07_26_170256_change_price_col_type', 50),
(87, '2021_09_01_133521_create_phone_verifications_table', 51),
(88, '2021_09_01_134803_create_translations_table', 51),
(89, '2021_09_04_082220_rename_email_col', 51),
(90, '2021_10_12_104445_add_temporary_token_to_users_table', 52),
(91, '2021_11_06_113028_add_extra_discount_to_order_table', 53),
(92, '2022_02_17_101623_change_conversaton_table_column_and_type', 54),
(93, '2022_02_17_112013_create_dc_conversations_table', 54),
(94, '2022_02_17_112101_create_messages_table', 54),
(95, '2022_02_17_125728_add_fcm_token_to_admin_table', 54),
(96, '2022_02_22_093732_create_social_media_table', 54),
(97, '2022_02_22_103038_change_banner_title_length', 54),
(98, '2022_02_22_130430_create_newsletters_table', 54),
(99, '2022_02_24_085940_change_name_length_in_category_table', 54),
(100, '2022_02_24_095937_change_name_length_in_attribute_table', 54),
(101, '2022_02_26_150826_add_delivery_address_to_order_table', 54),
(102, '2022_02_27_104337_add_image_to_branch_table', 54),
(103, '2022_05_30_033052_create_favorite_products_table', 55),
(104, '2022_06_06_161829_create_admin_roles_table', 55),
(105, '2022_06_06_162546_add_two_column_to_admins_table', 55),
(106, '2022_06_09_095348_add_popularity_count_to_products_table', 55),
(107, '2022_10_27_002321_add_is_active_column_in_attributes_table', 56),
(108, '2022_10_28_214644_add_is_active_column_to_reviews_table', 56),
(109, '2022_10_29_194703_add_multiple_column_for_identity_in_admins_table', 56),
(110, '2022_10_29_224609_add_column_is_active_in_delivery_men_table', 56),
(111, '2022_10_30_190953_add_column_is_visible_in_products_table', 56),
(112, '2022_11_05_043305_add_phone_to_branches_table', 56),
(113, '2022_11_05_045429_add_column_is_block_to_users_table', 56),
(114, '2022_11_07_064201_add_multiple_column_in_customer_addresses_table', 56),
(115, '2022_11_29_160650_delete_is_active_from_attributes_table', 56),
(116, '2022_11_29_165014_delete_is_visible_from_products_table', 56),
(117, '2022_12_04_212159_add_login_medium_column_in_users_tables', 56),
(118, '2023_02_16_170841_add_multiple_column_to_users_table', 57),
(119, '2023_02_16_183440_create_wallet_transction_table', 57),
(120, '2023_02_18_111449_create_loyalty_transaction_table', 57),
(121, '2023_02_19_104242_create_tags_table', 57),
(122, '2023_02_19_104317_create_product_tag_table', 57),
(123, '2023_02_20_155814_add_customer_id_in_coupons_table', 57),
(124, '2023_02_22_160007_add_column_for_offline_payment_in_orders_table', 57),
(125, '2023_02_22_173354_create_table_flash_deals', 57),
(126, '2023_02_22_200523_create_recent_searches_table', 57),
(127, '2023_02_22_200535_create_searched_data_table', 57),
(128, '2023_02_23_095712_create_table_flashdeal_products', 57),
(129, '2023_02_23_150149_add_is_featured_in_products_table', 57),
(130, '2023_02_26_144956_add_maximum_order_quantity_in_products_table', 57),
(131, '2023_02_26_152222_create_category_discounts_table', 57),
(132, '2023_02_26_184816_create_visited_products_table', 57),
(133, '2023_03_11_104833_add_free_delivery_amount_to_orders_table', 57),
(134, '2023_03_18_160336_create_searched_keyword_counts_table', 57),
(135, '2023_03_18_160753_create_searched_category_table', 57),
(136, '2023_03_18_160953_create_searched_products_table', 57),
(137, '2023_03_19_130859_create_searched_keyword_users_table', 57),
(138, '2023_03_20_104722_create_category_searched_by_user_table', 57),
(139, '2023_03_20_110808_create_product_searched_by_user_table', 57),
(140, '2023_03_21_183551_add_vat_status_column_in_order_details_table', 57),
(141, '2023_05_15_041430_add_application_status_in_delivery_men_table', 58),
(142, '2023_05_15_153550_add_otp_hist_counts_column_in_phone_verification_tabel', 58),
(143, '2023_05_15_175430_add_otp_hits_counts_column_in_password_resets', 58),
(144, '2023_05_16_000027_add_otp_hits_counts_column_in_email_verifications', 58),
(145, '2023_05_17_121506_add_login_hit_count_in_users', 58),
(146, '2023_05_17_145621_change_column_type_in_delivery_men', 58),
(147, '2023_05_17_152928_add_login_hit_count_in_delivery_men', 58),
(148, '2023_09_09_111646_create_guest_users_table', 59),
(149, '2023_09_09_125334_add_guest_id_in_customer_addressess_table', 59),
(150, '2023_09_09_150348_add_guest_id_in_orders_table', 59),
(151, '2023_09_11_122854_create_wallet_bonuses_table', 59),
(152, '2023_09_12_123515_add_priority_column_in_category_table', 59),
(153, '2023_09_17_111956_create_offline_payment_methods_table', 59),
(154, '2023_09_17_171307_add_language_code_to_users', 59),
(155, '2023_09_17_180404_add_language_code_to_delivery_men', 59),
(156, '2023_09_18_114716_create_offline_payments_table', 59),
(157, '2023_09_18_115108_create_order_partial_payments_table', 59),
(158, '2023_09_26_160347_create_register_devices_table', 59),
(159, '2024_03_10_180329_create_order_images_table', 60);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('387fbf63fcceebc6600868fc8fdb06d4d7fb5423547083a3d5e4ad73e8aa2418fcc290d783a5eaa1', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-12-07 12:48:12', '2024-12-07 12:48:12', '2025-12-07 19:48:12'),
('395d274d670b5f8857243c4510d8dd3d3aca17d11d757e63e60aa306a7682d7a88645d598b5f262c', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-12-08 12:04:25', '2024-12-08 12:04:25', '2025-12-08 19:04:25'),
('4aa98e07011926f7a18ee9f11790c33dcd2ad28208726a4b2ae98b8a2baf5c8839084c9e3462bb40', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-12-08 12:35:17', '2024-12-08 12:35:17', '2025-12-08 19:35:17'),
('555725108f6479dad293a858dbfeba36f20a9ea21022ca81bb136f7588ad4138d98c52702de0d1e6', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-12-08 12:34:45', '2024-12-08 12:34:45', '2025-12-08 19:34:45'),
('5c81b4f118e7238649548b49c67c1ec03ed8b9bb2ecec3a7931ddc7602f93b48c82702abf48778a6', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-12-08 12:01:36', '2024-12-08 12:01:36', '2025-12-08 19:01:36'),
('5d540d6f0831907ed87f55a16d24e59b7f504e8a7e7072abc239c070c3510d28da5dd335240223dc', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-12-08 12:34:45', '2024-12-08 12:34:45', '2025-12-08 19:34:45'),
('f482e6ae935482576e1679a260fb1dd54d91e90688500377e0e6cbc1667ecc0c78d968451433f0d6', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-12-07 12:48:11', '2024-12-07 12:48:11', '2025-12-07 19:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'z5ky1aF18fNgAczYo0W2MdglqUxpyt0KsKdmbRIt', NULL, 'http://localhost', 1, 0, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, NULL, 'Laravel Password Grant Client', 'clk5DEe0ANVDYwD79OUYBkLcZ6CLSykUvULubUuk', 'users', 'http://localhost', 0, 1, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(3, NULL, 'Laravel Personal Access Client', 'v89pXMpj0Pv49vFb3vC0uqTZvTRPEGtso4wpvkab', NULL, 'http://localhost', 1, 0, 0, '2021-06-19 03:35:33', '2021-06-19 03:35:33'),
(4, NULL, 'Laravel Password Grant Client', '07Q6Fu6riULXZnYy1yd8lApmsn45TrZZyZKPxW3T', 'users', 'http://localhost', 0, 1, 0, '2021-06-19 03:35:33', '2021-06-19 03:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, 3, '2021-06-19 03:35:33', '2021-06-19 03:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_info` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

CREATE TABLE `offline_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `payment_note` varchar(255) DEFAULT NULL,
  `method_informations` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_title` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_reference` varchar(30) DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `order_note` text DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) NOT NULL DEFAULT 'delivery',
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `time_slot_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `extra_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `delivery_address` text DEFAULT NULL,
  `payment_by` varchar(255) DEFAULT NULL,
  `payment_note` varchar(255) DEFAULT NULL,
  `free_delivery_amount` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `is_guest`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `created_at`, `updated_at`, `checked`, `delivery_man_id`, `delivery_charge`, `order_note`, `coupon_code`, `order_type`, `branch_id`, `time_slot_id`, `date`, `delivery_date`, `callback`, `extra_discount`, `delivery_address`, `payment_by`, `payment_note`, `free_delivery_amount`) VALUES
(100001, 2, 1, 200.00, 0.00, NULL, 'unpaid', 'confirmed', 0.00, 'cash_on_delivery', NULL, 0, '2024-12-06 16:18:27', '2024-12-06 16:18:49', 1, NULL, 0.00, NULL, NULL, 'self_pickup', 1, 3, '2024-12-06', '2024-12-07', NULL, 0.00, 'null', NULL, NULL, 0.00),
(100002, 2, 1, 400.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'stripe', 'pi_3QTLEJP9JWxrBBuU17WUyYqD', 0, '2024-12-06 16:27:22', '2024-12-06 16:33:18', 1, NULL, 0.00, NULL, NULL, 'self_pickup', 1, 3, '2024-12-06', '2024-12-07', NULL, 0.00, 'null', NULL, NULL, 0.00),
(100003, 2, 1, 900.00, 0.00, NULL, 'paid', 'confirmed', 0.00, 'stripe', 'pi_3QTMg4LMdBzZrufD16IIRPZ9', 0, '2024-12-07 12:00:07', '2024-12-07 12:00:10', 1, NULL, 0.00, NULL, NULL, 'self_pickup', 1, 3, '2024-12-07', '2024-12-07', NULL, 0.00, 'null', NULL, NULL, 0.00),
(100004, 1, 0, 235.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'stripe', 'pi_3QTPJ8LMdBzZrufD1AB6r89o', 0, '2024-12-07 14:48:36', '2024-12-07 14:49:57', 1, NULL, 0.00, NULL, NULL, 'self_pickup', 1, 3, '2024-12-07', '2024-12-07', NULL, 0.00, 'null', NULL, NULL, 0.00),
(100005, 2, 0, 34746.00, 1000.00, NULL, 'paid', 'delivered', 0.00, 'stripe', 'pi_3QTjx3LMdBzZrufD1YnbT16L', 0, '2024-12-08 12:51:12', '2024-12-08 12:52:06', 1, NULL, 0.00, NULL, 'u32csc3', 'self_pickup', 1, 3, '2024-12-08', '2024-12-08', NULL, 0.00, 'null', NULL, NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) DEFAULT NULL,
  `end_location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `product_details` text DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `discount_on_product` decimal(8,2) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `tax_amount` decimal(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `unit` varchar(255) NOT NULL DEFAULT 'pc',
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1,
  `time_slot_id` bigint(20) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `vat_status` varchar(255) NOT NULL DEFAULT 'excluded' COMMENT 'included/excluded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `price`, `product_details`, `variation`, `discount_on_product`, `discount_type`, `quantity`, `tax_amount`, `created_at`, `updated_at`, `variant`, `unit`, `is_stock_decreased`, `time_slot_id`, `delivery_date`, `vat_status`) VALUES
(1, 1, 100001, 100.00, '{\"id\":1,\"name\":\"Test Product\",\"description\":\"Test product description\",\"image\":\"[\\\"2023-10-18-652fd303e4f34.png\\\"]\",\"price\":100,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2023-10-18T13:43:47.000000Z\",\"updated_at\":\"2024-12-07T09:58:19.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"2\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":50,\"capacity\":1,\"daily_needs\":0,\"popularity_count\":0,\"is_featured\":0,\"view_count\":1,\"maximum_order_quantity\":10,\"translations\":[]}', '[{\"type\":null}]', 0.00, 'discount_on_category', 1, 0.00, '2024-12-06 16:18:27', '2024-12-06 16:18:27', 'null', 'kg', 1, 3, '2024-12-07', 'excluded'),
(2, 1, 100002, 100.00, '{\"id\":1,\"name\":\"Test Product\",\"description\":\"Test product description\",\"image\":\"[\\\"2023-10-18-652fd303e4f34.png\\\"]\",\"price\":100,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2023-10-18T13:43:47.000000Z\",\"updated_at\":\"2024-12-07T10:20:08.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"2\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":49,\"capacity\":1,\"daily_needs\":0,\"popularity_count\":1,\"is_featured\":0,\"view_count\":2,\"maximum_order_quantity\":10,\"translations\":[]}', '[{\"type\":null}]', 0.00, 'discount_on_category', 3, 0.00, '2024-12-06 16:27:22', '2024-12-06 16:27:22', 'null', 'kg', 1, 3, '2024-12-07', 'excluded'),
(3, 1, 100003, 100.00, '{\"id\":1,\"name\":\"Test Product\",\"description\":\"Test product description\",\"image\":\"[\\\"2023-10-18-652fd303e4f34.png\\\"]\",\"price\":100,\"variations\":\"[]\",\"tax\":0,\"status\":1,\"created_at\":\"2023-10-17T19:43:47.000000Z\",\"updated_at\":\"2024-12-07T11:56:01.000000Z\",\"attributes\":\"[]\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1},{\\\"id\\\":\\\"2\\\",\\\"position\\\":2}]\",\"choice_options\":\"[]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":46,\"capacity\":1,\"daily_needs\":0,\"popularity_count\":2,\"is_featured\":0,\"view_count\":5,\"maximum_order_quantity\":10,\"translations\":[]}', '[{\"type\":null}]', 0.00, 'discount_on_category', 8, 0.00, '2024-12-07 12:00:07', '2024-12-07 12:00:07', 'null', 'kg', 1, 3, '2024-12-07', 'excluded'),
(4, 2, 100004, 135.00, '{\"id\":2,\"name\":\"NANOFLARE 700 PLAY\",\"description\":\"<p style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\\\"><img class=\\\"technology__right__content__image\\\" data-bind=\\\"attr: { src: manufacturer_image, alt: name }\\\" src=\\\"https:\\/\\/www.yonex.com\\/media\\/yonex\\/technology\\/B_Isometric_logo.png\\\" alt=\\\"ISOMETRIC\\\" style=\\\"max-width: 100%; height: auto; border: 0px; color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif;\\\"><span style=\\\"color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif;\\\"><\\/span><\\/p><h3 class=\\\"technology__right__content__title\\\" data-bind=\\\"text: name, attr: {id: \'tech_\' + id}\\\" id=\\\"tech_46\\\" style=\\\"color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 1.1rem; letter-spacing: 3px;\\\">ISOMETRIC<\\/h3><p class=\\\"technology__right__content__short-description\\\" data-bind=\\\"text: short_description\\\" style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 18px;\\\">Enlarged Sweet Spot<\\/p><p class=\\\"technology__right__content__description\\\" data-bind=\\\"html: description\\\" style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\\\"><\\/p><p style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\\\"><p><\\/p><\\/p><div data-content-type=\\\"row\\\" data-appearance=\\\"contained\\\" data-element=\\\"main\\\" style=\\\"box-sizing: border-box; max-width: 1280px; margin-left: auto !important; margin-right: auto !important;\\\"><div data-enable-parallax=\\\"0\\\" data-parallax-speed=\\\"0.5\\\" data-background-images=\\\"{}\\\" data-background-type=\\\"image\\\" data-video-loop=\\\"true\\\" data-video-play-only-visible=\\\"true\\\" data-video-lazy-load=\\\"true\\\" data-video-fallback-src=\\\"\\\" data-element=\\\"inner\\\" style=\\\"box-sizing: border-box; justify-content: flex-start; display: flex; flex-direction: column; background-position: left top; background-size: cover; background-repeat: no-repeat; background-attachment: scroll; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px 0px 10px; padding: 10px;\\\"><div data-content-type=\\\"text\\\" data-appearance=\\\"default\\\" data-element=\\\"main\\\" style=\\\"box-sizing: border-box; overflow-wrap: break-word; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px; padding: 0px;\\\"><ul><li style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\\\">ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>technology continues to help the world\\u2019s greatest players achieve global success.<\\/li><\\/ul><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\\\">Developed over 30 years ago, the ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>design increases the sweet spot by 7%*. Compared to a conventional round frame, a square-shaped ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>racquet generates a larger sweet spot by optimizing the intersection of the main and cross strings.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\\\">ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>delivers greater control without sacrificing power. ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>is a Trademark of Yonex CO., LTD.<br style=\\\"box-sizing: border-box;\\\">*Tested by Yonex<\\/p><\\/div><\\/div><\\/div>\",\"image\":\"[\\\"2024-12-07-67545a429750a.png\\\",\\\"2024-12-07-67545a4298734.png\\\"]\",\"price\":135,\"variations\":\"[{\\\"type\\\":\\\"5\\\",\\\"price\\\":135,\\\"stock\\\":130}]\",\"tax\":0,\"status\":1,\"created_at\":\"2024-12-07T14:22:58.000000Z\",\"updated_at\":\"2024-12-07T14:44:52.000000Z\",\"attributes\":\"[\\\"1\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"15\\\",\\\"position\\\":1},{\\\"id\\\":\\\"20\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_1\\\",\\\"title\\\":\\\"4U\\\",\\\"options\\\":[\\\"5\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"kg\",\"total_stock\":130,\"capacity\":100,\"daily_needs\":1,\"popularity_count\":0,\"is_featured\":0,\"view_count\":11,\"maximum_order_quantity\":100,\"translations\":[]}', '[{\"type\":\"5\"}]', 0.00, 'discount_on_category', 1, 0.00, '2024-12-07 14:48:36', '2024-12-07 14:48:36', 'null', 'kg', 1, 3, '2024-12-07', 'excluded'),
(5, 2, 100005, 135.00, '{\"id\":2,\"name\":\"NANOFLARE 700 PLAY\",\"description\":\"<p style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\\\"><img class=\\\"technology__right__content__image\\\" data-bind=\\\"attr: { src: manufacturer_image, alt: name }\\\" src=\\\"https:\\/\\/www.yonex.com\\/media\\/yonex\\/technology\\/B_Isometric_logo.png\\\" alt=\\\"ISOMETRIC\\\" style=\\\"max-width: 100%; height: auto; border: 0px; color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif;\\\"><span style=\\\"color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif;\\\"><\\/span><\\/p><h3 class=\\\"technology__right__content__title\\\" data-bind=\\\"text: name, attr: {id: \'tech_\' + id}\\\" id=\\\"tech_46\\\" style=\\\"color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 1.1rem; letter-spacing: 3px;\\\">ISOMETRIC<\\/h3><p class=\\\"technology__right__content__short-description\\\" data-bind=\\\"text: short_description\\\" style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 18px;\\\">Enlarged Sweet Spot<\\/p><p class=\\\"technology__right__content__description\\\" data-bind=\\\"html: description\\\" style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\\\"><\\/p><p style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\\\"><p><\\/p><\\/p><div data-content-type=\\\"row\\\" data-appearance=\\\"contained\\\" data-element=\\\"main\\\" style=\\\"box-sizing: border-box; max-width: 1280px; margin-left: auto !important; margin-right: auto !important;\\\"><div data-enable-parallax=\\\"0\\\" data-parallax-speed=\\\"0.5\\\" data-background-images=\\\"{}\\\" data-background-type=\\\"image\\\" data-video-loop=\\\"true\\\" data-video-play-only-visible=\\\"true\\\" data-video-lazy-load=\\\"true\\\" data-video-fallback-src=\\\"\\\" data-element=\\\"inner\\\" style=\\\"box-sizing: border-box; justify-content: flex-start; display: flex; flex-direction: column; background-position: left top; background-size: cover; background-repeat: no-repeat; background-attachment: scroll; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px 0px 10px; padding: 10px;\\\"><div data-content-type=\\\"text\\\" data-appearance=\\\"default\\\" data-element=\\\"main\\\" style=\\\"box-sizing: border-box; overflow-wrap: break-word; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px; padding: 0px;\\\"><ul><li style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\\\">ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>technology continues to help the world\\u2019s greatest players achieve global success.<\\/li><\\/ul><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\\\">Developed over 30 years ago, the ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>design increases the sweet spot by 7%*. Compared to a conventional round frame, a square-shaped ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>racquet generates a larger sweet spot by optimizing the intersection of the main and cross strings.<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\\\">ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>delivers greater control without sacrificing power. ISOMETRIC<sup style=\\\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\\\">TM<\\/sup><span>&nbsp;<\\/span>is a Trademark of Yonex CO., LTD.<br style=\\\"box-sizing: border-box;\\\">*Tested by Yonex<\\/p><\\/div><\\/div><\\/div>\",\"image\":\"[\\\"2024-12-07-67545a429750a.png\\\",\\\"2024-12-07-67545a4298734.png\\\"]\",\"price\":135,\"variations\":\"[{\\\"type\\\":\\\"4U5\\\",\\\"price\\\":135,\\\"stock\\\":100}]\",\"tax\":0,\"status\":1,\"created_at\":\"2024-12-07T14:22:58.000000Z\",\"updated_at\":\"2024-12-08T12:45:49.000000Z\",\"attributes\":\"[\\\"2\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"15\\\",\\\"position\\\":1},{\\\"id\\\":\\\"20\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_2\\\",\\\"title\\\":\\\"Weight\\\\\\/Grip\\\",\\\"options\\\":[\\\"4U5\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":100,\"capacity\":82.5,\"daily_needs\":1,\"popularity_count\":1,\"is_featured\":0,\"view_count\":118,\"maximum_order_quantity\":100,\"translations\":[]}', '[{\"type\":\"4U5\"}]', 0.00, 'discount_on_category', 2, 0.00, '2024-12-08 12:51:12', '2024-12-08 12:51:12', 'null', 'gm', 1, 3, '2024-12-08', 'excluded'),
(6, 7, 100005, 17688.00, '{\"id\":7,\"name\":\"EZONE 105\",\"description\":\"<p><img class=\\\"technology__right__content__image\\\" data-bind=\\\"attr: { src: manufacturer_image, alt: name }\\\" src=\\\"https:\\/\\/www.yonex.com\\/media\\/yonex\\/technology\\/T_Isometric_logo.png\\\" alt=\\\"ISOMETRIC\\\" style=\\\"max-width: 100%; height: auto; border: 0px; color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif; font-size: 16px;\\\"><span style=\\\"color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif; font-size: 16px;\\\"><\\/span><\\/p><h3 class=\\\"technology__right__content__title\\\" data-bind=\\\"text: name, attr: {id: \'tech_\' + id}\\\" id=\\\"tech_1\\\" style=\\\"color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; font-weight: 400; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 1.1rem; letter-spacing: 3px;\\\">ISOMETRIC<\\/h3><p class=\\\"technology__right__content__short-description\\\" data-bind=\\\"text: short_description\\\" style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 18px;\\\">SIGNATURE YONEX TECHNOLOGY SINCE 1980<\\/p><p class=\\\"technology__right__content__description\\\" data-bind=\\\"html: description\\\" style=\\\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\\\"><\\/p><p><p><\\/p><\\/p><div data-content-type=\\\"row\\\" data-appearance=\\\"contained\\\" data-element=\\\"main\\\" style=\\\"box-sizing: border-box; max-width: 1280px; margin-left: auto !important; margin-right: auto !important;\\\"><div data-enable-parallax=\\\"0\\\" data-parallax-speed=\\\"0.5\\\" data-background-images=\\\"{}\\\" data-background-type=\\\"image\\\" data-video-loop=\\\"true\\\" data-video-play-only-visible=\\\"true\\\" data-video-lazy-load=\\\"true\\\" data-video-fallback-src=\\\"\\\" data-element=\\\"inner\\\" data-pb-style=\\\"NDTMO4N\\\" style=\\\"box-sizing: border-box; display: flex; flex-direction: column;\\\"><div data-content-type=\\\"text\\\" data-appearance=\\\"default\\\" data-element=\\\"main\\\" style=\\\"box-sizing: border-box; overflow-wrap: break-word;\\\">Developed over 30 years ago, the ISOMETRIC\\u2122 design increases the sweet spot by 7%*. Compared to a conventional round frame, a square-shaped ISOMETRIC\\u2122 racquet generates a larger sweet spot by optimizing the intersection of the main and cross strings.<br style=\\\"box-sizing: border-box;\\\">ISOMETRIC\\u2122 technology delivers greater control without sacrificing power.<br style=\\\"box-sizing: border-box;\\\"><br style=\\\"box-sizing: border-box;\\\"><span style=\\\"box-sizing: border-box; font-size: 12px;\\\">ISOMETRIC\\u2122&nbsp; is a trademark of Yonex Co., Ltd.<\\/span><br style=\\\"box-sizing: border-box;\\\"><span style=\\\"box-sizing: border-box; font-size: 12px;\\\">*Tested by Yonex<\\/span><\\/div><\\/div><\\/div>\",\"image\":\"[\\\"2024-12-07-67546e7748937.png\\\",\\\"2024-12-07-67546e774a0b5.png\\\",\\\"2024-12-07-67546e774a369.png\\\"]\",\"price\":176.88,\"variations\":\"[{\\\"type\\\":\\\"24.5mm\\\",\\\"price\\\":17688,\\\"stock\\\":100},{\\\"type\\\":\\\"26.5mm\\\",\\\"price\\\":17688,\\\"stock\\\":32},{\\\"type\\\":\\\"23.5mm\\\",\\\"price\\\":17688,\\\"stock\\\":0}]\",\"tax\":0,\"status\":1,\"created_at\":\"2024-12-07T15:49:11.000000Z\",\"updated_at\":\"2024-12-08T12:41:14.000000Z\",\"attributes\":\"[\\\"4\\\"]\",\"category_ids\":\"[{\\\"id\\\":\\\"16\\\",\\\"position\\\":1},{\\\"id\\\":\\\"21\\\",\\\"position\\\":2}]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_4\\\",\\\"title\\\":\\\"WidthRange\\\",\\\"options\\\":[\\\"24.5 mm\\\",\\\" 26.5 mm\\\",\\\" 23.5 mm\\\"]}]\",\"discount\":0,\"discount_type\":\"percent\",\"tax_type\":\"percent\",\"unit\":\"gm\",\"total_stock\":132,\"capacity\":275,\"daily_needs\":1,\"popularity_count\":0,\"is_featured\":0,\"view_count\":5,\"maximum_order_quantity\":3000,\"translations\":[]}', '[{\"type\":\"26.5mm\"}]', 0.00, 'discount_on_category', 2, 0.00, '2024-12-08 12:51:12', '2024-12-08 12:51:12', 'null', 'gm', 1, 3, '2024-12-08', 'excluded');

-- --------------------------------------------------------

--
-- Table structure for table `order_images`
--

CREATE TABLE `order_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_partial_payments`
--

CREATE TABLE `order_partial_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `paid_with` varchar(255) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email_or_phone` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email_or_phone`, `token`, `created_at`, `otp_hit_count`, `is_temp_blocked`, `temp_block_time`) VALUES
('cuquangtuoi11@gmail.com', '146957', '2024-12-08 12:03:12', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` char(36) NOT NULL,
  `payer_id` varchar(64) DEFAULT NULL,
  `receiver_id` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `gateway_callback_url` varchar(191) DEFAULT NULL,
  `success_hook` varchar(100) DEFAULT NULL,
  `failure_hook` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `external_redirect_link` varchar(255) DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_id` varchar(64) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `payment_platform` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_requests`
--

INSERT INTO `payment_requests` (`id`, `payer_id`, `receiver_id`, `payment_amount`, `gateway_callback_url`, `success_hook`, `failure_hook`, `transaction_id`, `currency_code`, `payment_method`, `additional_data`, `is_paid`, `created_at`, `updated_at`, `payer_information`, `external_redirect_link`, `receiver_information`, `attribute_id`, `attribute`, `payment_platform`) VALUES
('e2210172-4780-49f7-9123-909ae19b4c86', '2', '100', 200.00, NULL, 'order_place', 'order_cancel', NULL, 'VND', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 0, '2024-12-06 16:10:23', '2024-12-06 16:10:23', '{\"name\":\"example customer\",\"email\":\"example@customer.com\",\"phone\":\"+88011223344\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733566223', 'order', 'app'),
('e1b6efe6-469d-431f-b018-3dcfaa0894e2', '2', '100', 200.00, NULL, 'order_place', 'order_cancel', NULL, 'VND', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 0, '2024-12-06 16:11:26', '2024-12-06 16:11:26', '{\"name\":\"example customer\",\"email\":\"example@customer.com\",\"phone\":\"+88011223344\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733566286', 'order', 'app'),
('45ff26b0-7fea-4535-8296-32c8d6870e8d', '2', '100', 400.00, NULL, 'order_place', 'order_cancel', 'pi_3QTLEJP9JWxrBBuU17WUyYqD', 'USD', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 1, '2024-12-06 16:21:25', '2024-12-06 16:27:22', '{\"name\":\"example customer\",\"email\":\"example@customer.com\",\"phone\":\"+88011223344\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733566885', 'order', 'app'),
('81094ebd-3f2b-4c8c-b974-77604ca4c588', '2', '100', 400.00, NULL, 'order_place', 'order_cancel', NULL, 'VND', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 0, '2024-12-07 11:41:14', '2024-12-07 11:41:14', '{\"name\":\"example customer\",\"email\":\"example@customer.com\",\"phone\":\"+88011223344\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733571674', 'order', 'app'),
('5fedee62-2fef-4750-aa20-503cc291c6ea', '2', '100', 400.00, NULL, 'order_place', 'order_cancel', NULL, 'VND', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 0, '2024-12-07 11:45:22', '2024-12-07 11:45:22', '{\"name\":\"example customer\",\"email\":\"example@customer.com\",\"phone\":\"+88011223344\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733571922', 'order', 'app'),
('156c5f71-d7a4-49c1-b363-7c9dcb321e12', '2', '100', 400.00, NULL, 'order_place', 'order_cancel', NULL, 'VND', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 0, '2024-12-07 11:48:19', '2024-12-07 11:48:19', '{\"name\":\"example customer\",\"email\":\"example@customer.com\",\"phone\":\"+88011223344\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733572099', 'order', 'app'),
('e840bb11-7f56-401c-9c55-d7e98fcdc384', '2', '100', 900.00, NULL, 'order_place', 'order_cancel', NULL, 'USD', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 0, '2024-12-07 11:57:16', '2024-12-07 11:57:16', '{\"name\":\"example customer\",\"email\":\"example@customer.com\",\"phone\":\"+88011223344\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733572636', 'order', 'app'),
('3cc5986e-d02e-402f-8451-e51886304884', '2', '100', 900.00, NULL, 'order_place', 'order_cancel', 'pi_3QTMg4LMdBzZrufD16IIRPZ9', 'USD', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 1, '2024-12-07 11:58:17', '2024-12-07 12:00:06', '{\"name\":\"example customer\",\"email\":\"example@customer.com\",\"phone\":\"+88011223344\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733572697', 'order', 'app'),
('bb42bc9e-69de-41af-adc3-6e314a4dff97', '1', '100', 235.00, NULL, 'order_place', 'order_cancel', 'pi_3QTPJ8LMdBzZrufD1AB6r89o', 'USD', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 1, '2024-12-07 14:45:31', '2024-12-07 14:48:36', '{\"name\":\"Tuoi Cu\",\"email\":\"cuquangtuoi11@gmail.com\",\"phone\":\"+84901287957\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733582731', 'order', 'app'),
('34887785-e8fe-4bc9-93b5-0d7d3d632b6f', '1', '100', 244.25, NULL, 'order_place', 'order_cancel', NULL, 'USD', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 0, '2024-12-08 11:26:53', '2024-12-08 11:26:53', '{\"name\":\"Tuoi Cu\",\"email\":\"cuquangtuoi11@gmail.com\",\"phone\":\"+84901287957\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733657213', 'order', 'app'),
('649843da-ba96-4631-bf2d-90d4f3ae6c22', '2', '100', 34746.00, NULL, 'order_place', 'order_cancel', 'pi_3QTjx3LMdBzZrufD1YnbT16L', 'USD', 'stripe', '{\"business_name\":\"shoptn\",\"business_logo\":\"http:\\/\\/10.0.2.2\\/storage\\/app\\/public\\/restaurant\\/2021-06-21-60d0370804378.png\"}', 1, '2024-12-08 12:48:07', '2024-12-08 12:51:12', '{\"name\":\"Phu Doan Thien\",\"email\":\"tuoi321123@gmail.com\",\"phone\":\"+84328220703\",\"address\":\"\"}', 'http://10.0.2.2/order-successful', '{\"name\":\"receiver_name\",\"image\":\"example.png\"}', '1733662087', 'order', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `variations` text DEFAULT NULL,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) NOT NULL DEFAULT 'percent',
  `tax_type` varchar(20) NOT NULL DEFAULT 'percent',
  `unit` varchar(255) NOT NULL DEFAULT 'pc',
  `total_stock` bigint(20) NOT NULL DEFAULT 0,
  `capacity` decimal(8,2) DEFAULT NULL,
  `daily_needs` tinyint(1) NOT NULL DEFAULT 0,
  `popularity_count` int(11) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `maximum_order_quantity` int(11) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `variations`, `tax`, `status`, `created_at`, `updated_at`, `attributes`, `category_ids`, `choice_options`, `discount`, `discount_type`, `tax_type`, `unit`, `total_stock`, `capacity`, `daily_needs`, `popularity_count`, `is_featured`, `view_count`, `maximum_order_quantity`) VALUES
(2, 'NANOFLARE 700 PLAY', '<p style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\"><img class=\"technology__right__content__image\" data-bind=\"attr: { src: manufacturer_image, alt: name }\" src=\"https://www.yonex.com/media/yonex/technology/B_Isometric_logo.png\" alt=\"ISOMETRIC\" style=\"max-width: 100%; height: auto; border: 0px; color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif;\"><span style=\"color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif;\"></span></p><h3 class=\"technology__right__content__title\" data-bind=\"text: name, attr: {id: \'tech_\' + id}\" id=\"tech_46\" style=\"color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 1.1rem; letter-spacing: 3px;\">ISOMETRIC</h3><p class=\"technology__right__content__short-description\" data-bind=\"text: short_description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 18px;\">Enlarged Sweet Spot</p><p class=\"technology__right__content__description\" data-bind=\"html: description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\"></p><p style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\"><p></p></p><div data-content-type=\"row\" data-appearance=\"contained\" data-element=\"main\" style=\"box-sizing: border-box; max-width: 1280px; margin-left: auto !important; margin-right: auto !important;\"><div data-enable-parallax=\"0\" data-parallax-speed=\"0.5\" data-background-images=\"{}\" data-background-type=\"image\" data-video-loop=\"true\" data-video-play-only-visible=\"true\" data-video-lazy-load=\"true\" data-video-fallback-src=\"\" data-element=\"inner\" style=\"box-sizing: border-box; justify-content: flex-start; display: flex; flex-direction: column; background-position: left top; background-size: cover; background-repeat: no-repeat; background-attachment: scroll; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px 0px 10px; padding: 10px;\"><div data-content-type=\"text\" data-appearance=\"default\" data-element=\"main\" style=\"box-sizing: border-box; overflow-wrap: break-word; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px; padding: 0px;\"><ul><li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\">ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>technology continues to help the world’s greatest players achieve global success.</li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\">Developed over 30 years ago, the ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>design increases the sweet spot by 7%*. Compared to a conventional round frame, a square-shaped ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>racquet generates a larger sweet spot by optimizing the intersection of the main and cross strings.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\">ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>delivers greater control without sacrificing power. ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>is a Trademark of Yonex CO., LTD.<br style=\"box-sizing: border-box;\">*Tested by Yonex</p></div></div></div>', '[\"2024-12-07-67545a429750a.png\",\"2024-12-07-67545a4298734.png\"]', 135, '[{\"type\":\"4U5\",\"price\":135,\"stock\":98}]', 0.00, 1, '2024-12-07 14:22:58', '2024-12-08 13:06:52', '[\"2\"]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[{\"name\":\"choice_2\",\"title\":\"Weight\\/Grip\",\"options\":[\"4U5\"]}]', 0.00, 'percent', 'percent', 'gm', 98, 82.50, 1, 2, 0, 121, 100),
(3, 'NANOFLARE 700 GAME', '<p><img class=\"technology__right__content__image\" data-bind=\"attr: { src: manufacturer_image, alt: name }\" src=\"https://www.yonex.com/media/yonex/technology/B_Isometric_logo.png\" alt=\"ISOMETRIC\" style=\"max-width: 100%; height: auto; border: 0px; color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif; font-size: 16px;\"><span style=\"color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif; font-size: 16px;\"></span></p><h3 class=\"technology__right__content__title\" data-bind=\"text: name, attr: {id: \'tech_\' + id}\" id=\"tech_46\" style=\"color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; font-weight: 400; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 1.1rem; letter-spacing: 3px;\">ISOMETRIC</h3><p class=\"technology__right__content__short-description\" data-bind=\"text: short_description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 18px;\">Enlarged Sweet Spot</p><p class=\"technology__right__content__description\" data-bind=\"html: description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\"></p><p><p></p></p><div data-content-type=\"row\" data-appearance=\"contained\" data-element=\"main\" style=\"box-sizing: border-box; max-width: 1280px; margin-left: auto !important; margin-right: auto !important;\"><div data-enable-parallax=\"0\" data-parallax-speed=\"0.5\" data-background-images=\"{}\" data-background-type=\"image\" data-video-loop=\"true\" data-video-play-only-visible=\"true\" data-video-lazy-load=\"true\" data-video-fallback-src=\"\" data-element=\"inner\" style=\"box-sizing: border-box; justify-content: flex-start; display: flex; flex-direction: column; background-position: left top; background-size: cover; background-repeat: no-repeat; background-attachment: scroll; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px 0px 10px; padding: 10px;\"><div data-content-type=\"text\" data-appearance=\"default\" data-element=\"main\" style=\"box-sizing: border-box; overflow-wrap: break-word; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px; padding: 0px;\"><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\">ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>technology continues to help the world’s greatest players achieve global success.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\">Developed over 30 years ago, the ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>design increases the sweet spot by 7%*. Compared to a conventional round frame, a square-shaped ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>racquet generates a larger sweet spot by optimizing the intersection of the main and cross strings.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\">ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>delivers greater control without sacrificing power. ISOMETRIC<sup style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">TM</sup><span>&nbsp;</span>is a Trademark of Yonex CO., LTD.<br style=\"box-sizing: border-box;\">*Tested by Yonex</p></div></div></div>', '[\"2024-12-07-675465cd99fc6.png\",\"2024-12-07-675465cd9b645.png\"]', 90.71, '[{\"type\":\"4U5\",\"price\":90.71,\"stock\":15},{\"type\":\"4U6\",\"price\":90.71,\"stock\":15}]', 0.00, 1, '2024-12-07 15:12:13', '2024-12-07 15:26:43', '[\"2\"]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[{\"name\":\"choice_2\",\"title\":\"Weight\\/Grip\",\"options\":[\"4U5 \",\" 4U6\"]}]', 16.66, 'percent', 'percent', 'gm', 30, 84.10, 0, 0, 0, 6, 150),
(4, 'ASTROX 88 PLAY', '<span style=\"font-weight: bolder; color: rgb(51, 62, 68); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify;\">- AERO+BOX FRAME:</span><span style=\"color: rgb(51, 62, 68); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify;\">&nbsp;Khung vợt Astrox 88 Play 2024 kết hợp giữa thiết kế truyền thống và hiện đại, các cạnh khung mượt của Aero Frame giúp giảm tối đa sức cản không khí cùng sự cứng cáp, ổn định của Box Frame đem lại cho người chơi cây vợt toàn diện hơn và ổn định hơn, vừa phòng thủ nhanh vừa bung lực mạnh mẽ.<br><br></span><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">- ISOMETRIC:</span>&nbsp;Khung vợt đẳng cự với phần đầu hơi vuông, được Yonex nghiên cứu trong suốt 30 năm giúp mở rộng điểm tiếp xúc trên vợt cầu lông Yonex, tăng điểm đánh trên mặt khung, nâng cao cảm giác cầu ổn định và độ chính xác trong từng pha cầu. Đồng thời, công nghệ này cũng cung cấp cho vợt khả năng bộc phát lực mạnh mẽ, hỗ trợ cho các pha cầu lệch tâm, hụt lực có hướng bay tốt nhất.</span></span></p><div><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><br></span></span></div><p></p>', '[\"2024-12-07-67546871b9233.png\"]', 53.54, '[{\"type\":\"3U5\",\"price\":53.54,\"stock\":0},{\"type\":\"3U6\",\"price\":53.54,\"stock\":0},{\"type\":\"4U6\",\"price\":53.54,\"stock\":13},{\"type\":\"4U5\",\"price\":53.54,\"stock\":52}]', 0.00, 1, '2024-12-07 15:23:29', '2024-12-07 15:26:32', '[\"2\"]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[{\"name\":\"choice_2\",\"title\":\"Weight\\/Grip\",\"options\":[\"3U5\",\" 3U6\",\" 4U6\",\" 4U5\"]}]', 7.36, 'percent', 'percent', 'gm', 65, 84.00, 0, 0, 0, 4, 300),
(5, 'AEROBITE BOOST', '<h2 style=\"font-weight: 500; font-size: 2rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; color: rgb(51, 62, 68);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">1. Giới thiệu Dây cước căng vợt Yonex BG Aerobite Boost</span></span></span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">-&nbsp;<a href=\"https://shopvnb.com/day-cuoc-cang-vot-yonex-bg-aerobite-boost.html\" style=\"color: rgb(233, 82, 33); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Dây cước căng vợt Yonex BG Aerobite Boost</a>&nbsp;kết hợp lõi đa sợi nylon cường độ cao với lớp ngoài nylon polymer cao bện đặc biệt. Cấu trúc này mang lại cho dây sự kết hợp độc đáo giữa sức mạnh, khả năng kiểm soát và độ bền. Công nghệ&nbsp;Vectran™ trong lõi cũng giúp tăng lực đẩy của dây và mang lại cảm giác cầu chân thực hỗ trợ tối đa trong việc kiểm soát đường cầu theo ý muốn.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">- Với dây dọc có đường kính 0.72 mm dài 5.5m, đường kính dây ngang nhỏ hơn với 0.61 mm dài 5m. Với lõi dây được cấu tạo từ đa sợi tơ Polymer Nylon độ ma sát cao, phần vỏ làm từ sợi bện đặc biệt Polymer Nylon thô độ bền cao. Ngoài ra dây dọc còn được phủ thêm lớp Polyeurethan cung cấp thêm sự cứng cáp, bền bỉ cho dây.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">- Ngoài ra, các bạn có thể tham khảo thêm các loại&nbsp;<a href=\"https://shopvnb.com/cuoc-dan-vot-cau-long.html\" style=\"color: rgb(233, 82, 33); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">cước đan vợt cầu lông</a>&nbsp;khác tại ShopVNB.</span></span></p><h2 style=\"font-weight: 500; font-size: 2rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; color: rgb(51, 62, 68);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">2. Thông số của&nbsp;Dây cước căng vợt Yonex BG Aerobite Boost</span></span></span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\"></span></span></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-size: 16px;\">- Chiều dài: 33 feet (10m)</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-size: 16px;\">- Đường kính: dây dọc 0.72 mm, dây ngang 0.61 mm</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-size: 16px;\">- Lõi:&nbsp;Lõi đa sợi tơ Polymer Nylon độ bền cao&nbsp;pha sợi Vectran</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-size: 16px;\">- Vỏ:&nbsp;Sợi bện đặc biệt Polymer Nylon thô độ bền cao</span></p><h3 style=\"font-weight: 500; font-size: 1.75rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; color: rgb(51, 62, 68);\"><span style=\"font-weight: bolder;\"><span style=\"font-size: 16px;\">* Khả năng tối ưu của Dây cước căng vợt Yonex BG Aerobite Boost</span></span></h3><h3 style=\"font-weight: 500; font-size: 1.75rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; color: rgb(51, 62, 68);\"><span style=\"font-size: 16px;\">- Lực đánh cầu: 8</span></h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-size: 16px;\">- Độ Bền: 7</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-size: 16px;\">- Âm thanh cao: 7</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-size: 16px;\">- Hấp thụ shock: 6</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-size: 16px;\">- Kiểm Soát: 10</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; text-align: center;\"><span style=\"font-size: 16px;\"></span></p><h2 style=\"font-weight: 500; font-size: 2rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; color: rgb(51, 62, 68);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">3. Các công nghệ được áp dụng trên&nbsp;Dây cước căng vợt Yonex BG Aerobite Boost</span></span></span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">- Multi filament:&nbsp;</span>YONEX Multi Filament có đường kính siêu mịn cho độ bền cao và cảm giác mềm mại khi va chạm.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">- Cup-Stack Carbon Nanotube:&nbsp;</span>Cấu trúc YONEX hợp chất Cup-Stack Carbon Nanotube có độ đàn hồi gấp bốn lần so với ống nano carbon, kết hợp với lớp phủ ống nano có độ bền cao, giảm thiểu việc không bị đứt dây ở các điểm giao nhau. Cấu trúc này mang lại độ bền cao và sức đẩy cao.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">- Polyeurethan:</span>&nbsp;Cho khả năng phục hồi cao lại&nbsp;trạng thái ban đầu, tăng khả năng bền bỉ cho dây.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">- VectranTM&nbsp;+ oval-shaped&nbsp;<span style=\"position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em;\">&nbsp;</span>filament:&nbsp;</span>VectranTM là một loại siêu sợi, mạnh hơn gấp đôi so với nylon, được quấn quanh lõi của dây chính để tránh kéo dãn và tăng độ bền. Trong khi đó, một lớp dây hình bầu dục, tăng khả năng chịu biến dạng, được sử dụng trong lớp bọc bên ngoài. Sự kết hợp này hạn chế tổn thất năng lượng khi va chạm, bổ sung thêm sức mạnh cho cú đánh.</span></span></p><h2 style=\"font-weight: 500; font-size: 2rem; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; color: rgb(51, 62, 68);\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\"><span style=\"font-weight: bolder;\">4. Đối tượng phù hợp với&nbsp;Dây cước căng vợt Yonex BG Aerobite Boost</span></span></span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">- Dây cước căng vợt Yonex BG Aerobite Boost hướng đến người chơi phong trào, bán chuyên, chuyên nghiệp, vận động viên đang tìm kiếm cho mình một sợi cước có độ cứng mặt vợt, độ nảy cao, cho khả năng kiểm soát cầu tốt nhất trên sân.</span></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(51, 62, 68); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px;\">- Nếu bạn đang tìm kiếm một loại cước trợ lực tốt, linh hoạt trong các pha cầu, chuẩn nhất hiện nay, được kết hợp từ hai sợi riêng biệt khác nhau tạo nên sự khác biệt&nbsp;so với các loại cước đan vợt cầu lông khác.&nbsp;</span></span></p>', '[\"2024-12-07-67546a800a7b3.png\"]', 10.16, '[{\"type\":\"JP\",\"price\":11.1,\"stock\":500},{\"type\":\"SP\",\"price\":10.16,\"stock\":500}]', 0.00, 1, '2024-12-07 15:32:16', '2024-12-08 12:24:43', '[\"3\"]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[{\"name\":\"choice_3\",\"title\":\"Version\",\"options\":[\"JP\",\"SP\"]}]', 16.67, 'percent', 'percent', 'gm', 1000, 10.31, 1, 0, 0, 1, 1000),
(6, 'PRECISION SCAN', '<h3 style=\"color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; font-weight: 400; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 61px; letter-spacing: 4px; text-align: center; text-transform: uppercase;\">FEATURES</h3><h1 class=\"page-title\" style=\"color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; font-weight: 400; line-height: 1.1; font-size: 3.6rem; margin-bottom: 16.5px; letter-spacing: 7px;\"><p style=\"margin-bottom: 1.1rem; color: rgb(79, 74, 71); font-size: 16px; letter-spacing: normal;\">Precisely scan the total weight and balance of racquets by placing the racquet on the machine with a touch of a button.</p><br style=\"color: rgb(79, 74, 71); font-size: 16px; letter-spacing: normal;\"><p style=\"margin-bottom: 1.1rem; color: rgb(79, 74, 71); font-size: 16px; letter-spacing: normal;\"><font size=\"+1\">QUICK SCAN: COMPUTER UNIT</font><br><font color=\"gray\">The computer unit will provide the total weight, side weights, balance, swing weight, and performance swing weight.<br>Performance swing weight is a Yonex-exclusive measurement - more accurate than a normal swing weight - and is calculated by using the values of the total weight, racquet balance, and swing weight. On the side is a USB port for convenient charging.</font></p><br style=\"color: rgb(79, 74, 71); font-size: 16px; letter-spacing: normal;\"><p style=\"margin-bottom: 1.1rem; color: rgb(79, 74, 71); font-size: 16px; letter-spacing: normal;\"><font size=\"+1\">ACCURATE: COVER, BAR, RING</font><br><font color=\"gray\">The acrylic cover protects the machine’s three main sensors while not in use.<br>A calibration bar and calibration ring is provide to ensure the machine gives accurate swing weight measurements.</font></p><div><font color=\"gray\"><br></font></div></h1>', '[\"2024-12-07-67546ce05d0ef.png\",\"2024-12-07-67546ce05e8db.png\",\"2024-12-07-67546ce05ed5d.png\"]', 2324.19, '[{\"type\":\"PRECISIONSCA\",\"price\":2324.19,\"stock\":40}]', 0.00, 1, '2024-12-07 15:42:24', '2024-12-08 12:24:41', '[\"3\"]', '[{\"id\":\"15\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '[{\"name\":\"choice_3\",\"title\":\"Version\",\"options\":[\"PRECISION SCA\"]}]', 0.00, 'percent', 'percent', 'kg', 40, 15.00, 1, 0, 0, 2, 40),
(7, 'EZONE 105', '<p><img class=\"technology__right__content__image\" data-bind=\"attr: { src: manufacturer_image, alt: name }\" src=\"https://www.yonex.com/media/yonex/technology/T_Isometric_logo.png\" alt=\"ISOMETRIC\" style=\"max-width: 100%; height: auto; border: 0px; color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif; font-size: 16px;\"><span style=\"color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif; font-size: 16px;\"></span></p><h3 class=\"technology__right__content__title\" data-bind=\"text: name, attr: {id: \'tech_\' + id}\" id=\"tech_1\" style=\"color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; font-weight: 400; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 1.1rem; letter-spacing: 3px;\">ISOMETRIC</h3><p class=\"technology__right__content__short-description\" data-bind=\"text: short_description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 18px;\">SIGNATURE YONEX TECHNOLOGY SINCE 1980</p><p class=\"technology__right__content__description\" data-bind=\"html: description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\"></p><p><p></p></p><div data-content-type=\"row\" data-appearance=\"contained\" data-element=\"main\" style=\"box-sizing: border-box; max-width: 1280px; margin-left: auto !important; margin-right: auto !important;\"><div data-enable-parallax=\"0\" data-parallax-speed=\"0.5\" data-background-images=\"{}\" data-background-type=\"image\" data-video-loop=\"true\" data-video-play-only-visible=\"true\" data-video-lazy-load=\"true\" data-video-fallback-src=\"\" data-element=\"inner\" data-pb-style=\"NDTMO4N\" style=\"box-sizing: border-box; display: flex; flex-direction: column;\"><div data-content-type=\"text\" data-appearance=\"default\" data-element=\"main\" style=\"box-sizing: border-box; overflow-wrap: break-word;\">Developed over 30 years ago, the ISOMETRIC™ design increases the sweet spot by 7%*. Compared to a conventional round frame, a square-shaped ISOMETRIC™ racquet generates a larger sweet spot by optimizing the intersection of the main and cross strings.<br style=\"box-sizing: border-box;\">ISOMETRIC™ technology delivers greater control without sacrificing power.<br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12px;\">ISOMETRIC™&nbsp; is a trademark of Yonex Co., Ltd.</span><br style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 12px;\">*Tested by Yonex</span></div></div></div>', '[\"2024-12-07-67546e7748937.png\",\"2024-12-07-67546e774a0b5.png\",\"2024-12-07-67546e774a369.png\"]', 176.88, '[{\"type\":\"24.5mm\",\"price\":17688,\"stock\":100},{\"type\":\"26.5mm\",\"price\":17688,\"stock\":30},{\"type\":\"23.5mm\",\"price\":17688,\"stock\":0}]', 0.00, 1, '2024-12-07 15:49:11', '2024-12-08 12:52:16', '[\"4\"]', '[{\"id\":\"16\",\"position\":1},{\"id\":\"21\",\"position\":2}]', '[{\"name\":\"choice_4\",\"title\":\"WidthRange\",\"options\":[\"24.5 mm\",\" 26.5 mm\",\" 23.5 mm\"]}]', 0.00, 'percent', 'percent', 'gm', 130, 275.00, 1, 1, 0, 6, 3000),
(8, 'REGNA', '<p style=\"text-align: justify; \"><img class=\"technology__right__content__image\" data-bind=\"attr: { src: manufacturer_image, alt: name }\" src=\"https://www.yonex.com/media/yonex/technology/isometric_ip.png\" alt=\"ISOMETRIC TIP\" style=\"max-width: 100%; height: auto; border: 0px; color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif; font-size: 16px;\"><span style=\"color: rgb(79, 74, 71); font-family: Oswald, Lato, sans-serif; font-size: 16px;\"></span></p><h3 class=\"technology__right__content__title\" data-bind=\"text: name, attr: {id: \'tech_\' + id}\" id=\"tech_512\" style=\"text-align: justify; color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; font-weight: 400; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 1.1rem; letter-spacing: 3px;\">ISOMETRIC TIP</h3><p class=\"technology__right__content__short-description\" data-bind=\"text: short_description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 18px;\"></p><p class=\"technology__right__content__description\" data-bind=\"html: description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\"></p><p><p></p></p><div data-content-type=\"row\" data-appearance=\"contained\" data-element=\"main\" style=\"box-sizing: border-box; max-width: 1280px; margin-left: auto !important; margin-right: auto !important;\"><div data-enable-parallax=\"0\" data-parallax-speed=\"0.5\" data-background-images=\"{}\" data-background-type=\"image\" data-video-loop=\"true\" data-video-play-only-visible=\"true\" data-video-lazy-load=\"true\" data-video-fallback-src=\"\" data-element=\"inner\" style=\"box-sizing: border-box; justify-content: flex-start; display: flex; flex-direction: column; background-position: left top; background-size: cover; background-repeat: no-repeat; background-attachment: scroll; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px 0px 10px; padding: 10px;\"><div data-content-type=\"text\" data-appearance=\"default\" data-element=\"main\" style=\"box-sizing: border-box; overflow-wrap: break-word; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px; padding: 0px;\"><p style=\"text-align: justify; box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\">Introducing our new shape \"ISOMETRIC TIP\" applied from our original ISOMETRIC technology. This square racket shape theory was inspired by the \"sweet spot\" of a tennis racket. The \"sweet spot\" of the tip has been enlarged, thus increasing stiffness and improvement of stability upon landing.</p><p style=\"text-align: justify; box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\"><br></p><h3 class=\"technology__right__content__title\" data-bind=\"text: name, attr: {id: \'tech_\' + id}\" id=\"tech_554\" style=\"text-align: justify; color: rgb(31, 36, 39); font-family: Oswald, Lato, sans-serif; font-weight: 400; line-height: 1.1; font-size: 26px; margin-top: 2.2rem; margin-bottom: 1.1rem; letter-spacing: 3px;\">MICRO CORE</h3><p class=\"technology__right__content__short-description\" data-bind=\"text: short_description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 18px;\"></p><p class=\"technology__right__content__description\" data-bind=\"html: description\" style=\"margin-bottom: 1.1rem; color: rgb(89, 89, 89); font-family: ProximaNova, Oswald, sans-serif; font-size: 16px;\"></p><p style=\"margin-bottom: 1.1rem;\"><p></p></p><div data-content-type=\"row\" data-appearance=\"contained\" data-element=\"main\" style=\"box-sizing: border-box; max-width: 1280px; margin-left: auto !important; margin-right: auto !important;\"><div data-enable-parallax=\"0\" data-parallax-speed=\"0.5\" data-background-images=\"{}\" data-background-type=\"image\" data-video-loop=\"true\" data-video-play-only-visible=\"true\" data-video-lazy-load=\"true\" data-video-fallback-src=\"\" data-element=\"inner\" style=\"box-sizing: border-box; justify-content: flex-start; display: flex; flex-direction: column; background-position: left top; background-size: cover; background-repeat: no-repeat; background-attachment: scroll; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px 0px 10px; padding: 10px;\"><div data-content-type=\"text\" data-appearance=\"default\" data-element=\"main\" style=\"box-sizing: border-box; overflow-wrap: break-word; border-style: none; border-width: 1px; border-radius: 0px; margin: 0px; padding: 0px;\"><p style=\"text-align: justify; box-sizing: border-box; margin-top: 0px; margin-bottom: 1.1rem;\">A high density core material with centered-gravity and rigidity. These properties allow the material to maximize&nbsp; vibration absorption and suppression of vibration during sliding.</p></div></div></div></div></div></div>', '[\"2024-12-08-67559135e9d21.png\",\"2024-12-08-67559135eb6d9.png\"]', 105, '[{\"type\":\"154\",\"price\":105,\"stock\":100},{\"type\":\"158\",\"price\":105,\"stock\":100}]', 0.00, 1, '2024-12-08 12:29:41', '2024-12-08 12:36:00', '[\"5\"]', '[{\"id\":\"19\",\"position\":1},{\"id\":\"48\",\"position\":2}]', '[{\"name\":\"choice_5\",\"title\":\"Size\",\"options\":[\"154\",\"158\"]}]', 0.00, 'percent', 'percent', 'gm', 200, 175.00, 0, 0, 0, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `product_searched_by_user`
--

CREATE TABLE `product_searched_by_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_searched_by_user`
--

INSERT INTO `product_searched_by_user` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-12-07 16:01:27', '2024-12-07 16:01:27'),
(2, 1, 3, '2024-12-07 16:01:27', '2024-12-07 16:01:27'),
(3, 2, 2, '2024-12-08 12:39:18', '2024-12-08 12:39:18'),
(4, 2, 3, '2024-12-08 12:39:18', '2024-12-08 12:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recent_searches`
--

CREATE TABLE `recent_searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_searches`
--

INSERT INTO `recent_searches` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'seeeu xe', '2024-12-07 12:04:34', '2024-12-07 12:04:34'),
(2, 'te', '2024-12-07 12:04:49', '2024-12-07 12:04:49'),
(3, 'tuoi', '2024-12-07 16:01:21', '2024-12-07 16:01:21'),
(4, 'nano', '2024-12-07 16:01:27', '2024-12-07 16:01:27'),
(5, '32', '2024-12-08 10:43:59', '2024-12-08 10:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `register_devices`
--

CREATE TABLE `register_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `browser_name` varchar(255) DEFAULT NULL,
  `browser_version` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `device_platform` varchar(255) DEFAULT NULL,
  `is_robot` varchar(255) NOT NULL DEFAULT '0',
  `unique_identifier` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_devices`
--

INSERT INTO `register_devices` (`id`, `user_id`, `user_type`, `ip_address`, `browser_name`, `browser_version`, `device_type`, `device_platform`, `is_robot`, `unique_identifier`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '::1', 'Chrome', '131.0.0.0', 'WebKit', 'Windows', '0', '8e79d141f20a64a0c35702d20986e3fe', '2024-12-05 23:17:49', '2024-12-05 23:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `attachment`, `rating`, `is_active`, `created_at`, `updated_at`, `order_id`) VALUES
(1, 2, 1, 'So beautiful', '[]', 5, 1, '2024-12-07 14:50:28', '2024-12-07 14:50:28', 100004);

-- --------------------------------------------------------

--
-- Table structure for table `searched_categories`
--

CREATE TABLE `searched_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recent_search_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searched_categories`
--

INSERT INTO `searched_categories` (`id`, `recent_search_id`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, '2024-12-07 12:04:49', '2024-12-07 12:04:49'),
(2, 4, 15, NULL, '2024-12-07 16:01:27', '2024-12-07 16:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `searched_data`
--

CREATE TABLE `searched_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `attribute_id` bigint(20) DEFAULT NULL,
  `response_data_count` int(11) NOT NULL DEFAULT 0,
  `volume` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searched_keyword_counts`
--

CREATE TABLE `searched_keyword_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recent_search_id` bigint(20) DEFAULT NULL,
  `keyword_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searched_keyword_counts`
--

INSERT INTO `searched_keyword_counts` (`id`, `recent_search_id`, `keyword_count`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-12-07 12:04:34', '2024-12-07 12:04:34'),
(2, 2, 1, '2024-12-07 12:04:49', '2024-12-07 12:04:49'),
(3, 3, 1, '2024-12-07 16:01:21', '2024-12-07 16:01:21'),
(4, 4, 1, '2024-12-07 16:01:27', '2024-12-07 16:01:27'),
(5, 5, 1, '2024-12-08 10:43:59', '2024-12-08 10:43:59'),
(6, 4, 1, '2024-12-08 10:44:09', '2024-12-08 10:44:09'),
(7, 4, 1, '2024-12-08 10:44:13', '2024-12-08 10:44:13'),
(8, 4, 1, '2024-12-08 10:44:16', '2024-12-08 10:44:16'),
(9, 4, 1, '2024-12-08 10:44:21', '2024-12-08 10:44:21'),
(10, 4, 1, '2024-12-08 12:39:18', '2024-12-08 12:39:18'),
(11, 4, 1, '2024-12-08 12:39:25', '2024-12-08 12:39:25'),
(12, 4, 1, '2024-12-08 12:39:25', '2024-12-08 12:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `searched_keyword_users`
--

CREATE TABLE `searched_keyword_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recent_search_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searched_keyword_users`
--

INSERT INTO `searched_keyword_users` (`id`, `recent_search_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2024-12-07 12:04:34', '2024-12-07 12:04:34'),
(2, 2, NULL, '2024-12-07 12:04:49', '2024-12-07 12:04:49'),
(3, 3, 1, '2024-12-07 16:01:21', '2024-12-07 16:01:21'),
(4, 4, 1, '2024-12-07 16:01:27', '2024-12-07 16:01:27'),
(5, 5, 1, '2024-12-08 10:43:59', '2024-12-08 10:43:59'),
(6, 4, 1, '2024-12-08 10:44:09', '2024-12-08 10:44:09'),
(7, 4, 1, '2024-12-08 10:44:13', '2024-12-08 10:44:13'),
(8, 4, 1, '2024-12-08 10:44:16', '2024-12-08 10:44:16'),
(9, 4, 1, '2024-12-08 10:44:21', '2024-12-08 10:44:21'),
(10, 4, 2, '2024-12-08 12:39:18', '2024-12-08 12:39:18'),
(11, 4, 2, '2024-12-08 12:39:25', '2024-12-08 12:39:25'),
(12, 4, 2, '2024-12-08 12:39:25', '2024-12-08 12:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `searched_products`
--

CREATE TABLE `searched_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recent_search_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searched_products`
--

INSERT INTO `searched_products` (`id`, `recent_search_id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, '2024-12-07 12:04:49', '2024-12-07 12:04:49'),
(2, 4, 2, NULL, '2024-12-07 16:01:27', '2024-12-07 16:01:27'),
(3, 4, 3, NULL, '2024-12-07 16:01:27', '2024-12-07 16:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`, `date`) VALUES
(1, '10:30:00', '19:30:00', 1, '2021-04-22 04:08:15', '2024-12-06 16:16:46', '2021-04-22'),
(2, '01:37:00', '11:00:00', 1, '2021-04-22 04:08:33', '2024-12-06 16:16:39', '2021-05-08'),
(3, '09:50:00', '23:30:00', 1, '2021-04-22 04:08:55', '2024-12-06 16:16:43', '2021-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT 0,
  `cm_firebase_token` varchar(255) DEFAULT NULL,
  `temporary_token` varchar(255) DEFAULT NULL,
  `login_medium` varchar(255) NOT NULL DEFAULT 'general',
  `loyalty_point` double NOT NULL DEFAULT 0,
  `wallet_balance` double NOT NULL DEFAULT 0,
  `referral_code` varchar(255) DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `language_code` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verification_token`, `phone`, `is_block`, `cm_firebase_token`, `temporary_token`, `login_medium`, `loyalty_point`, `wallet_balance`, `referral_code`, `referred_by`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `language_code`) VALUES
(1, 'Tuoi', 'Cu', 'cuquangtuoi11@gmail.com', NULL, 0, NULL, '$2y$10$a7tYsPXDY/eRFGinOFFSiu2ZRiTnPNBdF2G1.B/sQvCqgRdrs.19y', NULL, '2024-12-07 12:48:11', '2024-12-08 12:04:25', NULL, '+84901287957', 0, '@', NULL, 'general', 0, 0, 'uuIf8msLWWeAP9QQWArG', NULL, 0, 0, NULL, ''),
(2, 'Phu', 'Doan Thien', 'tuoi321123@gmail.com', NULL, 0, NULL, '$2y$10$Gb3jTKeY44oI/FF8.CM2ZuHuHxobgdocLkoZOuTn/oa39V9GOpNki', NULL, '2024-12-08 12:34:45', '2024-12-08 12:38:47', NULL, '+84328220703', 0, '@', NULL, 'general', 0, 0, '9YJqB65UXli8gk2qBB5u', NULL, 0, 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `visited_products`
--

CREATE TABLE `visited_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_bonuses`
--

CREATE TABLE `wallet_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `bonus_type` varchar(255) NOT NULL,
  `bonus_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `minimum_add_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `maximum_bonus_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `credit` decimal(24,2) NOT NULL DEFAULT 0.00,
  `debit` decimal(24,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(24,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_discounts`
--
ALTER TABLE `category_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_discounts_category_id_unique` (`category_id`);

--
-- Indexes for table `category_searched_by_user`
--
ALTER TABLE `category_searched_by_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_conversations`
--
ALTER TABLE `dc_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_transactions`
--
ALTER TABLE `loyalty_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_images`
--
ALTER TABLE `order_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_partial_payments`
--
ALTER TABLE `order_partial_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email_or_phone`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_searched_by_user`
--
ALTER TABLE `product_searched_by_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_searches`
--
ALTER TABLE `recent_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_devices`
--
ALTER TABLE `register_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searched_categories`
--
ALTER TABLE `searched_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searched_data`
--
ALTER TABLE `searched_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searched_keyword_counts`
--
ALTER TABLE `searched_keyword_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searched_keyword_users`
--
ALTER TABLE `searched_keyword_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searched_products`
--
ALTER TABLE `searched_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visited_products`
--
ALTER TABLE `visited_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `category_discounts`
--
ALTER TABLE `category_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_searched_by_user`
--
ALTER TABLE `category_searched_by_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dc_conversations`
--
ALTER TABLE `dc_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_products`
--
ALTER TABLE `favorite_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loyalty_transactions`
--
ALTER TABLE `loyalty_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100006;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_images`
--
ALTER TABLE `order_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_partial_payments`
--
ALTER TABLE `order_partial_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_searched_by_user`
--
ALTER TABLE `product_searched_by_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recent_searches`
--
ALTER TABLE `recent_searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register_devices`
--
ALTER TABLE `register_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `searched_categories`
--
ALTER TABLE `searched_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `searched_data`
--
ALTER TABLE `searched_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searched_keyword_counts`
--
ALTER TABLE `searched_keyword_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `searched_keyword_users`
--
ALTER TABLE `searched_keyword_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `searched_products`
--
ALTER TABLE `searched_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visited_products`
--
ALTER TABLE `visited_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
