-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 03, 2018 at 07:45 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangays`
--

CREATE TABLE `barangays` (
  `id` int(20) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `city_uuid` varchar(50) NOT NULL,
  `barangay_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barangays`
--

INSERT INTO `barangays` (`id`, `uuid`, `city_uuid`, `barangay_name`, `created_at`, `deleted_at`) VALUES
(1, '5b2fe5382c8e6', '5b2fe179b1a82', 'Lahug', '2018-06-24 13:08:48', NULL),
(2, '5b2fe541e92b5', '5b2fe179b1a82', 'Apas', '2018-06-24 13:08:57', NULL),
(3, '5b2fe54b8cc64', '5b2fe179b1a82', 'Kasambagan', '2018-06-24 13:09:07', NULL),
(4, '5b2fe557f3f9a', '5b2fe17d7e323', 'Tipolo', '2018-06-24 13:09:19', NULL),
(5, '5b2fe561e2c7a', '5b2fe179b1a82', 'Banilad Cebu', '2018-06-24 13:09:29', NULL),
(6, '5b2fe57299485', '5b2fe17d7e323', 'Banilad Mandaue', '2018-06-24 13:09:46', NULL),
(7, '5b2fe579e0eae', '5b2fe181d049b', 'Tabunok', '2018-06-24 13:09:53', NULL),
(8, '5b2fe58173a5e', '5b2fe17d7e323', 'Cabancalan', '2018-06-24 13:10:01', NULL),
(9, '5b2fe58f3e213', '5b2fe17d7e323', 'Subangdaku', '2018-06-24 13:10:15', NULL),
(10, '5b2fe5983f79e', '5b2fe185e22ac', 'Pusok', '2018-06-24 13:10:24', NULL),
(11, '5b2fe5a1a3b48', '5b2fe185e22ac', 'Mactan', '2018-06-24 13:10:33', NULL),
(12, '5b2fe5ab4328d', '5b2fe185e22ac', 'Ibo', '2018-06-24 13:10:43', NULL),
(13, '5b2fe5b1b7f30', '5b2fe185e22ac', 'Basak', '2018-06-24 13:10:49', NULL),
(14, '5b2fe5b8615f4', '5b2fe185e22ac', 'Punta Engaño', '2018-06-24 13:10:56', NULL),
(15, '5b2fe5beced65', '5b2fe18d9bf65', 'Day‑as', '2018-06-24 13:11:02', NULL),
(16, '5b2fe5c85b3f6', '5b2fe185e22ac', 'Maribago', '2018-06-24 13:11:12', NULL),
(17, '5b2fe6e9ea351', '5b2fe179b1a82', 'Talamban', '2018-06-24 13:16:01', NULL),
(18, '5b2ff9536b27d', '5b2fe179b1a82', 'kamputhaw', '2018-06-24 14:25:52', NULL),
(23, '5b2ff9ad1d4e6', '5b2fe17d7e323', 'Maguikay', '2018-06-24 14:36:11', NULL),
(24, '5b2fface3ea40', '5b2fe17d7e323', 'Bakilid', '2018-06-24 14:41:20', NULL),
(25, '5b3003ab95122', '5b2fe185e22ac', 'Pajo', '2018-06-24 15:18:43', NULL),
(26, '5b3003b4a73af', '5b2fe179b1a82', 'Mabolo', '2018-06-24 15:18:52', NULL),
(27, '5b3003ce55b48', '5b2fe185e22ac', 'Marigondon', '2018-06-24 15:19:18', NULL),
(28, '5b3004d4be9f0', '5b2fe17d7e323', 'Casuntingan', '2018-06-24 15:23:40', NULL),
(29, '5b300d831bc4c', '5b2fe185e22ac', 'San Vicente', '2018-06-24 16:00:43', NULL),
(30, '5b300d94cff80', '5b2fe185e22ac', 'Santa Rosa', '2018-06-24 16:01:00', NULL),
(31, '5b300ee1cfb14', '5b300b714bc49', 'Poblacion - Sante Fe', '2018-06-24 16:06:33', NULL),
(32, '5b30126646da2', '5b2fe179b1a82', 'Sirao', '2018-06-24 16:21:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_table`
--

