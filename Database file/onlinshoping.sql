-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 09:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinshoping`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descrption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `descrption`) VALUES
(1, 'T-shirt', 'high quality and wear to cover body'),
(2, 'Scarf', 'wear around the neek'),
(3, 'Pyjamas', 'trousers and top intended for sleeping'),
(4, 'Midi Skirt', 'Skirt which is below calf length'),
(5, 'Khimar', 'Head cover'),
(6, 'Jacket', 'A waist length coat'),
(7, 'Bike Socks', 'wear in foot'),
(8, 'Shorts', 'wears in summer'),
(9, 'shoes', 'wear in foot');

-- --------------------------------------------------------

--
-- Table structure for table `category1s`
--

CREATE TABLE `category1s` (
  `id` int(11) NOT NULL,
  `section` char(2) DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category1s`
--

INSERT INTO `category1s` (`id`, `section`, `type`, `name`, `created_at`, `updated_at`) VALUES
(1, 'aa', '1', 'men', NULL, NULL),
(2, 'aa', '2', 'women', NULL, NULL),
(3, 'aa', '3', 'children', NULL, NULL),
(4, 'bb', '4', 'Shoes Men', NULL, NULL),
(5, 'bb', '5', 'shoes women', NULL, NULL),
(6, 'bb', '6', 'shoes children', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `countery` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `email`, `password`, `full_name`, `billing_address`, `shipping_address`, `countery`, `phone`) VALUES
(1, 'ahmed128@gmail.com', 'abc12345', 'Ahmed Fathi Saad', '220$', 'Egypt/cairo/13 st orabi', 'Egypt', 1237623871),
(2, 'joe3211@hotmail.com', 'joe98765', 'Joe Frank Maine', '350$', 'madrid/3 st right', 'Spain', 1217876329),
(3, 'loehang34@gmail.com', 'loe123987', 'Lee Hang Shang', '300$', 'China/Dingxi/G312/Becheng Alley', 'China', 1387623401),
(4, 'hassan11@gmail.com', 'hassan6523', 'Hassan Hadi Soliman', '200$', 'Saudi Arabia/Alryad/12 St', 'Saudi Arabia', 1187532829),
(5, 'Essam43@gmail.com', 'essam3421', 'Essam Mohamed Bnsharki', '190$', 'Tunisia/Safaksi/21 st', 'Tunisia', 1128932282);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 11, 'section', 'text', 'Section', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 11, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 13, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(26, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(27, 13, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(28, 13, 'descr', 'text', 'Descr', 0, 1, 1, 1, 1, 1, '{}', 5),
(29, 13, 'categ_id', 'text', 'Categ Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(30, 13, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 6),
(31, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 7),
(32, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-01-07 19:02:24', '2021-01-07 19:02:24'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-01-07 19:02:24', '2021-01-07 19:02:24'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-01-07 19:02:24', '2021-01-07 19:02:24'),
(9, 'category', 'category', 'Category', 'Categories', NULL, 'App\\Category1', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-07 21:24:57', '2021-01-07 21:24:57'),
(10, 'product1', 'product1', 'Product1', 'Product1s', NULL, 'App\\Product1', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-07 21:29:21', '2021-01-07 21:29:21'),
(11, 'category1s', 'category1s', 'Category1', 'Category1s', NULL, 'App\\Category1', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-07 21:33:15', '2021-01-07 21:33:15'),
(13, 'product1s', 'product1s', 'Product1', 'Product1s', NULL, 'App\\Product1', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-01-08 10:11:19', '2021-01-08 10:28:27');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-01-07 19:02:25', '2021-01-07 19:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-01-07 19:02:25', '2021-01-07 19:02:25', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-01-07 19:02:25', '2021-01-07 19:02:25', 'voyager.hooks', NULL),
(12, 1, 'Categories', '', '_self', NULL, NULL, NULL, 15, '2021-01-07 21:24:57', '2021-01-07 21:24:57', 'voyager.category.index', NULL),
(13, 1, 'Product1s', '', '_self', NULL, NULL, NULL, 16, '2021-01-07 21:29:21', '2021-01-07 21:29:21', 'voyager.product1.index', NULL),
(14, 1, 'Category1s', '', '_self', NULL, NULL, NULL, 17, '2021-01-07 21:33:15', '2021-01-07 21:33:15', 'voyager.category1s.index', NULL),
(15, 1, 'Product1s', '', '_self', NULL, NULL, NULL, 18, '2021-01-08 10:11:19', '2021-01-08 10:11:19', 'voyager.product1s.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_name`) VALUES
(1, 'Free Friday 10% Discount'),
(2, 'Happy New Year 20% Discount'),
(3, '5 pieces 5% Discount'),
(4, '10 Pieces 15% Discount'),
(5, '4 Shoes 7% Discount');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `ammount` int(11) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `order_address` varchar(255) DEFAULT NULL,
  `order_email` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `ammount`, `shipping_address`, `order_address`, `order_email`, `order_date`, `order_status`) VALUES
(1, 1, 2, 'Cairo/13 st orabi', 'Cairo', 'company@hotmail.com', '13/1/2020', 'will send'),
(2, 3, 6, 'China/sang Ne', 'china', 'mast@gmail.com', '10/12/2020', 'Received'),
(3, 5, 4, 'Tunisia/Safaksi', 'Safakisi/21 st', 'Tana@hotmail.com', '1/1/2021', 'Recevied');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantity`) VALUES
(1, 1, NULL, 110, 3),
(2, 3, NULL, 305, 4),
(3, 2, NULL, 240, 6),
(4, 1, NULL, 270, 5),
(5, 3, NULL, 300, 2),
(6, 2, NULL, 190, 2),
(7, 1, NULL, 415, 7);

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(2, 'browse_bread', NULL, '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(3, 'browse_database', NULL, '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(4, 'browse_media', NULL, '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(5, 'browse_compass', NULL, '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(6, 'browse_menus', 'menus', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(7, 'read_menus', 'menus', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(8, 'edit_menus', 'menus', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(9, 'add_menus', 'menus', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(10, 'delete_menus', 'menus', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(11, 'browse_roles', 'roles', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(12, 'read_roles', 'roles', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(13, 'edit_roles', 'roles', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(14, 'add_roles', 'roles', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(15, 'delete_roles', 'roles', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(16, 'browse_users', 'users', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(17, 'read_users', 'users', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(18, 'edit_users', 'users', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(19, 'add_users', 'users', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(20, 'delete_users', 'users', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(21, 'browse_settings', 'settings', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(22, 'read_settings', 'settings', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(23, 'edit_settings', 'settings', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(24, 'add_settings', 'settings', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(25, 'delete_settings', 'settings', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(26, 'browse_hooks', NULL, '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(27, 'browse_category', 'category', '2021-01-07 21:24:57', '2021-01-07 21:24:57'),
(28, 'read_category', 'category', '2021-01-07 21:24:57', '2021-01-07 21:24:57'),
(29, 'edit_category', 'category', '2021-01-07 21:24:57', '2021-01-07 21:24:57'),
(30, 'add_category', 'category', '2021-01-07 21:24:57', '2021-01-07 21:24:57'),
(31, 'delete_category', 'category', '2021-01-07 21:24:57', '2021-01-07 21:24:57'),
(32, 'browse_product1', 'product1', '2021-01-07 21:29:21', '2021-01-07 21:29:21'),
(33, 'read_product1', 'product1', '2021-01-07 21:29:21', '2021-01-07 21:29:21'),
(34, 'edit_product1', 'product1', '2021-01-07 21:29:21', '2021-01-07 21:29:21'),
(35, 'add_product1', 'product1', '2021-01-07 21:29:21', '2021-01-07 21:29:21'),
(36, 'delete_product1', 'product1', '2021-01-07 21:29:21', '2021-01-07 21:29:21'),
(37, 'browse_category1s', 'category1s', '2021-01-07 21:33:15', '2021-01-07 21:33:15'),
(38, 'read_category1s', 'category1s', '2021-01-07 21:33:15', '2021-01-07 21:33:15'),
(39, 'edit_category1s', 'category1s', '2021-01-07 21:33:15', '2021-01-07 21:33:15'),
(40, 'add_category1s', 'category1s', '2021-01-07 21:33:15', '2021-01-07 21:33:15'),
(41, 'delete_category1s', 'category1s', '2021-01-07 21:33:15', '2021-01-07 21:33:15'),
(42, 'browse_product1s', 'product1s', '2021-01-08 10:11:19', '2021-01-08 10:11:19'),
(43, 'read_product1s', 'product1s', '2021-01-08 10:11:19', '2021-01-08 10:11:19'),
(44, 'edit_product1s', 'product1s', '2021-01-08 10:11:19', '2021-01-08 10:11:19'),
(45, 'add_product1s', 'product1s', '2021-01-08 10:11:19', '2021-01-08 10:11:19'),
(46, 'delete_product1s', 'product1s', '2021-01-08 10:11:19', '2021-01-08 10:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product1s`
--

CREATE TABLE `product1s` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `categ_id` int(11) DEFAULT NULL,
  `price` char(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product1s`
--

INSERT INTO `product1s` (`id`, `name`, `image`, `descr`, `categ_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 'tshirt', 'no', 'hgsdhgsdhg', 1, NULL, NULL, NULL),
(2, 'scarf', 'no', 'hello scarf', 2, NULL, NULL, NULL),
(3, 'jacket', 'no', 'jacket in winter', 3, NULL, NULL, NULL),
(4, 'boot', 'no', 'this for men', 4, NULL, NULL, NULL),
(5, 'sandal', 'no', 'this for women', 5, NULL, NULL, NULL),
(6, 'coatch', 'no', 'this for children', 6, NULL, NULL, NULL),
(12, 'shoes', 'image', 'jskjkkjsjkjsjkjsjjk', 1, '12$', '2021-01-27 12:31:00', '2021-01-08 10:31:36'),
(13, 'men', 'jdkdkkjd', 'dkkkdkksdkl', 1, '23$', '2021-01-27 15:35:00', '2021-01-08 13:35:36'),
(14, 'fddddd', 'jdkdkkjd', 'jskjkkjsjkjsjkjsjjk', 1, '12$', '2021-01-27 15:37:00', '2021-01-08 13:38:00'),
(15, 'body', 'jdkdkkjd', 'jskjkkjsjkjsjkjsjjkdkksk', 1, '12$', '2021-01-27 15:37:00', '2021-01-08 13:39:07'),
(16, 'sassa', 'xzzzzzzzzz', 'xzzzzzzzzzzzzzzzzzzzzzzz', 1, '12', '2021-01-12 15:39:00', '2021-01-08 13:39:43'),
(17, 'reeeeee', 'werrrrrrrrrrrrrrrrrr', 'ccccccccccccccccccccccccc', 1, '34$', '2020-12-28 15:41:00', '2021-01-08 13:41:57'),
(18, 'dssssss', 'dsssssssss', 'dddddddddddddddddd', 1, '345$', '2021-01-22 15:42:00', '2021-01-08 13:43:48'),
(19, 'odps', 'image', 'dddddddddddddddddd', 1, '12$', '2021-01-14 15:44:00', '2021-01-08 13:44:24'),
(20, 'ewuie', 'weeewew', 'dddddddddddddddddddd', 2, '12$', '2021-01-13 15:55:00', '2021-01-08 13:55:22'),
(21, 'ieui', 'dsssssssss', 'ddddddddddddddd', 2, '21$', '2021-01-04 15:55:00', '2021-01-08 13:55:59'),
(22, 'eeee', 'dddddsd', 'vdfffffffffffff', 2, '43$', '2020-12-27 15:56:00', '2021-01-08 13:57:03'),
(23, 'eerer', 'image', 'jskjkkjsjkjsjkjsjjk', 2, '12$', '2021-01-26 15:58:00', '2021-01-08 13:58:27'),
(33, 'njjs', 'image', 'jskjkkjsjkjsjkjsjjk', 2, '34$', '2021-01-21 16:01:00', '2021-01-08 14:01:27'),
(45, 'ibrahim', 'uncnnsd', 'dddddddddddddddddd', 2, '21$', '2021-02-02 15:58:00', '2021-01-08 13:58:59'),
(56, 'Ibrahim Abdelmawla', 'image', 'jskjkkjsjkjsjkjsjjkdkksk', 2, '56$', '2021-01-20 16:02:00', '2021-01-08 14:02:25'),
(65, 'ewwe', 'jdkdkkjd', 'jskjkkjsjkjsjkjsjjk', 2, '32', '2021-01-20 16:00:00', '2021-01-08 14:00:46'),
(67, 'body', 'weeewew', 'xzzzzzzzzzzzzzzzzzzzzzzz', 3, '12$', '2021-01-27 15:59:00', '2021-01-08 13:59:30'),
(89, 'ibrahim', 'werrrrrrrrrrrrrrrrrr', 'jskjkkjsjkjsjkjsjjkdkksk', 3, '34$', '2021-01-25 16:03:00', '2021-01-08 14:03:12'),
(122, 'ibrahim', 'image', 'jskjkkjsjkjsjkjsjjkdkksk', 3, '54$', '2021-01-19 16:03:00', '2021-01-08 14:04:02'),
(123, 'ibrahim', 'image', 'jskjkkjsjkjsjkjsjjkdkksk', 3, '54$', '2021-01-19 16:03:00', '2021-01-08 14:03:45'),
(156, 'Ibrahim Abdelmawla', 'image', 'jskjkkjsjkjsjkjsjjk', 3, '23$', '2021-01-24 16:06:00', '2021-01-08 14:06:12'),
(201, 'sana', 'no', 'this sana ', 4, '32$', '2021-01-12 16:37:30', '2021-01-13 16:37:30'),
(202, 'bodo', 'none', 'this dodo', 4, '20$', '2021-01-18 16:37:30', '2021-01-21 16:37:30'),
(203, 'godo', 'no image', 'this gofod', 4, '17$', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'honos', 'no', 'thos homnnao', 4, '45$', '2021-01-25 16:39:34', '2021-01-29 16:39:34'),
(208, 'sosod', 'no', 'throedb', 4, '34$', '2021-01-04 16:43:00', '2021-01-08 14:45:31'),
(209, 'diid', 'noi', 'thissg fjd', 4, '14$', '2021-01-05 16:46:00', '2021-01-08 14:46:59'),
(211, 'fgfgfgf', 'no', 'yhti', 4, '55$', '2021-01-28 16:49:00', '2021-01-08 14:50:03'),
(212, 'hdgfsd', 'noithiosjs', 'sdhhds', 4, '33$', '2021-01-08 16:51:00', '2021-01-08 14:51:36'),
(345, 'body', 'werrrrrrrrrrrrrrrrrr', 'dddddddddddddddddd', 3, '54$', '2021-02-03 16:07:00', '2021-01-08 14:07:15'),
(567, 'ibrahim', 'werrrrrrrrrrrrrrrrrr', 'jskjkkjsjkjsjkjsjjk', 3, '234', '2021-01-27 16:04:00', '2021-01-08 14:04:34'),
(678, 'body', 'image', 'jskjkkjsjkjsjkjsjjk', 3, '54$', '2021-01-18 16:06:00', '2021-01-08 14:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `descreption` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `creat_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `weight`, `descreption`, `image`, `category`, `creat_date`) VALUES
(1, 'shoe', 11, 800, 'this wear in foot', 'no image', 'shoes', 2020),
(2, 'jacket', 66, 900, 'This wear in winter to make you calm', 'no image', 'Jacket', 2021),
(3, 'Pyjama', 44, 280, 'High Quality', 'no image', 'Pyjama', 2020),
(4, 'Scarf', 22, 300, 'wear around the neek', 'no image', 'Scarf', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(11) DEFAULT NULL,
  `ctategory_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `ctategory_id`, `id`) VALUES
(1, 2, 11),
(2, 5, 22),
(3, 7, 33),
(4, 1, 44),
(5, 4, 55),
(6, 3, 66);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `option_id`, `product_id`) VALUES
(1, 5, 1),
(2, 4, 2),
(3, 2, 4),
(4, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-01-07 19:02:25', '2021-01-07 19:02:25'),
(2, 'user', 'Normal User', '2021-01-07 19:02:25', '2021-01-07 19:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ibrahim', 'ibrahimabdelmawla90@gmail.com', 'users/default.png', NULL, '$2y$10$CLQz0pGzIrMJnYpdbM7vfOj9/S4npsPee7KO8JYagUOyHz7e83yCW', 'cdFqzQFMXa5rWp4lNU9abawms0BnTzhrL3cSGBakmSOVChDXt8Wdv8RGxsT2', NULL, '2021-01-07 19:07:40', '2021-01-07 19:07:40'),
(2, 2, 'Ibrahim Abdelmawla Ahmed', 'ibrahimasssbdelmawla90@gmail.com', 'users/default.png', NULL, '$2y$10$V.Jn1utxapGpbHVjrWhrp.r7kRSheEERsa9j244nuiGzD6xBp517S', NULL, NULL, '2021-01-08 11:30:07', '2021-01-08 11:30:07'),
(3, 2, 'jjkkkzkz', 'sakksk@slka', 'users/default.png', NULL, '$2y$10$nWRZDn0UbyE5Ulomvp5WZO94cq3JL6bS6z2n7NgWNeX7WxTcF3VHi', NULL, NULL, '2021-01-08 13:24:37', '2021-01-08 13:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category1s`
--
ALTER TABLE `category1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `product1s`
--
ALTER TABLE `product1s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categ_id` (`categ_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ctategory_id` (`ctategory_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product1s`
--
ALTER TABLE `product1s`
  ADD CONSTRAINT `product1s_ibfk_1` FOREIGN KEY (`categ_id`) REFERENCES `category1s` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`price`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`ctategory_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_options_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
