-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2022 at 06:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djang`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add address', 7, 'add_address'),
(26, 'Can change address', 7, 'change_address'),
(27, 'Can delete address', 7, 'delete_address'),
(28, 'Can view address', 7, 'view_address'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart'),
(45, 'Can add address', 12, 'add_address'),
(46, 'Can change address', 12, 'change_address'),
(47, 'Can delete address', 12, 'delete_address'),
(48, 'Can view address', 12, 'view_address'),
(49, 'Can add cart', 13, 'add_cart'),
(50, 'Can change cart', 13, 'change_cart'),
(51, 'Can delete cart', 13, 'delete_cart'),
(52, 'Can view cart', 13, 'view_cart'),
(53, 'Can add category', 14, 'add_category'),
(54, 'Can change category', 14, 'change_category'),
(55, 'Can delete category', 14, 'delete_category'),
(56, 'Can view category', 14, 'view_category'),
(57, 'Can add order', 15, 'add_order'),
(58, 'Can change order', 15, 'change_order'),
(59, 'Can delete order', 15, 'delete_order'),
(60, 'Can view order', 15, 'view_order'),
(61, 'Can add product', 16, 'add_product'),
(62, 'Can change product', 16, 'change_product'),
(63, 'Can delete product', 16, 'delete_product'),
(64, 'Can view product', 16, 'view_product');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$N7TFxoi2IYe7ibXYd3oBro$dtxk7V17yXF4q7AxhvCZAQ0lpoGf+MHJ0aOXc7oiCoA=', '2022-04-25 06:06:32.972120', 0, 'adrianp', '', '', 'adrianprasadtvm@gmail.com', 0, 1, '2022-04-24 20:19:59.374329'),
(2, 'pbkdf2_sha256$320000$7L3PSpjnIVNWUMgXcn7lLr$XNkAL4V4wIXA40ubYac2Y+fw5u7f+2yQlZ4GPK6Klfg=', '2022-04-27 04:38:51.764556', 1, 'flip', '', '', 'flip@gmail.com', 1, 1, '2022-04-25 05:36:33.322261'),
(3, 'pbkdf2_sha256$320000$Io6KgVCyvrgaew4svX7D49$M2PAa7czEHNTCJ4JSqSYbxM4hwfVjiKxW46hB1fVWXs=', '2022-04-25 08:05:10.947850', 0, 'adrian', '', '', 'aravind@gmail.com', 0, 1, '2022-04-25 08:04:54.294258'),
(4, 'pbkdf2_sha256$320000$2sB7eaILuXv26vjINYhYhp$NQRFX7RBoAkh4358B1qtI68udbMfuapknAQssA5Jn9s=', '2022-04-25 15:40:31.497387', 0, 'Lyea', '', '', 'lyea@gmail.com', 0, 1, '2022-04-25 11:57:09.499913'),
(5, 'pbkdf2_sha256$320000$tFs7pfz1697UI8QJGrzBQQ$nA9FLGyviBSrOulBPtIkH6EMdqIJ3f1+BhuRCz1ap/A=', '2022-04-26 10:30:06.803348', 0, 'adrianprasad', '', '', 'adrianprasadtvm@gmail.com', 0, 1, '2022-04-26 06:08:25.564863'),
(6, 'pbkdf2_sha256$320000$P1SKIafzNDvptAf7lWYnhl$nYVlyMeIi+Sm3AhUbFiiIMLLsFqIbeZmOLuPf8xn/Vg=', '2022-04-27 04:33:30.540175', 0, 'Syam', '', '', 'syam@gmail.com', 0, 1, '2022-04-27 04:33:20.756859'),
(7, 'pbkdf2_sha256$320000$rfZ6d23RJRXdwaDgW8Mnw8$U9amBSz+KLzE5An2CncGYubZv9w5pyQBKLM9nUDM8no=', '2022-04-27 04:44:53.283791', 0, 'Deevendu', '', '', 'deevendu@gmail.com', 0, 1, '2022-04-27 04:44:38.558783');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-25 06:06:04.734666', '1', 'Mobile', 1, '[{\"added\": {}}]', 14, 2),
(2, '2022-04-25 12:35:15.194677', '2', 'Phones', 1, '[{\"added\": {}}]', 14, 2),
(3, '2022-04-25 12:35:38.216510', '3', 'Laptops', 1, '[{\"added\": {}}]', 14, 2),
(4, '2022-04-25 12:36:43.349372', '1', 'Iphone 13 Pro Max', 1, '[{\"added\": {}}]', 16, 2),
(5, '2022-04-25 12:37:48.179428', '2', 'Vivo v23 pro', 1, '[{\"added\": {}}]', 16, 2),
(6, '2022-04-25 12:38:58.693643', '3', 'Apple Macbook Pro', 1, '[{\"added\": {}}]', 16, 2),
(7, '2022-04-25 12:40:26.714731', '4', 'Dell 2 in 1 Laptop', 1, '[{\"added\": {}}]', 16, 2),
(8, '2022-04-25 19:53:39.588965', '33', 'Shoes', 1, '[{\"added\": {}}]', 14, 2),
(9, '2022-04-25 19:53:48.770029', '32', 'Shoes', 3, '', 14, 2),
(10, '2022-04-26 04:16:12.654756', '5', 'Nike Shoes', 1, '[{\"added\": {}}]', 16, 2),
(11, '2022-04-26 08:24:51.837331', '7', 'Wallet', 1, '[{\"added\": {}}]', 16, 2),
(12, '2022-04-26 08:32:28.674183', '36', 'Wallet', 3, '', 14, 2),
(13, '2022-04-26 08:34:01.404258', '8', 'Table Fan', 1, '[{\"added\": {}}]', 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'mobileapp', 'address'),
(13, 'mobileapp', 'cart'),
(14, 'mobileapp', 'category'),
(15, 'mobileapp', 'order'),
(16, 'mobileapp', 'product'),
(6, 'sessions', 'session'),
(7, 'store', 'address'),
(11, 'store', 'cart'),
(8, 'store', 'category'),
(10, 'store', 'order'),
(9, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-24 18:56:27.123708'),
(2, 'auth', '0001_initial', '2022-04-24 18:56:27.428616'),
(3, 'admin', '0001_initial', '2022-04-24 18:56:27.512615'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-24 18:56:27.519614'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-24 18:56:27.527615'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-24 18:56:27.564567'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-24 18:56:27.599348'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-24 18:56:27.610351'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-24 18:56:27.618350'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-24 18:56:27.644927'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-24 18:56:27.646930'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-24 18:56:27.653925'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-24 18:56:27.664926'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-24 18:56:27.676927'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-24 18:56:27.689928'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-24 18:56:27.696926'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-24 18:56:27.708576'),
(18, 'sessions', '0001_initial', '2022-04-24 18:56:27.728416'),
(19, 'store', '0001_initial', '2022-04-24 18:56:27.998835'),
(20, 'store', '0002_product_sku', '2022-04-24 18:56:28.033578'),
(21, 'store', '0003_alter_product_price', '2022-04-24 18:56:28.066700'),
(22, 'store', '0004_auto_20210529_1741', '2022-04-24 18:56:28.080732'),
(23, 'store', '0005_alter_order_status', '2022-04-24 18:56:28.090705'),
(24, 'mobileapp', '0001_initial', '2022-04-24 19:13:47.939838'),
(25, 'mobileapp', '0002_remove_address_locality', '2022-04-25 06:12:54.104457'),
(26, 'mobileapp', '0003_remove_order_status', '2022-04-25 11:02:17.630578'),
(27, 'mobileapp', '0004_remove_product_short_description_remove_product_sku_and_more', '2022-04-25 14:06:14.693297');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('33ngrj3boogpf643li37ldnv9cb4m9wh', '.eJxVjDsOwjAQBe_iGlnrZP2jpOcMlr27xgGUSPlUiLtDpBTQvpl5L5Xytra0LTKngdVZ9er0u5VMDxl3wPc83iZN07jOQ9G7og-66OvE8rwc7t9By0v71sDeuR7Qd2DYxJ5DhYqUnXQ-WkZLBa1YYINSiaxgRglAFQr7EqJ6fwDNkDgC:1nitiY:01Hz2j6dIK17JJeFMKgB-qhoprmeKavFfMo_c01bDVA', '2022-05-09 08:05:10.952851'),
('m6bvm3wgv7uq5pfc90opuu67snuzb5eu', '.eJxVjDsOwjAQBe_iGlm2499S0ucM1q4_OIAcKU4qxN2RpRTQvpl5bxbw2Gs4et7CktiVOXb53QjjM7cB0gPbfeVxbfu2EB8KP2nn85ry63a6fwcVex01EZkspPEKI3hbrPbKR0IAIKsKuCSj0kY5Y4rUQoCTcnJGT0mW4oB9vt7rNv8:1njZXp:n_bz3eCGsXxLOfJPcROUPj5oFqMDbeqNIu-3KgSv2_0', '2022-05-11 04:44:53.287792'),
('rkhvbit46x9i33ckdyyolxbfg4ryxrhn', '.eJxVjDsOwjAQBe_iGlmbtdfElPScwVr_cADZUpxUiLuTSCmgfTPz3sLxuhS39jS7KYqLQHH63TyHZ6o7iA-u9yZDq8s8ebkr8qBd3lpMr-vh_h0U7mWrtfZ6xIEo2wQ5kIHMiEZF8oTBW9ooglUxaABGo1UYdDQ2KT7DSEl8vr-JNtY:1niryF:fSUYwjji6iCAJoHiYIu8-166unm_Tz6VacwmMSEAY34', '2022-05-09 06:13:15.879994'),
('rnd85krpvfzrewguejl33pekeo12yk56', '.eJxVjDsOwjAQBe_iGlmbtdfElPScwVr_cADZUpxUiLuTSCmgfTPz3sLxuhS39jS7KYqLQHH63TyHZ6o7iA-u9yZDq8s8ebkr8qBd3lpMr-vh_h0U7mWrtfZ6xIEo2wQ5kIHMiEZF8oTBW9ooglUxaABGo1UYdDQ2KT7DSEl8vr-JNtY:1nirPC:_nVT0-MLd2HjY8HcwelvpaK1ey4BCBfxop8Q8XsoaCk', '2022-05-09 05:37:02.384999');

-- --------------------------------------------------------

--
-- Table structure for table `mobileapp_address`
--

CREATE TABLE `mobileapp_address` (
  `id` bigint(20) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mobileapp_cart`