CREATE TABLE `business_table` (
  `id` int(20) NOT NULL,
  `uuid` text NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `category_uuid` varchar(50) NOT NULL,
  `locality_uuid` varchar(50) DEFAULT NULL,
  `address` text,
  `barangay_uuid` varchar(50) DEFAULT NULL,
  `city_uuid` varchar(13) DEFAULT NULL,
  `province_uuid` varchar(50) DEFAULT NULL,
  `zip` int(20) DEFAULT NULL,
  `tags` text,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_table`
--

INSERT INTO `business_table` (`id`, `uuid`, `business_name`, `category_uuid`, `locality_uuid`, `address`, `barangay_uuid`, `city_uuid`, `province_uuid`, `zip`, `tags`, `latitude`, `longitude`, `created_at`, `deleted_at`) VALUES
(2, '', 'Circa 1900', '5b2fc2b9d9a2f', '', 'Sanjercas Ville Ext Rd', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'filipino cuisine, spanish cuisine, prawn risotto, dessert', 10.3266637, 123.9003677, '2018-06-24 13:53:43', NULL),
(3, '', 'Anzani', '5b2fc2b9d9a2f', '', 'Bellini Champagne Lounge and Live music Bar, Panorama Heights, Nivel Hills ', '5b2fe5382c8e6', '5b2fe179b1a82', ' 5b2fe2c4de909', 6000, 'bread, pasta, foie gras', 10.343396, 123.895172, '2018-06-24 13:53:43', NULL),
(4, '', 'Isla Sugbo Seafood City', '5b2fc2b9d9a2f', '', 'Archbishop Reyes Ave', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'seafood, lobster, fresh seafood, live seafood', 10.3208657, 123.9041927, '2018-06-24 13:53:43', NULL),
(5, '', 'La Vie Parisienne', '5b2fc2b9d9a2f', '', '371 Gorordo Ave', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'french cuisine, french, bread, macaroons, pizza, wine, red wine, white wine', 10.3262129, 123.89817, '2018-06-24 13:53:43', NULL),
(6, '', 'Brique Modern Kitchen', '5b2fc2b9d9a2f', '', 'Salinas Dr', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 26.8338394, -80.0908027, '2018-06-24 13:53:43', NULL),
(7, '', 'Hukad', '5b2fc2b9d9a2f', '5b2fceba7ff97', 'Ayala Center Cebu, Biliran Rd', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'filipino cuisine', 10.3181413, 123.9051269, '2018-06-24 13:53:43', NULL),
(8, '', 'Casa Verde', '5b2fc2b9d9a2f', '5b2fceba7ff97', 'Ayala Center Cebu, Cebu Business Park, 176 Archbishop Reyes Ave', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Filipino Cuisine, baby-back ribs ', 10.3182077, 123.9050123, '2018-06-24 13:53:43', NULL),
(9, '', 'Café Laguna', '5b2fc2b9d9a2f', '5b2fceba7ff97', 'Ayala Center Cebu, Level 1, The Terraces, Biliran Rd', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3182681, 123.905326, '2018-06-24 13:53:43', NULL),
(10, '', 'Hukad', '5b2fc2b9d9a2f', '5b2fceba7ff97', 'Ayala Center Cebu, Biliran Rd', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'filipino cuisine', 10.3181413, 123.9051269, '2018-06-24 13:53:43', NULL),
(11, '', 'Laguna Garden Café\r\n', '5b2fc2b9d9a2f', '5b2fceba7ff97', 'The Terraces, Ayala Center Cebu, Archbishop Reyes Ave', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3189287, 123.9056972, '2018-06-24 13:53:43', NULL),
(12, '', 'Bigby\'s', '5b2fc2b9d9a2f', '5b2fceba7ff97', 'Ayala Center Cebu, 176 Archbishop Reyes Ave. Cebu Business Park', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'american cuisine, big slabs, big serving', 10.3182077, 123.9050123, '2018-06-24 13:53:43', NULL),
(13, '', 'Casa Verde', '5b2fc2b9d9a2f', '5b2fcf007d88a', 'The Walk', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Filipino Cuisine, baby-back ribs ', 35.640985, -78.443117, '2018-06-24 13:53:43', NULL),
(14, '', 'Red Lizard', '5b2fc2b9d9a2f', '5b2fcf007d88a', '', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'mexican cuisine, taco, nacho', 37.7179453, -97.1336831, '2018-06-24 13:53:43', NULL),
(15, '', 'Army Navy', '5b2fc2b9d9a2f', '5b2fcf007d88a', '6000 Metro, W Geonzon St, , Cebu City, Cebu', '5b2fe541e92b5', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'burgers, american cuisine', 10.3308192, 123.9054717, '2018-06-24 13:53:43', NULL),
(16, '', 'Mooon Café', '5b2fc2b9d9a2f', '5b2fcf007d88a', 'The Walk, Abad St', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'mexican cuisine, pork chops', 10.3283096, 123.9057363, '2018-06-24 13:53:43', NULL),
(17, '', 'Yakski Barbecue Cebu I.T. Plaza', '5b2fc2b9d9a2f', '5b2fcf007d88a', 'Garden Bloc', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'barbeque, sweet sauce', 0, 0, '2018-06-24 13:53:43', NULL),
(18, '', 'Tokyo Tokyo', '5b2fc2b9d9a2f', '5b2fcf007d88a', 'Ground Floor i2 Building IT Park', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'japanese food, japanese cuisine', 10.3276032, 123.9067514, '2018-06-24 13:53:43', NULL),
(19, '', 'First 5 Sports Lounge & Cafe', '5b2fc2b9d9a2f', '5b2fcf246cb3a', 'Go Home Bldg, 341 F. Cabahug St', '5b2fe54b8cc64', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'sports bar, american cuisine, pork chucks', 10.3259944, 123.918893, '2018-06-24 13:53:43', NULL),
(20, '', 'Ilaputi', '5b2fc2b9d9a2f', '5b2fcf2193b97', 'The Greenery, Pope John Paul II Ave.,', '5b2fe54b8cc64', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3247295, 123.9085028, '2018-06-24 13:53:43', NULL),
(21, '', 'STK ta Bay!', '5b2fc2b9d9a2f', '', '6 A. Climaco St', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Sutukil', 10.3134376, 123.8900093, '2018-06-24 13:53:43', NULL),
(22, '', 'Muvanz Pocherohan And Seafoods', '5b2fc2b9d9a2f', '5b2fcfaaa38df', 'Century Plaza Complex, Juana Osme?a St', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'pochero, seafood, scallops', 10.311692, 123.894274, '2018-06-24 13:53:43', NULL),
(23, '', 'Wang Shan Lo Chinese Cuisine', '5b2fc2b9d9a2f', '5b2fd2054994b', 'L20 , Tower 2, Crown Regency Hotel & Tower, Osme?a Blvd', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'chinese cuisine', 10.30803, 123.894013, '2018-06-24 13:53:43', NULL),
(24, '', 'Casa Verde', '5b2fc2b9d9a2f', '', '69 Lim Tian Teng', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Filipino Cuisine, baby-back ribs ', 10.307166, 123.8955817, '2018-06-24 13:53:43', NULL),
(25, '', 'Persian Palate Restaurant', '5b2fc2b9d9a2f', '5b2fcfde7fa85', 'Mango Square Mall, Gen. Maxilom Avenue', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'persian cuisine, middle-eastern cuisine', 10.3114939, 123.9005213, '2018-06-24 13:53:43', NULL),
(26, '', 'Bleachers Barbecue Slow and Low', '5b2fc2b9d9a2f', '5b2fcefceb1a7', 'Kaohsiung St', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'ribs, baby-back ribs', 10.3126557, 123.9201364, '2018-06-24 13:53:43', NULL),
(27, '', 'Cabalen', '5b2fc2b9d9a2f', '5b2fcee8108cc', 'Ground Floor, SM City Cebu, Juan Luna Avenue Extension, The Northwing Area', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3117152, 123.9183318, '2018-06-24 13:53:43', NULL),
(28, '', 'Royal Krua Thai', '5b2fc2b9d9a2f', '5b2fcee8108cc', 'SM City corner Cabahug and Kaoshiung Streets', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3124514, 123.9177451, '2018-06-24 13:53:43', NULL),
(29, '', 'Ribpublic Diner', '5b2fc2b9d9a2f', '5b2fcee8108cc', 'SM City Cebu, 3rd flr', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'ribs, baby-back ribs', 10.3117152, 123.9183318, '2018-06-24 13:53:43', NULL),
(30, '', 'Casa Ilonga', '5b2fc2b9d9a2f', '5b2fcee8108cc', 'Ground Level, SM City Cebu, Juan Luna Avenue Extension, North Reclamation Area', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3117152, 123.9183318, '2018-06-24 13:53:43', NULL),
(31, '', 'Harbour City Dimsum House', '5b2fc2b9d9a2f', '5b2fcee8108cc', 'Lower Ground Floor SM City', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Chinese cuisine, dimsum, steamed fried rice', 39.2586664, -94.5774129, '2018-06-24 13:53:43', NULL),
(32, '', 'Spice Fusion', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'SM Seaside City, South Coastal Rd. Cor. Mambaling Ext. South Properties', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.281438, 123.88228, '2018-06-24 13:53:43', NULL),
(33, '', 'Harbour City', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'SM Seaside City, South Coastal Rd. Cor. Mambaling Ext. South Properties', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Chinese cuisine, dimsum, steamed fried rice', 10.281438, 123.88228, '2018-06-24 13:53:43', NULL),
(34, '', 'Tokyo Tokyo', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'Lower Ground Floor, SM Seaside City Cebu, Cebu South Coastal Rd, Lungsod ng Cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'japanese food, japanese cuisine', 10.2803834, 123.8818432, '2018-06-24 13:53:43', NULL),
(35, '', 'Hukad', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'SM Seaside, Antuwanga', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'filipino cuisine', 10.2810065, 123.8824274, '2018-06-24 13:53:43', NULL),
(36, '', 'Yaki Mix Restaurant', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'Mountain Wing Area, 2nd Floor Sm Seaside', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'japanese food, japanese cuisine', 10.2803834, 123.8818432, '2018-06-24 13:53:43', NULL),
(37, '', 'Raphael\'s Sports Cafe', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'Skypark, SM Seaside City Cebu, Antuwanga', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'sports bar, american cuisine', 10.2814726, 123.8808489, '2018-06-24 13:53:43', NULL),
(38, '', 'Razon\'s of Guagua', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'SM Seaside, Cor Mambaling Cor SRP Road', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'halo-halo', 10.281557, 123.882549, '2018-06-24 13:53:43', NULL),
(39, '', 'Joven\'s Grill & Seafood', '5b2fc2b9d9a2f', '5b2fd01f2501d', 'Tipolo -ALF 1 -27-28 Parkmall', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'seafood, filipino cuisine', 10.3258565, 123.9340867, '2018-06-24 13:53:43', NULL),
(40, '', 'Hukad', '5b2fc2b9d9a2f', '5b2fd01f2501d', 'Park Mall Dr', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'filipino cuisine', 40.5432756, -80.0101594, '2018-06-24 13:53:43', NULL),
(41, '', 'Chika-an sa Cebu', '5b2fc2b9d9a2f', '5b2fd01f2501d', 'Enclave Building A - 1-4 Parkmall', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'chicken, filipino cuisine', 0, 0, '2018-06-24 13:53:43', NULL),
(42, '', 'Dimsum Break', '5b2fc2b9d9a2f', '5b2fd01f2501d', 'Enclave Bldg., Parkmall', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'Chinese cuisine, dimsum, steamed fried rice', 0, 0, '2018-06-24 13:53:43', NULL),
(43, '', 'Buffet 101', '5b2fc2b9d9a2f', '5b2fd35f9d84d', 'City Time Square', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'buffet restaurant, buffet, eat all you can', 40.7589917, -73.9845298, '2018-06-24 13:53:43', NULL),
(44, '', 'Japengo Yakiniku - Parkmall', '5b2fc2b9d9a2f', '5b2fd01f2501d', 'ALF 2 - 23, Parkmall', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'japanese food, japanese cuisine', 10.325168, 123.934611, '2018-06-24 13:53:43', NULL),
(45, '', 'Dong Juan', '5b2fc2b9d9a2f', '5b2fd01f2501d', 'Park Mall', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, '', 36.7153347, -95.9320453, '2018-06-24 13:53:43', NULL),
(46, '', 'Tokyo Table', '5b2fc2b9d9a2f', '5b2fd35f9d84d', '', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'japanese food, japanese cuisine', 29.7356123, -95.4858362, '2018-06-24 13:53:43', NULL),
(47, '', 'Shabu Way Hot Pot Cuisine', '5b2fc2b9d9a2f', '5b2fd01f2501d', 'Enclave Building C - 5 & 6, Parkmall', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, '', 39.2233039, -94.53757, '2018-06-24 13:53:43', NULL),
(48, '', 'David\'s Tea House', '5b2fc2b9d9a2f', '5b2fd35f9d84d', '201-203, City Time Square, Mantawu Ave', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'tea', 10.3262539, 123.933277, '2018-06-24 13:53:43', NULL),
(49, '', 'Orange Karenderia', '5b2fc2b9d9a2f', '5b2fd01f2501d', 'M. L. Quezon Ave', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'chicken, carenderia', 14.5168323, 121.0726137, '2018-06-24 13:53:43', NULL),
(50, '', 'The Classroom', '5b2fc2b9d9a2f', '5b2fd35f9d84d', 'City Time Square, Mantawe Ave', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, '', 10.3264126, 123.9331506, '2018-06-24 13:53:43', NULL),
(51, '', 'Moshi Moshi Yakiniku Restaurant', '5b2fc2b9d9a2f', '5b2fd52fd7456', 'One Paseo Cebu, Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'japanese food, japanese cuisine', 10.3436472, 123.9110197, '2018-06-24 13:53:43', NULL),
(52, '', 'Pizzeria Michelangelo', '5b2fc2b9d9a2f', '5b2fd52fd7456', 'One Paseo Cebu, Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'pizza', 10.3436472, 123.9110197, '2018-06-24 13:53:43', NULL),
(53, '', 'Tymad Bistro', '5b2fc2b9d9a2f', '', 'Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'brunch', 10.3440712, 123.9103406, '2018-06-24 13:53:43', NULL),
(54, '', 'Gorliz Tapas Y Vinos Spanish Restaurant', '5b2fc2b9d9a2f', '5b2fd03dcea01', '2nd Floor Streetscape Cebu, Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3449138, 123.9088699, '2018-06-24 13:53:43', NULL),
(55, '', 'La Nostra Pizzeria Napoletana', '5b2fc2b9d9a2f', '5b2fd03dcea01', 'Streetscape, Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3451856, 123.909055, '2018-06-24 13:53:43', NULL),
(56, '', 'Gibbs\' Hot Wings', '5b2fc2b9d9a2f', '5b2fd03dcea01', 'Streetscape Mall, Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hot wings, chicken wings', 10.3451856, 123.909055, '2018-06-24 13:53:43', NULL),
(57, '', 'ECHOstore Cebu', '5b2fc2b9d9a2f', '5b2fd03dcea01', 'Streetscape Cebu, Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'vegan', 10.3451856, 123.909055, '2018-06-24 13:53:43', NULL),
(58, '', 'Washoku-J', '5b2fc2b9d9a2f', '5b2fd03dcea01', 'Streetscape Cebu, Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3451856, 123.909055, '2018-06-24 13:53:43', NULL),
(59, '', 'Royal Krua Thai', '5b2fc2b9d9a2f', '5b2fd0301bb8f', 'G/F North Arcade, Banilad Town Center', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.3414593, 123.9123014, '2018-06-24 13:53:43', NULL),
(60, '', 'Pueblo Mexicano', '5b2fc2b9d9a2f', '5b2fd0301bb8f', 'Banilad Town Center (BTC), Gov. M. Cuenco Avenue', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'mexican food, mexican cuisine', 10.3410825, 123.9122871, '2018-06-24 13:53:43', NULL),
(61, '', 'My Greek Taverna', '5b2fc2b9d9a2f', '5b2fd0301bb8f', 'BTC Bldg, Gen. M. Cuenco Ave', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'greek cuisine, kebab, shawarma, middle-eastern cuisine', 10.3410825, 123.9122871, '2018-06-24 13:53:43', NULL),
(62, '', 'Jafar\'s Shawarma', '5b2fc2b9d9a2f', '5b2fd0301bb8f', 'BTC Bldg, Gov. M. Cuenco Ave', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'kebab, shawarma, middle-eastern cuisine', 10.340726, 123.91252, '2018-06-24 13:53:43', NULL),
(63, '', 'Wok\'d', '5b2fc2b9d9a2f', '5b2fd03dcea01', 'Streetcape, Paseo Saturnino', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'thai cuisine', 10.3451856, 123.909055, '2018-06-24 13:53:43', NULL),
(64, '', 'Silogan Ni Gian', '5b2fc2b9d9a2f', '', 'Banilad Gov. M. Cuenco Avenue', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'silog', 10.3501131, 123.9134672, '2018-06-24 13:53:43', NULL),
(65, '', 'Euro Hub Cafe & Bar', '5b2fc2b9d9a2f', '5b2fd71c9eacf', 'Piazza Elesia', '5b2fe6e9ea351', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'european cuisine', 10.361286, 123.915835, '2018-06-24 13:53:43', NULL),
(66, '', 'Haru Japanese Carenderia', '5b2fc2b9d9a2f', '5b2fd71c9eacf', 'Piazza Elesia', '5b2fe6e9ea351', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'japanese food, japanese cuisine', 10.361286, 123.915835, '2018-06-24 13:53:43', NULL),
(67, '', 'Celso\'s Crib', '5b2fc2b9d9a2f', '5b2fd71c9eacf', 'Piazza Elesia', '5b2fe6e9ea351', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.361286, 123.915835, '2018-06-24 13:53:43', NULL),
(68, '', 'Papsy\'s BBQ', '5b2fc2b9d9a2f', '', '', '5b2fe6e9ea351', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 37.7179453, -97.1336831, '2018-06-24 13:53:43', NULL),
(69, '', 'Bollywood Tandoor', '5b2fc2b9d9a2f', '', '113 Gov. M. Cuenco Ave', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Indian cuisine, curry', 10.3430769, 123.912082, '2018-06-24 13:53:43', NULL),
(70, '', 'Garlic Rice', '5b2fc2b9d9a2f', '', 'Rosedale', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'silog', 39.0657878, -94.6161232, '2018-06-24 13:53:43', NULL),
(71, '', 'Tiktilaok', '5b2fc2b9d9a2f', '', 'Rosedale', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'chicken', 39.0657878, -94.6161232, '2018-06-24 13:53:43', NULL),
(72, '', 'Topokkiman', '5b2fc2b9d9a2f', '', 'Rosedale', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'korean food', 39.0657878, -94.6161232, '2018-06-24 13:53:43', NULL),
(73, '', 'Timplada Ilongga', '5b2fc2b9d9a2f', '', 'Cansojong, Talisay City, Cebu South Coastal Rd', '', '5b2fe181d049b', '5b2fe2c4de909', 6045, '', 10.2514747, 123.8516329, '2018-06-24 13:53:43', NULL),
(74, '', 'Lantaw SRP Native Restaurant', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'Cebu South Coastal Rd', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'filipino cuisine', 10.281338, 123.8810017, '2018-06-24 13:53:43', NULL),
(75, '', 'Parilya', '5b2fc2b9d9a2f', '5b2fcf689e7b7', 'IL Corso, City Di Mare, South Road Properties', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, '', 10.266153, 123.8779336, '2018-06-24 13:53:43', NULL),
(76, '', 'Tonyo\'s Bar & Restaurant', '5b2fc2b9d9a2f', '', '2nd Floor, South Coast Center', '', '5b2fe181d049b', '5b2fe2c4de909', 6045, '', 0, 0, '2018-06-24 13:53:43', NULL),
(77, '', 'Abling\'s Lechon', '5b2fc2b9d9a2f', '', 'Toledo - Manipis Rd', '', '5b2fe181d049b', '5b2fe2c4de909', 6045, 'lechon baboy', 10.3154578, 123.7592397, '2018-06-24 13:53:43', NULL),
(78, '', 'Betty Boop\'s RestoBar', '5b2fc2b9d9a2f', '', 'Bolivar Street', '', '5b2fe181d049b', '5b2fe2c4de909', 6045, '', 33.36255, -97.171858, '2018-06-24 13:53:43', NULL),
(79, '', 'Pearl Korean Meat & Restaurant', '5b2fc2b9d9a2f', '', '307 Mansueto Rd', '', '5b2fe181d049b', '5b2fe2c4de909', 6045, 'korean food, korean cuisine, meat shop', 0, 0, '2018-06-24 13:53:43', NULL),
(80, '', 'Planet Cebu', '5b2fc2b9d9a2f', '', 'Antuwanga', '5b2fe579e0eae', '5b2fe181d049b', '5b2fe2c4de909', 6045, '', 10.2955989, 123.8489782, '2018-06-24 13:53:43', NULL),
(81, '', 'Tavolata', '5b2fc2b9d9a2f', '5b2fdb9d22635', 'Design Center of 6014, A. S. Fortuna St', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, '', 10.341549, 123.919644, '2018-06-24 13:53:43', NULL),
(82, '', 'Sachi Authentic Japanese Ramen And Okonomiyaki', '5b2fc2b9d9a2f', '', 'M. L. Quezon Ave', '5b2fe58173a5e', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'japanese food, japanese cuisine', 10.347447, 123.9277237, '2018-06-24 13:53:43', NULL),
(83, '', 'Ramen Yushoken', '5b2fc2b9d9a2f', '5b2fd0a6c3654', 'G/F Oakridge Business Park, 880 A. S. Fortuna St', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'japanese food, japanese cuisine', 10.3425641, 123.918031, '2018-06-24 13:53:43', NULL),
(84, '', 'AA Barbecue and Grill', '5b2fc2b9d9a2f', '5b2fdb9d22635', 'Suico Gabuya Bldg, 909 A. S. Fortuna St', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'filipino cuisine, barbeque', 10.342447, 123.9164999, '2018-06-24 13:53:43', NULL),
(85, '', 'Golden Cowrie', '5b2fc2b9d9a2f', '5b2fd0a6c3654', 'A. S. Fortuna St', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'filipino cuisine, adobo', 10.3394663, 123.9246923, '2018-06-24 13:53:43', NULL),
(86, '', '10 Dove Street', '5b2fc2b9d9a2f', '5b2fd0a6c3654', 'Oakridge Business Park, 880, A.S. Fortuna Street', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'dessert, ice cream, cake', 10.342604, 123.918818, '2018-06-24 13:53:43', NULL),
(87, '', 'L\'Artisan - French & Mediterranean Cuisine', '5b2fc2b9d9a2f', '5b2fd0a6c3654', 'Oaktree Drive 2, Oakridge Business Park, A. S. Fortuna St', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'steak, pork chops', 10.3430681, 123.9180585, '2018-06-24 13:53:43', NULL),
(88, '', 'Chosun Galbi', '5b2fc2b9d9a2f', '5b2fdb9d22635', '888 A. S. Fortuna St', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, '', 10.343161, 123.914279, '2018-06-24 13:53:43', NULL),
(89, '', 'Cafe Racer', '5b2fc2b9d9a2f', '', 'Ouano Ave', '5b2fe58f3e213', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'american cuisine, diner, american diner', 10.3194043, 123.9305211, '2018-06-24 13:53:43', NULL),
(90, '', 'Matias BBQ', '5b2fc2b9d9a2f', '5b2fdb9d22635', 'A. S. Fortuna St,', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'barbeque', 0, 0, '2018-06-24 13:53:43', NULL),
(91, '', 'Sushi Boy', '5b2fc2b9d9a2f', '', 'Ouano Ave', '5b2fe58f3e213', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'japanese food, japanese cuisine', 0, 0, '2018-06-24 13:53:43', NULL),
(92, '', 'KAMPO Grill and Bar', '5b2fc2b9d9a2f', '', 'Ouano Ave', '5b2fe58f3e213', '5b2fe17d7e323', '5b2fe2c4de909', 6014, '', 0, 0, '2018-06-24 13:53:43', NULL),
(93, '', 'Scape Skydeck', '5b2fc2b9d9a2f', '', 'Roof Deck, Azon Residences, M.L. Quezon National Highway', '5b2fe5983f79e', '5b2fe185e22ac', '5b2fe2c4de909', 6015, '', 10.3232224, 123.9730207, '2018-06-24 13:53:43', NULL),
(94, '', 'Manna Sutukil Food House', '5b2fc2b9d9a2f', '5b2fdd7bdaced', 'Mactan Shrine, Mactan', '5b2fe5a1a3b48', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'Sutukil', 0, 0, '2018-06-24 13:53:43', NULL),
(95, '', 'Bella\'s Bites Soups and Salads', '5b2fc2b9d9a2f', '5b2fdda5b9f1f', 'Mactan Marina Mall, Quezon National Highway', '5b2fe5ab4328d', '5b2fe185e22ac', '5b2fe2c4de909', 6015, '', 0, 0, '2018-06-24 13:53:43', NULL),
(96, '', 'Oriental Spice Gourmet', '5b2fc2b9d9a2f', '', 'Maximo V. Patalinghug Jr. Avenue', '5b2fe5b1b7f30', '5b2fe185e22ac', '5b2fe2c4de909', 6015, '', 10.3075378, 123.9609576, '2018-06-24 13:53:43', NULL),
(97, '', 'Abaca Boutique Resort & Restaurant', '5b2fc2b9d9a2f', '', 'Punta Enga?o Rd', '5b2fe5b8615f4', '5b2fe185e22ac', '5b2fe2c4de909', 6015, '', 10.3184791, 124.0296108, '2018-06-24 13:53:43', NULL),
(98, '', 'Lantaw Floating Native Restaurant', '5b2fc2b9d9a2f', '', 'Baybayon', '5b2fe5beced65', '5b2fe18d9bf65', '5b2fe2c4de909', 6017, '', 0, 0, '2018-06-24 13:53:43', NULL),
(99, '', 'Maribago Grill', '5b2fc2b9d9a2f', '', 'Maribago', '5b2fe5c85b3f6', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'filipino cuisine', 10.2902065, 123.9984363, '2018-06-24 13:53:43', NULL),
(100, '', 'Vue Dine & Drink', '5b2fc2b9d9a2f', '', 'Quezon 1', '5b2fe5ab4328d', '5b2fe185e22ac', '5b2fe2c4de909', 6015, '', 13.9346903, 121.947311, '2018-06-24 13:53:43', NULL),
(101, '', 'Seafood Island', '5b2fc2b9d9a2f', '5b2fddaa36e76', 'Island Central Mall', '5b2fe5ab4328d', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'seafood', 0, 0, '2018-06-24 13:53:43', NULL),
(102, '5b2ff648d8a52', '8th Street Guesthouse', '5b2fc2e074db6', '', '8 Sanson Road', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hostel, hotel', 0, 0, '2018-06-24 14:21:36', NULL),
(103, '5b2ff67fceaba', 'ABC Hotel Cebu', '5b2fc2e074db6', '', '107 F. Ramos St', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hotel', 0, 0, '2018-06-24 14:22:31', NULL),
(104, '5b2ff6d2d9987', 'Alicia Apartelle', '5b2fc2e074db6', '', 'Gov. M. Cuenco Avenue', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Apartelle, Apartment, Hotel', 0, 0, '2018-06-24 14:23:54', NULL),
(105, '5b2ff7033d0b5', 'Anri Pension House', '5b2fc2e074db6', '', '2nd Villa Amores Street', '5b2fe541e92b5', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Pension House', 10.3336589, 123.9075352, '2018-06-24 14:24:43', NULL),
(106, '5b2ff774885b6', 'Azia Suites And Residences', '5b2fc2e074db6', '', '8 Rahmann Extension', '5b2ff9536b27d', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Suite, Residence, Hotel', 10.31266, 123.901976, '2018-06-24 14:26:36', NULL),
(107, '5b2ff7b5ae21d', 'Elreds Condo', '5b2fc2e074db6', '', '22 Lucio Lopez Drive V-Rama Ave.', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Apartment, Condo, Hotel', 10.3025179, 123.88514, '2018-06-24 14:27:41', NULL),
(108, '5b2ff80384018', 'Radisson Blu Cebu', '5b2fc2e074db6', '5b2fcefceb1a7', 'Serging Osmeña Boulevard', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hotel', 0, 0, '2018-06-24 14:28:59', NULL),
(109, '5b2ff83935a77', 'Waterfront Cebu City Hotel & Casino', '5b2fc2e074db6', '5b2fcf007d88a', 'Salinas Dr, Cebu City, 6000 Cebu', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hotel, casino, gym', 0, 0, '2018-06-24 14:29:53', NULL),
(110, '5b2ff8cf9e4b3', 'Big Hotel', '5b2fc2e074db6', '5b2fd35f9d84d', 'Park Mall Dr', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'Hotel', 0, 0, '2018-06-24 14:32:23', NULL),
(111, '5b2ffa96d4808', 'La Maria, Pension & Tourist Inn Hotel‎', '5b2fc2e074db6', '', 'M. L. Quezon St., (Corner Echavez Ext.)', '5b2ff9ad1d4e6', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'Inn, Hotel, Hostel, Pension', 0, 0, '2018-06-24 14:39:58', NULL),
(112, '5b2ffb14c2baa', 'Toyoko-Inn', '5b2fc2e074db6', '5b2fd08a601f3', 'J Centre Mall, 165 A.S. Fortuna St., Bakilid', '5b2fface3ea40', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'Hotel, Inn, Water resort, water park', 10.3355853, 123.9342414, '2018-06-24 14:42:04', NULL),
(113, '5b2ffb8cc7d2b', 'Be Resorts - Mactan', '5b2fc2e074db6', '', 'Punta Engaño Rd', '5b2fe5b8615f4', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'beach resort, beach, hotel, resort', 0, 0, '2018-06-24 14:44:04', NULL),
(114, '5b2ffbb29bac6', 'Cebu Courtyard', '5b2fc2e074db6', '5b2fd07e29ff0', 'S. Osmeña Street', '', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'hotel, lodge', 0, 0, '2018-06-24 14:44:42', NULL),
(115, '5b2ffbe0ee989', 'Chateau By The Sea', '5b2fc2e074db6', '', 'Punta Engaño', '5b2fe5b8615f4', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'Hotel, Resort', 0, 0, '2018-06-24 14:45:28', NULL),
(116, '5b2ffc0011d6b', 'Costabella Tropical Beach Hotel', '5b2fc2e074db6', '', 'Buyong', '5b2fe5c85b3f6', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'Resort, beach', 10.2907942, 124.0025596, '2018-06-24 14:46:00', NULL),
(117, '5b2ffc1bbf90c', 'Jo-Cris Apartelle', '5b2fc2e074db6', '', 'Kainsong Street', '5b2fe5b1b7f30', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'apartment, condo', 10.287905, 123.9672817, '2018-06-24 14:46:27', NULL),
(118, '5b2ffc907023e', 'The Bellavista Hotel', '5b2fc2e074db6', '', '2483 M.L. Quezon National Highway', '5b2fe5983f79e', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'hotel', 0, 0, '2018-06-24 14:48:24', NULL),
(119, '5b2ffe5833828', 'Club Bai', '5b2fc2e48a277', '', 'Mango Avenue', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'Dance, Night Club, Pub, Chicken Joint', 10.3114939, 123.9005213, '2018-06-24 14:56:00', NULL),
(120, '5b2ffe7934af6', 'EuroHub', '5b2fc2e48a277', '5b2fd71c9eacf', 'Piazza Elesia', '5b2fe6e9ea351', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'European Restaurant, Pub, Sports Bar', 10.361286, 123.915835, '2018-06-24 14:56:33', NULL),
(121, '5b2ffe98d67d2', 'Frolics Bar & Grill', '5b2fc2e48a277', '', 'Basak Maximo V. Patalinhug Jr. Avenue', '5b2fe5b1b7f30', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'bar, grill', 0, 0, '2018-06-24 14:57:04', NULL),
(122, '5b2ffecf1e9d4', 'LIV Super Club', '5b2fc2e48a277', '5b2fd35f9d84d', 'City Time Square, Mantawe Ave', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'dance, night club, bar', 0, 0, '2018-06-24 14:57:59', NULL),
(123, '5b2ffef494f37', 'Lotus', '5b2fc2e48a277', '5b2fd07e29ff0', 'Mactan Southgate Plaza, Pueblo Verde, Mepz 2', '5b2fe5b1b7f30', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'dance, night club, bar', 10.301465, 123.962459, '2018-06-24 14:58:36', NULL),
(124, '5b2fff3fd653e', 'Marshalls Irish Pub', '5b2fc2e48a277', '5b2fcfde7fa85', 'Square Mango, General Maxilom Avenue', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'pub, bar, restaurant', 10.3103692, 123.8954881, '2018-06-24 14:59:51', NULL),
(125, '5b2fff587b5d1', 'Club Mermaid', '5b2fc2e48a277', '', 'M.L. Quezon National Highway', '', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'bar', 10.2792754, 123.9879758, '2018-06-24 15:00:16', NULL),
(126, '5b2fff8fe360c', 'The Distillery', '5b2fc2e48a277', '5b2fd048b5630', 'Unit H, Crossroads Mall, Gov. M. Cuenco Ave', '5b2fe54b8cc64', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'pub, wine, beer, spirits, wine bar', 10.3282505, 123.9094869, '2018-06-24 15:01:11', NULL),
(127, '5b2fffab56c04', 'Ultra Club', '5b2fc2e48a277', '5b2fcfde7fa85', 'L1 , Mango Square, General Maxilom Avenue Corner Juana Osmena Street', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'dance, night club, lounge, pub', 10.310609, 123.89592, '2018-06-24 15:01:39', NULL),
(128, '5b2fffc6ef58b', 'Kampo Grill And Bar', '5b2fc2e48a277', '5b2fcefceb1a7', 'North Reclamation Area', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'bar, grill', 0, 0, '2018-06-24 15:02:06', NULL),
(129, '5b30000cce120', 'League Sports Bar', '5b2fc2e48a277', '', 'Panagdait, Mabolo', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'sports bar, pub, bar, grill', 10.3247394, 123.9198501, '2018-06-24 15:03:16', NULL),
(130, '5b300032b5a10', 'Mr. A Bar & Restaurant', '5b2fc2e48a277', '', 'Nivel Hills, Busay, Lahug', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'restaurant, bar, grill', 10.343396, 123.895172, '2018-06-24 15:03:54', NULL),
(131, '5b30004db004f', 'The Classroom', '5b2fc2e48a277', '5b2fd35f9d84d', 'City Time Square, Mantawe Ave', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'bar, grill, filipino restaurant, pub', 10.3264126, 123.9331506, '2018-06-24 15:04:21', NULL),
(132, '5b3000e462e0a', 'Skin911', '5b2fc2e7128f7', '', 'Gov.M.Cuenco Ave, #55 El dorado', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'skin care', 0, 0, '2018-06-24 15:06:52', NULL),
(133, '5b30011318431', 'Kevlo Skin Clinic', '5b2fc2e7128f7', '5b2fcf246cb3a', 'Boniacio District, F. 6000, F. Cabahug St', '5b2fe54b8cc64', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'skin care service, beauty, cosmetics', 10.3261563, 123.9176397, '2018-06-24 15:07:39', NULL),
(134, '5b30012f647eb', 'Skin Perfection Body Contouring Salon And Spa - Lahug', '5b2fc2e7128f7', '', 'SSY Business Center Lahug Salinas Drive', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'body contouring, salon, spa', 0, 0, '2018-06-24 15:08:07', NULL),
(135, '5b3001659d325', 'Cherry Blossoms Massage & Spa', '5b2fc2e7128f7', '', 'Minoza St.', '5b2fe6e9ea351', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'massage service', 9.8840792, 123.5991128, '2018-06-24 15:09:01', NULL),
(136, '5b30019218c81', 'Grand Royal SPA', '5b2fc2e7128f7', '5b2fd0301bb8f', '2/F Banilad Town Center', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'health spa, massage service, health, beauty', 10.340827, 123.912059, '2018-06-24 15:09:46', NULL),
(137, '5b3001a978f66', 'Thai Boran', '5b2fc2e7128f7', '', 'Fuente Osmeña', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'massage service, health spa', 0, 0, '2018-06-24 15:10:09', NULL),
(138, '5b3001c80edca', 'Lay Bare Cebu - Banilad', '5b2fc2e7128f7', '5b2fd0301bb8f', 'Banilad Town Centre', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hair removal service, hair waxing', 10.3410825, 123.9122871, '2018-06-24 15:10:40', NULL),
(139, '5b3001dd7daf2', 'Lay Bare Cebu - SM City Cebu', '5b2fc2e7128f7', '5b2fcee8108cc', 'Northwing, A2106, SM City Cebu, Juan Luna Avenue', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hair removal service, hair waxing', 10.312257, 123.91878, '2018-06-24 15:11:01', NULL),
(140, '5b3001fba0c70', 'Holiday Spa Hotel', '5b2fc2e7128f7', '', 'Gov. M. Cuenco Ave, Kasambagan', '5b2fe54b8cc64', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'beauty salon, spa', 10.333619, 123.9105758, '2018-06-24 15:11:31', NULL),
(141, '5b30020a32e2f', 'Banyan Tree Spa', '5b2fc2e7128f7', '', 'Raja Park Hotel', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'spa', 26.8920037, 75.8292911, '2018-06-24 15:11:46', NULL),
(142, '5b30023ee7096', 'Davids Salon - Ayala Center Cebu', '5b2fc2e7128f7', '5b2fceba7ff97', 'Basement 1, Ayala Center Cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hair care, nail care, hair removal, waxing, spa, salon', 10.318487, 123.90471, '2018-06-24 15:12:38', NULL),
(143, '5b300250a5601', 'Davids Salon - Lahug', '5b2fc2e7128f7', '', 'QC Pavillion Barrodo Ave.', '5b2fe5382c8e6', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hair care, nail care, hair removal, waxing, spa, salon', 0, 0, '2018-06-24 15:12:56', NULL),
(144, '5b3002f4a244c', 'Davids Salon - Country Mall', '5b2fc2e7128f7', '', 'Unit 1122 Grd. Flr. Gaisano Country Mall, Banilad Rd.', '5b2fe561e2c7a', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hair care, nail care, hair removal, waxing, spa, salon', 0, 0, '2018-06-24 15:15:40', NULL),
(145, '5b300310138ca', 'Davids Salon - ELIZABETH MALL', '5b2fc2e7128f7', '', '2nd Flr. Elizabeth Mall Leon Kidlat St., N. Bakaso Ave.', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'hair care, nail care, hair removal, waxing, spa, salon', 40.6511033, -74.1875497, '2018-06-24 15:16:08', NULL),
(146, '5b300328b72cd', 'Judy Tattoo Studio ', '5b2fc2e7128f7', '', 'Conchita Building 3rd Floor, Jones Avenue, Osmeña Boulevard', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'tattoo, piercing, arts, entertainment', 0, 0, '2018-06-24 15:16:32', NULL),
(147, '5b30033d72b0c', 'Needlepoint Cebu Tattoo Studio', '5b2fc2e7128f7', '', '124 Gorordo Ave. Brgy. Kamputhaw, Cebu City 6000', '5b2ff9536b27d', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'tattoo, piercing', 10.319191, 123.899507, '2018-06-24 15:16:53', NULL),
(148, '5b300367312f6', 'Plantation Bay Resort & Spa', '5b2fc2e7128f7', '', 'Marigondon, Mactan Island', '', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'resort, spa', 10.2757142, 123.9777887, '2018-06-24 15:17:35', NULL),
(149, '5b3003ec06334', 'The Hillot Spa', '5b2fc2e7128f7', '', 'Highway Brgy. Pajo, Mactan Island', '5b3003ab95122', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'massage service', 10.3122138, 123.9556012, '2018-06-24 15:19:48', NULL),
(150, '5b30040c011e7', 'Breth Salon', '5b2fc2e7128f7', '', 'Pusok', '5b2fe5983f79e', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'hair salon, local service, massage service', 10.3224282, 123.9694938, '2018-06-24 15:20:20', NULL),
(151, '5b30042676119', 'Prescription Tattoos', '5b2fc2e7128f7', '', 'Lo-oc, Maribago', '5b2fe5c85b3f6', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'tattoo, piercing', 10.2902065, 123.9984363, '2018-06-24 15:20:46', NULL),
(152, '5b30043b5bee0', 'T&T Tattoo & Tea Coffee, Cosmetic', '5b2fc2e7128f7', '', 'Maribago', '5b2fe5c85b3f6', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'tattoo, piercing', 0, 0, '2018-06-24 15:21:07', NULL),
(153, '5b30046248d8f', 'Shangri-Las Mactan Resort & Spa, Cebu', '5b2fc2e7128f7', '', 'Punta Engaño Rd', '5b2fe5b8615f4', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'spa, resort', 0, 0, '2018-06-24 15:21:46', NULL),
(154, '5b30047451414', 'Coco Hilot Wellness Spa', '5b2fc2e7128f7', '', '2 M.L. Quezon National Highway, M.L. Quezon National Highway', '5b2fe5c85b3f6', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'massage service', 10.2955864, 123.9993509, '2018-06-24 15:22:04', NULL),
(155, '5b30049abd5c6', 'Amrel Beauty And Massage', '5b2fc2e7128f7', '', 'Deca Homes Mactan 4', '', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'massage service, massage therapist', 10.3065486, 123.9844074, '2018-06-24 15:22:42', NULL),
(156, '5b3004ec2bb92', 'Adic Tattoo', '5b2fc2e7128f7', '', '692 ML. Quezon ave. Casuntingan', '5b3004d4be9f0', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'tattoo, piercing', 10.3470363, 123.9284981, '2018-06-24 15:24:04', NULL),
(157, '5b30050235eab', 'Athena Hair & Beauty Zone', '5b2fc2e7128f7', '', 'M.D Echavez st.', '5b2ff9ad1d4e6', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'hair salon, beauty store', 37.7894904, -122.4089861, '2018-06-24 15:24:26', NULL),
(158, '5b30054b3fec3', 'Beautypia', '5b2fc2e7128f7', '', 'Hernan Cortes Street', '', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'nail salon, skin care', 10.3355331, 123.9236883, '2018-06-24 15:25:39', NULL),
(159, '5b30056294074', 'Beautypia', '5b2fc2e7128f7', '', 'Hernan Cortes Street', '', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'nail salon, skin care', 10.3355331, 123.9236883, '2018-06-24 15:26:02', NULL),
(160, '5b3005772581b', 'Coco Hair Studio', '5b2fc2e7128f7', '5b2fd01f2501d', 'Park Mall, Ouano Ave', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'hair salon', 0, 0, '2018-06-24 15:26:23', NULL),
(161, '5b30059fb0c82', 'Piandre Salon - Mandaue', '5b2fc2e7128f7', '5b2fd0a6c3654', 'Oakridge Business Park, A. S. Fortuna', '5b2fe57299485', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'beauty salon', 10.342604, 123.918818, '2018-06-24 15:27:03', NULL),
(162, '5b3005c2508d9', 'Yoga Thai Massage & Spa', '5b2fc2e7128f7', '5b2fd35f9d84d', 'City Time Square Phase 2 Level 2', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'massage service, spa', 40.7589917, -73.9845298, '2018-06-24 15:27:38', NULL),
(163, '5b3005d71ef2b', 'Salon De Arnnie', '5b2fc2e7128f7', '', 'Hernan Cortes St', '', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'hair salon', 10.3355331, 123.9236883, '2018-06-24 15:27:59', NULL),
(164, '5b300620137d1', 'S SPA City Time Square', '5b2fc2e7128f7', '5b2fd35f9d84d', 'City Time Square 1', '5b2fe557f3f9a', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'massage service, spa', 40.7589917, -73.9845298, '2018-06-24 15:29:12', NULL),
(165, '5b30063695175', 'Oh My Lash Cebu', '5b2fc2e7128f7', '', 'A. S. Fortuna', '', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'beauty salon, make up artist', 10.3394663, 123.9246923, '2018-06-24 15:29:34', NULL),
(166, '5b30065acb7bb', 'Loveli Skin', '5b2fc2e7128f7', '', '1080 VSC Building, Hernan Cortes Street', '', '5b2fe17d7e323', '5b2fe2c4de909', 6014, 'medical service, skin care, beauty salon', 10.327444, 123.922105, '2018-06-24 15:30:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `type` enum('business','travel') NOT NULL DEFAULT 'business',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `category_name`, `type`, `created_at`, `deleted_at`) VALUES
(1, '5b2fc2b9d9a2f', 'Food & Drinks', 'business', '2018-06-24 10:41:37', NULL),
(2, '5b2fc2e074db6', 'Hotels', 'business', '2018-06-24 10:42:16', NULL),
(3, '5b2fc2e48a277', 'Night Life', 'business', '2018-06-24 10:42:20', NULL),
(4, '5b2fc2e7128f7', 'Personal Care', 'business', '2018-06-24 10:42:23', NULL),
(5, '5b30090d18c5c', 'Caves', 'travel', '2018-06-24 15:41:41', NULL),
(6, '5b30091e8d9d9', 'Beaches', 'travel', '2018-06-24 15:41:58', NULL),
(7, '5b300925eb08b', 'Mountains', 'travel', '2018-06-24 15:42:05', NULL),
(8, '5b30092f850b5', 'Falls & Springs', 'travel', '2018-06-24 15:42:15', NULL),
(9, '5b30093aec568', 'City Breaks', 'travel', '2018-06-24 15:42:26', NULL),
(10, '5b300940a25a3', 'Temples', 'travel', '2018-06-24 15:42:32', NULL),
(11, '5b300946d1b6f', 'History', 'travel', '2018-06-24 15:42:38', NULL),
(12, '5b30094d83573', 'Sanctuary', 'travel', '2018-06-24 15:42:45', NULL),
(13, '5b3009526b7f3', 'Lagoons', 'travel', '2018-06-24 15:42:50', NULL),
(14, '5b30095a51935', 'Lakes & Rivers', 'travel', '2018-06-24 15:42:58', NULL),
(15, '5b3009659ab2d', 'Theme Parks & Amusement Parks', 'travel', '2018-06-24 15:43:09', NULL),
(16, '5b30096b8ced2', 'Zoo', 'travel', '2018-06-24 15:43:15', NULL),
(17, '5b3009717d33c', 'Monuments & Landmarks', 'travel', '2018-06-24 15:43:21', NULL),
(18, '5b300978e62e5', 'Museums', 'travel', '2018-06-24 15:43:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(20) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `province_uuid` varchar(50) NOT NULL,
  `city_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `uuid`, `province_uuid`, `city_name`, `created_at`, `deleted_at`) VALUES
