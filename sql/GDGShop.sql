-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2021 at 03:35 PM
-- Server version: 5.7.32
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `GdgShop`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `categoryId`, `image`) VALUES
(1, 1, 'https://lh3.googleusercontent.com/7JUNyK3fThud3X34MZcAXLFpDLp_boBi6pdRmhY7qabReoPHNMqumHzD7bgldyZFs9hUxN93ebtq4YWx345aCt08DhxAep8C3ds=rw-e365-w2880'),
(2, 2, 'https://lh3.googleusercontent.com/YpflgJ6gKoW063k_nXfi_EZQcnI7O2DRVANH5GYEQHYqwHLci2z4Cy_cRm4I7ecD9DOXxZq0FZ1qqyW1SOEOT48to7mYuDSPAQ=rw-e365-w2880'),
(3, 3, 'https://lh3.googleusercontent.com/SBk3rVTAqOXBW0s4y9oFseH1YQWidhksqqPGbXs4pM58ekdLZ9YoZ0lozu6yYFmG1qdv7gNBCX2JIXpLYv7_9IYetb27Ovqyfl0j=rw-e365-w2880'),
(4, 4, 'https://static1.purebreak.com.br/articles/2/15/57/2/@/76928-google-anuncia-novo-modelo-das-camera-opengraph_1200-1.jpg'),
(5, 5, 'https://lh3.googleusercontent.com/T3ugb3PGwOqg5E52nMLU1KRjcjqLBjZbjesggk3pi5xIiuPl6aLnW56-9tFAyQ7Gn2ibC_LShp1WLG6IofuUGvb8ojJBR6c3Fpik=rw-e365-w2880');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Smartphones'),
(2, 'Speakers'),
(3, 'Chromecast'),
(4, 'Cámaras'),
(5, 'Accesórios');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `price` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `image`, `price`) VALUES
(1, 'Nest mini', 2, 'https://lh3.googleusercontent.com/7pq6Fhyz_qUGO8ORh6y0Bn6g7lRSBg3yHkNBXmt51g-mc2Viuv6LMjk4E0NXZGI7Rk4', 34.90),
(2, 'Pixel 4A', 1, 'https://pbs.twimg.com/media/Ej3TPP5U4AAf0ak.jpg', 299.30),
(3, 'Pixel 4A 5G', 1, 'https://cdn.shopify.com/s/files/1/2554/0310/products/71gH56RFM-L._AC_SL1500.jpg?v=1620082414', 399.40),
(4, 'Chromecast', 3, 'https://lh3.googleusercontent.com/7U7cOaIvk5_BcW1aZL8Uyqhsk2f2fcZyBMD0_Tqpqi9QoaD0nRJE4EZqzOR5NuhqaOY', 74.99),
(5, 'Nest Audio', 2, 'https://lh3.googleusercontent.com/JB4AqJ7DojvThh35uAFMqmBfEW3Pl1TUHe1o9JPJ-NyyjOr2SjEFkQ5QNANV1znf6Do', 174.99),
(8, 'Nest Cam Iq Indoor', 4, 'https://lh3.googleusercontent.com/OXV7GiFbNBy9ureo4EuAAmZNffCVbZeyfOOUpimCxHvnoHxLud-Maj9a5_TXdrrAIAQ', 299.00),
(9, 'Nest Cam Iq Outdoor', 4, 'https://lh3.googleusercontent.com/i__4htQC2HC0QzGACY8Bcl6uJs5UgWEtVdvoaURBcXo6EdCjNjoBDvS8sfNT10subtqw', 399.00),
(10, 'Google Ethernet Adapter', 5, 'https://lh3.googleusercontent.com/I9hC8PrmFWn6N8rwBpteOkv95-tF6J4TJ9t6SayoCrMZ0rbBLlhpoXZN14ekxlANTw', 15.00),
(11, 'Google Wifi', 5, 'https://lh3.googleusercontent.com/XmISbYayt99EMUYacVDdutx_kVz_9ryL8HqOuw_C32AxwUhi09AflAuyEbYw7V56d2A', 99.00),
(12, 'Chromecast + Google TV', 3, 'https://lh3.googleusercontent.com/lPergWbp7um1fCeFFKOUalK-YMWAZiyIziIbvLXdTfZlSmaLz19yWOrenUd-TFZSRdAq7oyFYT-QRdNsJ1LtVg', 49.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