--

CREATE TABLE `mobileapp_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobileapp_cart`
--

INSERT INTO `mobileapp_cart` (`id`, `quantity`, `created_at`, `updated_at`, `product_id`, `user_id`) VALUES
(4, 1, '2022-04-25 15:41:15.195827', '2022-04-25 15:41:15.195827', 3, 4),
(5, 1, '2022-04-25 16:38:15.319654', '2022-04-25 16:38:15.319654', 4, 2),
(8, 1, '2022-04-26 09:36:46.020969', '2022-04-26 09:36:46.020969', 3, 5),
(10, 1, '2022-04-26 09:36:58.500723', '2022-04-26 09:36:58.500723', 2, 5),
(11, 1, '2022-04-26 09:37:07.356888', '2022-04-26 09:37:07.356888', 1, 5),
(14, 1, '2022-04-27 04:45:05.892958', '2022-04-27 04:45:05.892958', 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `mobileapp_category`
--

CREATE TABLE `mobileapp_category` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `slug` varchar(55) NOT NULL,
  `description` longtext NOT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobileapp_category`
--

INSERT INTO `mobileapp_category` (`id`, `title`, `slug`, `description`, `category_image`, `is_active`, `is_featured`, `created_at`, `updated_at`) VALUES
(2, 'Phones', 'phones', 'Premium Models', 'category/Apple-iPhone13-Pro.jpg', 1, 1, '2022-04-25 12:35:15.193677', '2022-04-25 12:35:15.193677'),
(3, 'Laptops', 'laptops', 'Best Quality Laptops', 'category/macbook-pro-14-and-16_overview__fz0lron5xyuu_og.png', 1, 1, '2022-04-25 12:35:38.215510', '2022-04-25 12:35:38.215510'),
(33, 'Shoes', 'shoes', 'Branded Shoes', 'category/product-6_8Eok09N.jpg', 1, 1, '2022-04-25 19:53:39.587995', '2022-04-25 19:53:39.587995'),
(34, 'Fans', 'Branded', 'Light weight', 'category/fan.jpg', 1, 1, '2022-04-26 06:11:35.002137', '2022-04-26 06:11:35.002137'),
(40, 'Plastics', 'Pep', 'Bottles', 'category/download_2.jpg', 1, 1, '2022-04-26 06:27:19.541038', '2022-04-26 06:27:19.541038'),
(41, 'Electrical', 'Electrical', 'Electrical', 'category/product-10_uQRyKRH.jpg', 1, 1, '2022-04-27 04:39:17.577490', '2022-04-27 04:39:17.577490');

-- --------------------------------------------------------

--
-- Table structure for table `mobileapp_product`
--

CREATE TABLE `mobileapp_product` (
  `id` bigint(20) NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(160) NOT NULL,
  `detail_description` longtext DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobileapp_product`
--

INSERT INTO `mobileapp_product` (`id`, `title`, `slug`, `detail_description`, `product_image`, `price`, `is_active`, `is_featured`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Iphone 13 Pro Max', 'iphone-13-pro-max', 'Liquid Retina Display\r\n256 gb', 'product/Apple-iPhone13-Pro.jpg', '112500.00', 1, 1, '2022-04-25 12:36:43.348373', '2022-04-25 12:36:43.348373', 2),
(2, 'Vivo v23 pro', 'vivo-v23-pro', '8gb 256 gb\r\n2k Display\r\n5000 mah battery', 'product/vivo-v23-pro-5g-649x800-1641366966_D0OgXk7.jpg', '45000.00', 1, 1, '2022-04-25 12:37:48.178426', '2022-04-25 12:37:48.178426', 2),
(3, 'Apple Macbook Pro', 'apple-macbook-pro', '16gb 512gb\r\nLiquid Retina display with XDR support', 'product/macbook-pro-14-and-16_overview__fz0lron5xyuu_og_o8JVUFJ.png', '130000.00', 1, 1, '2022-04-25 12:38:58.692642', '2022-04-25 12:38:58.692642', 3),
(4, 'Dell 2 in 1 Laptop', 'dell-2-in-1-laptop', '16gb ram 512 gb SSD\r\nFull HD Display', 'product/in7706t_ctb_00030rf120_gy.jpg', '95550.00', 1, 1, '2022-04-25 12:40:26.713729', '2022-04-25 12:40:26.714731', 3),
(5, 'Nike Shoes', 'nike-shoes', 'Light Weight Shoes', 'product/product-11.jpg', '3500.00', 1, 1, '2022-04-26 04:16:12.654756', '2022-04-26 04:16:12.654756', 33),
(6, 'shoes', 'bgfdfd', 'hytdjhfg', 'product/product-11_9RUymir.jpg', '1500.00', 1, 1, '2022-04-26 07:45:19.934684', '2022-04-26 07:45:19.934684', 33),
(8, 'Table Fan', 'table-fan', 'Table Fan', 'product/fan.jpg', '2300.00', 1, 1, '2022-04-26 08:34:01.403257', '2022-04-26 08:34:01.403257', 34),
(9, 'Bottle', 'Bottle', 'Bottle', 'product/download_2.jpg', '50.00', 1, 1, '2022-04-26 08:35:17.215828', '2022-04-26 08:35:17.215828', 40),
(10, 'Fan', 'fan', 'fan', 'product/fan_zKnKHzn.jpg', '1250.00', 1, 1, '2022-04-27 04:39:34.898122', '2022-04-27 04:39:34.898122', 41);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `mobileapp_address`
--
ALTER TABLE `mobileapp_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobileapp_address_user_id_e5c1943d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `mobileapp_cart`
--
ALTER TABLE `mobileapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobileapp_cart_product_id_304b1006_fk_mobileapp_product_id` (`product_id`),
  ADD KEY `mobileapp_cart_user_id_9c05097d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `mobileapp_category`
--
ALTER TABLE `mobileapp_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobileapp_category_slug_7c2f7771` (`slug`);

--
-- Indexes for table `mobileapp_product`
--
ALTER TABLE `mobileapp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobileapp_product_category_id_2056ac7b_fk_mobileapp_category_id` (`category_id`),
  ADD KEY `mobileapp_product_slug_fbaa3cd7` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mobileapp_address`
--
ALTER TABLE `mobileapp_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mobileapp_cart`
--
ALTER TABLE `mobileapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mobileapp_category`
--
ALTER TABLE `mobileapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `mobileapp_product`
--
ALTER TABLE `mobileapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mobileapp_address`
--
ALTER TABLE `mobileapp_address`
  ADD CONSTRAINT `mobileapp_address_user_id_e5c1943d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mobileapp_cart`
--
ALTER TABLE `mobileapp_cart`
  ADD CONSTRAINT `mobileapp_cart_product_id_304b1006_fk_mobileapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `mobileapp_product` (`id`),
  ADD CONSTRAINT `mobileapp_cart_user_id_9c05097d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mobileapp_product`
--
ALTER TABLE `mobileapp_product`
  ADD CONSTRAINT `mobileapp_product_category_id_2056ac7b_fk_mobileapp_category_id` FOREIGN KEY (`category_id`) REFERENCES `mobileapp_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