(1, '5b2fe179b1a82', '5b2fe2c4de909', 'Cebu', '2018-06-24 12:52:49', NULL),
(2, '5b2fe17d7e323', '5b2fe2c4de909', 'Mandaue', '2018-06-24 12:52:53', NULL),
(3, '5b2fe181d049b', '5b2fe2c4de909', 'Talisay', '2018-06-24 12:52:57', NULL),
(4, '5b2fe185e22ac', '5b2fe2c4de909', 'Lapu-Lapu', '2018-06-24 12:53:01', NULL),
(5, '5b2fe18d9bf65', '5b2fe2c4de909', 'Cordova', '2018-06-24 12:53:09', NULL),
(7, '5b300b6a93743', '5b2fe2c4de909', 'Daanbantayan', '2018-06-24 15:51:46', NULL),
(8, '5b300b714bc49', '5b2fe2c4de909', 'Santa Fe', '2018-06-24 15:51:53', NULL),
(9, '5b300b7e31169', '5b2fe2c4de909', 'Madridejos', '2018-06-24 15:52:06', NULL),
(10, '5b300b8a0db18', '5b2fe2c4de909', 'Bantayan', '2018-06-24 15:52:18', NULL),
(11, '5b300b9888d43', '5b2fe2c4de909', 'Moalboal', '2018-06-24 15:52:32', NULL),
(12, '5b300b9adba82', '5b2fe2c4de909', 'Badian', '2018-06-24 15:52:34', NULL),
(13, '5b300b9dce26b', '5b2fe2c4de909', 'Oslob', '2018-06-24 15:52:37', NULL),
(15, '5b300be79dfc0', '5b2fe2c4de909', 'Balamban', '2018-06-24 15:53:51', NULL),
(16, '5b300befc9a03', '5b2fe2c4de909', 'Dalaguete', '2018-06-24 15:53:59', NULL),
(17, '5b300bf4dfa01', '5b2fe2c4de909', 'Alegria', '2018-06-24 15:54:04', NULL),
(18, '5b300c0663ad5', '5b2fe2c4de909', 'Samboan', '2018-06-24 15:54:22', NULL),
(19, '5b300c0976593', '5b2fe2c4de909', 'Sogod', '2018-06-24 15:54:25', NULL),
(20, '5b300c0cf03e9', '5b2fe2c4de909', 'Argao', '2018-06-24 15:54:28', NULL),
(21, '5b300c0f561c2', '5b2fe2c4de909', 'San Fernando', '2018-06-24 15:54:31', NULL),
(22, '5b300c130fb88', '5b2fe2c4de909', 'Ginatilan', '2018-06-24 15:54:35', NULL),
(23, '5b300c17f05bd', '5b2fe2c4de909', 'Alcantara', '2018-06-24 15:54:39', NULL),
(24, '5b300c1b86e8c', '5b2fe2c4de909', 'Barili', '2018-06-24 15:54:43', NULL),
(25, '5b300c20111d0', '5b2fe2c4de909', 'Tuburan', '2018-06-24 15:54:48', NULL),
(26, '5b300c242f429', '5b2fe2c4de909', 'Malabuyoc', '2018-06-24 15:54:52', NULL),
(27, '5b300c292c04d', '5b2fe2c4de909', 'Carmen', '2018-06-24 15:54:57', NULL),
(28, '5b300c3ba61ee', '5b2fe2c4de909', 'Toledo', '2018-06-24 15:55:15', NULL),
(29, '5b300c42cf45e', '5b2fe2c4de909', 'Danao', '2018-06-24 15:55:22', NULL),
(30, '5b300c7e3c74a', '5b2fe2c4de909', 'Boljoon', '2018-06-24 15:56:22', NULL),
(31, '5b300caa1a361', '5b2fe2c4de909', 'Carcar', '2018-06-24 15:57:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `localities`
--

CREATE TABLE `localities` (
  `id` int(20) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `locality_name` varchar(200) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `localities`
--

INSERT INTO `localities` (`id`, `uuid`, `locality_name`, `latitude`, `longitude`, `created_at`, `deleted_at`) VALUES
(1, '5b2fceba7ff97', 'Ayala Center Cebu', 0, 0, '2018-06-24 11:32:06', NULL),
(3, '5b2fcee8108cc', 'SM City Cebu', 0, 0, '2018-06-24 11:33:36', NULL),
(4, '5b2fcefceb1a7', 'North Reclamation Area', 0, 0, '2018-06-24 11:33:56', NULL),
(5, '5b2fcf007d88a', 'IT Park', 0, 0, '2018-06-24 11:34:00', NULL),
(6, '5b2fcf2193b97', 'The Greenery', 0, 0, '2018-06-24 11:34:33', NULL),
(7, '5b2fcf246cb3a', 'Bonifacio District', 0, 0, '2018-06-24 11:34:36', NULL),
(8, '5b2fcf5e56ce2', 'SM City Lacion', 0, 0, '2018-06-24 11:35:34', NULL),
(9, '5b2fcf689e7b7', 'SM Seaside City Cebu', 0, 0, '2018-06-24 11:35:44', NULL),
(10, '5b2fcfaaa38df', 'Century Plaza Complex', 0, 0, '2018-06-24 11:36:50', NULL),
(11, '5b2fcfde7fa85', 'Mango Square Mall', 0, 0, '2018-06-24 11:37:42', NULL),
(12, '5b2fd01f2501d', 'Parkmall', 0, 0, '2018-06-24 11:38:47', NULL),
(13, '5b2fd0269c409', 'Gaisano Country Mall', 0, 0, '2018-06-24 11:38:54', NULL),
(14, '5b2fd0301bb8f', 'Banilad Town Center', 0, 0, '2018-06-24 11:39:04', NULL),
(15, '5b2fd03dcea01', 'Streetscape Mall Cebu', 0, 0, '2018-06-24 11:39:17', NULL),
(16, '5b2fd048b5630', 'Crossroads Cebu', 0, 0, '2018-06-24 11:39:28', NULL),
(17, '5b2fd07e29ff0', 'Pueblo Verde', 0, 0, '2018-06-24 11:40:22', NULL),
(18, '5b2fd08a601f3', 'J Centre Mall', 0, 0, '2018-06-24 11:40:34', NULL),
(19, '5b2fd0a6c3654', 'Oakridge Business Park', 0, 0, '2018-06-24 11:41:02', NULL),
(20, '5b2fd0dee32f6', 'JY Square Mall', 0, 0, '2018-06-24 11:41:58', NULL),
(21, '5b2fd2054994b', 'Crown Regency Hotel', 0, 0, '2018-06-24 11:46:53', NULL),
(22, '5b2fd35f9d84d', 'City Time Square', 0, 0, '2018-06-24 11:52:39', NULL),
(23, '5b2fd52fd7456', 'One Paseo', 0, 0, '2018-06-24 12:00:23', NULL),
(24, '5b2fd71c9eacf', 'Piazza Elesia', 0, 0, '2018-06-24 12:08:36', NULL),
(25, '5b2fd85829fcd', 'South Road Properties', 0, 0, '2018-06-24 12:13:52', NULL),
(26, '5b2fdb9d22635', 'A.S. Fortuna St.', 0, 0, '2018-06-24 12:27:49', NULL),
(27, '5b2fdd7bdaced', 'Mactan Shrine', 0, 0, '2018-06-24 12:35:47', NULL),
(28, '5b2fdda5b9f1f', 'Marina Mall', 0, 0, '2018-06-24 12:36:29', NULL),
(29, '5b2fddaa36e76', 'Island Central Mall', 0, 0, '2018-06-24 12:36:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(20) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `province_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `uuid`, `province_name`, `created_at`, `deleted_at`) VALUES
(1, '5b2fe2c15c636', 'Bohol', '2018-06-24 12:58:17', NULL),
(2, '5b2fe2c4de909', 'Cebu', '2018-06-24 12:58:20', NULL),
(3, '5b2fe2c96d58c', 'Negros Oriental', '2018-06-24 12:58:25', NULL),
(4, '5b2fe2cd32ce3', 'Siquijor', '2018-06-24 12:58:29', NULL),
(5, '5b3009a77277c', 'Aklan', '2018-06-24 15:44:15', NULL),
(6, '5b3009ab8dfd7', 'Antique', '2018-06-24 15:44:19', NULL),
(7, '5b3009aec50cc', 'Capiz', '2018-06-24 15:44:22', NULL),
(8, '5b3009b1ed042', 'Guimaras', '2018-06-24 15:44:25', NULL),
(9, '5b3009b4ee4ee', 'Iloilo', '2018-06-24 15:44:28', NULL),
(10, '5b3009ba78d11', 'Bohol', '2018-06-24 15:44:34', NULL),
(11, '5b3009beee554', 'Biliran', '2018-06-24 15:44:38', NULL),
(12, '5b3009c1de704', 'Leyte', '2018-06-24 15:44:41', NULL),
(13, '5b3009c795319', 'Samar', '2018-06-24 15:44:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `travel_table`
--

CREATE TABLE `travel_table` (
  `id` int(20) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `travel_name` varchar(200) NOT NULL,
  `category_uuid` varchar(50) NOT NULL,
  `locality_uuid` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `barangay_uuid` varchar(50) NOT NULL,
  `city_uuid` varchar(50) NOT NULL,
  `province_uuid` varchar(50) NOT NULL,
  `zip` int(20) NOT NULL,
  `activities` text NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `travel_table`
--

INSERT INTO `travel_table` (`id`, `uuid`, `travel_name`, `category_uuid`, `locality_uuid`, `address`, `barangay_uuid`, `city_uuid`, `province_uuid`, `zip`, `activities`, `longitude`, `latitude`, `created_at`, `deleted_at`) VALUES
(1, '5b300f219fffd', 'Amihan Beach', '5b30091e8d9d9', '', 'A. BATOBALONOS ST', '5b300ee1cfb14', '5b300b714bc49', '5b2fe2c4de909', 6047, 'kite boarding, motorbike riding, island hopping, swimming', 0, 0, '2018-06-24 16:07:37', NULL),
(2, '5b300fc9ba45c', 'Bounty Beach', '5b30091e8d9d9', '', 'Daanbantayan', '', '5b300b6a93743', '5b2fe2c4de909', 6013, 'diving, shark sighting, snorkeling', 0, 0, '2018-06-24 16:10:25', NULL),
(3, '5b300ff33492f', 'Cabilao Island', '5b30091e8d9d9', '', 'MALAPASCUA ISLAND', '', '5b300b6a93743', '5b2fe2c4de909', 6013, 'swimming', 0, 0, '2018-06-24 16:11:07', NULL),
(4, '5b301070a7da0', 'Kota Beach', '5b30091e8d9d9', '', 'F. Duarte St.', '', '5b300b714bc49', '5b2fe2c4de909', 6047, 'swimming', 0, 0, '2018-06-24 16:13:12', NULL),
(5, '5b30109b74ef7', 'Nalusuan Island', '5b30091e8d9d9', '', 'MACTAN ISLAND', '', '5b2fe18d9bf65', '5b2fe2c4de909', 6017, 'snorkeling, kayaking, scuba diving', 0, 0, '2018-06-24 16:13:55', NULL),
(6, '5b3010d458305', 'Ocean Vida Beach', '', '', 'DAANBANTAYAN', '', '5b300b6a93743', '5b2fe2c4de909', 6013, 'snorkeling, kayaking, stand up paddling, scuba diving', 0, 0, '2018-06-24 16:14:52', NULL),
(7, '5b3010ff38511', 'Panagsama Beach', '5b30091e8d9d9', '', 'MOALBOAL', '', '5b300b9888d43', '5b2fe2c4de909', 6032, 'snorkeling, scuba diving, swimming', 0, 0, '2018-06-24 16:15:35', NULL),
(8, '5b30113039004', 'Mt. Babag', '5b300925eb08b', '', 'CEBU CITY', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'trekking', 0, 0, '2018-06-24 16:16:24', NULL),
(9, '5b30117e4ca56', 'Mt. Kan-irag', '5b300925eb08b', '', 'Cebu City', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'trekking', 0, 0, '2018-06-24 16:17:42', NULL),
(10, '5b3011a4c9350', 'Mt. Lanaya', '5b300925eb08b', '', 'Legaspi', '', '5b300bf4dfa01', '5b2fe2c4de909', 6030, 'trekking', 0, 0, '2018-06-24 16:18:20', NULL),
(11, '5b3011c974069', 'Mt. Manunggal', '5b300925eb08b', '', 'Magsaysay', '', '5b300be79dfc0', '5b2fe2c4de909', 6041, 'trekking', 0, 0, '2018-06-24 16:18:57', NULL),
(12, '5b30120818206', 'Osmeña Peak', '5b300925eb08b', '', 'Dalaguete', '', '5b300befc9a03', '5b2fe2c4de909', 6022, 'trekking, sight seeing', 0, 0, '2018-06-24 16:20:00', NULL),
(13, '5b3012abd56ce', 'Sirao Peak', '5b300925eb08b', '', 'Sirao', '5b30126646da2', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'adventure, taking pictures, swimming, hiking', 0, 0, '2018-06-24 16:22:43', NULL),
(14, '5b3012ead3dd1', 'Aguinid Falls', '5b30092f850b5', '', 'samboan', '', '5b300c0663ad5', '5b2fe2c4de909', 6027, 'swimming, trekking, hiking', 0, 0, '2018-06-24 16:23:46', NULL),
(15, '5b30130201014', 'Budlaan Falls', '5b30092f850b5', '', 'Cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'swimming', 0, 0, '2018-06-24 16:24:10', NULL),
(16, '5b30134f43068', 'Kawasan Falls', '5b30092f850b5', '', 'badian', '', '5b300b9adba82', '5b2fe2c4de909', 6031, 'swimming, hiking, trekking, taking picture, canyoneering', 0, 0, '2018-06-24 16:25:27', NULL),
(17, '5b30137685bc6', 'Tumalog Falls', '5b30092f850b5', '', 'oslob', '', '5b300b9dce26b', '5b2fe2c4de909', 6025, 'trekking, swimming, taking pictures, hiking', 0, 0, '2018-06-24 16:26:06', NULL),
(18, '5b3013d06f4f5', 'Sky Experience Adventure', '5b30093aec568', '5b2fd2054994b', 'CROWN REGENCY HOTEL AND TOWERS, FUENTE TOWERS, Osmeña BLVD', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'dining, disco, high altitude activities, rides', 0, 0, '2018-06-24 16:27:36', NULL),
(19, '5b3013f674b93', 'Cebu Mountain Bike Adventure', '5b30093aec568', '', 'V RAMA AVE', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'mountain trailing, adventure', 0, 0, '2018-06-24 16:28:14', NULL),
(20, '5b30142142c8b', 'BOWLING CENTER', '5b30093aec568', '5b2fcee8108cc', '3RD LEVEL, SM CITY CEBU,', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'billiards, bowling', 0, 0, '2018-06-24 16:28:57', NULL),
(21, '5b30145ccf7fc', 'Ice Skating', '5b30093aec568', '5b2fcf689e7b7', '3RD FLOOR, SM SEASIDE CITY CEBU, CEBU SOUTH COASTAL RD, MAMBALING', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'figure skating, ice hockey, leisure skating', 0, 0, '2018-06-24 16:29:56', NULL),
(22, '5b3014820364c', 'Tandem Skydive', '5b30093aec568', '', 'NATIONAL ROAD', '', '5b300b714bc49', '5b2fe2c4de909', 6047, 'sky diving', 0, 0, '2018-06-24 16:30:34', NULL),
(23, '5b3014e5ec018', 'ADVENTURE CAFE AND ZIPLINE', '5b30093aec568', '', 'CEBU TRANSCENTRAL HWY', '', '5b300be79dfc0', '5b2fe2c4de909', 6041, 'ziplining, climbing, caving, waterfall, swimming, rappeling, adventure', 0, 0, '2018-06-24 16:32:13', NULL),
(24, '5b3015002486f', 'Tops Lookout', '5b30093aec568', '', 'CEBU TRANSCENTRAL HWY', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'sight seeing, taking pictures', 0, 0, '2018-06-24 16:32:40', NULL),
(25, '5b301521bd887', 'DANASAN ECO-ADVENTURE PARK', '5b30093aec568, 5b3009659ab2d', '', 'Danao', '', '5b300c42cf45e', '5b2fe2c4de909', 6004, 'go kart, horseback riding, wakeboarding, atv rides', 0, 0, '2018-06-24 16:33:13', NULL),
(26, '5b3015598104d', 'MONTANEZA FALLS', '5b30093aec568', '', 'Malabuyoc', '', '5b300c242f429', '5b2fe2c4de909', 6029, 'scrambling, climbing, jumping, rappelling, swimming, walking', 0, 0, '2018-06-24 16:34:09', NULL),
(27, '5b3015a30eba1', 'SIEGE PAINTBALL CEBU', '5b30093aec568', '', 'E SABELLANO STREET', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'paint ball', 0, 0, '2018-06-24 16:35:23', NULL),
(28, '5b3015d1dd6f8', 'FO GUANG SHAN CHU UN TEMPLE', '5b300940a25a3', '', 'cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'studying, meditation, english dharma, kalimasada, chinese dharma services, taking pictures, tai chi, praying', 0, 0, '2018-06-24 16:36:09', NULL),
(29, '5b3015e4ec59b', 'INDIAN HINDU TEMPLE', '5b300940a25a3', '', 'cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'praying', 0, 0, '2018-06-24 16:36:28', NULL),
(30, '5b301611bf13e', 'HEAVENLY TEMPLE OF CHARITY', '5b300940a25a3', '', 'Cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'kung fu, wushu, worshipping, taking pictures, playing', 0, 0, '2018-06-24 16:37:13', NULL),
(31, '5b3016276ba3d', 'TEMPLE OF LEAH', '5b300940a25a3', '', 'cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'taking pictures', 0, 0, '2018-06-24 16:37:35', NULL),
(32, '5b301639b1b83', 'PHILIPPINE TAOIST TEMPLE', '5b300940a25a3', '', 'cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'praying, meditating', 0, 0, '2018-06-24 16:37:53', NULL),
(33, '5b30165649ded', 'FORT SAN PEDRO', '5b300946d1b6f', '', 'cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'taking pictures', 0, 0, '2018-06-24 16:38:22', NULL),
(34, '5b3016a021da5', 'BASILICA DEL SANTO NIÃ‘O', '5b300946d1b6f', '', 'cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'praying', 0, 0, '2018-06-24 16:39:36', NULL),
(35, '5b3016cb32561', 'OLANGO ISLAND WILDLIFE SANCTUARY', '5b30094d83573', '', 'SAN VICENTE, OLANGO', '5b300d831bc4c', '5b300c130fb88', '5b2fe2c4de909', 6015, 'marine watching, scuba diving, swimming, taking pictures, tour, snorkeling, bird watching', 0, 0, '2018-06-24 16:40:19', NULL),
(36, '5b3016e636b33', 'JUMALON BUTTERFLY SANCTUARY', '5b30094d83573', '', 'cebu', '', '5b2fe179b1a82', '5b2fe2c4de909', 6000, 'taking pictures, sightseeing', 0, 0, '2018-06-24 16:40:46', NULL),
(37, '5b30178f2eef7', 'LAPU-LAPU SHRINE', '5b3009717d33c', '5b2fdd7bdaced', 'mactan shrine', '', '5b2fe185e22ac', '5b2fe2c4de909', 6015, 'eating, swimming, exploring history, taking pictures', 0, 0, '2018-06-24 16:43:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangays`
--
ALTER TABLE `barangays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `business_table`
--
ALTER TABLE `business_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `localities`
--
ALTER TABLE `localities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `travel_table`
--
ALTER TABLE `travel_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangays`
--
ALTER TABLE `barangays`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `business_table`
--
ALTER TABLE `business_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `localities`
--
ALTER TABLE `localities`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `travel_table`
--
ALTER TABLE `travel_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
