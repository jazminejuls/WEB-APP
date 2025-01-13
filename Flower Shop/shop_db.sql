-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2025 at 10:30 AM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(21, 'Red Rose', 'The classic symbol of passionate love, a red rose makes a bold statement of deep affection.', 85, 'red rose pc.jpg'),
(23, 'Yellow Rose', 'Bright and sunny, yellow rose express friendship, joy, and new beginnings.', 90, 'yellow rose pc.jpg'),
(24, 'Pink Rose', 'Romantic and refined, the pink rose speaks of admiration, joy, and sweetness.', 90, 'pink rose pc.jpg'),
(25, 'White Tulip', 'Elegant and serene, white tulip represent purity and forgiveness, perfect for thoughtful gifting.', 120, 'white tulip pc.jpg'),
(26, 'Purple Tulip', 'A stunning mix of elegance and mystery, purple tulip is perfect for sending messages of royalty and sophistication.', 115, 'purple tulip pc.jpg'),
(27, 'Yellow Tulip', 'Symbolizing cheerfulness and hope, yellow tulip add a splash of warmth to any floral arrangement.', 110, 'yellow tulip pc.jpg'),
(28, 'Pink Tulip', 'Bright and cheerful, these pink tulip symbolize caring and love, ideal for expressing heartfelt emotions.', 110, 'pink tulip pc.jpg'),
(29, 'Sunflower', 'Radiating warmth and happiness, sunflower brings sunshine and positivity to any space.', 100, 'sunflower pc.jpg'),
(30, 'White Lily', 'Pure and elegant, white lilies symbolize purity and virtue, adding a touch of grace to any bouquet.', 120, 'white lily pc.jpg'),
(31, 'Pink Lily', 'Graceful and fragrant, the pink lily represents beauty and purity, making it a perfect gift for any occasion.', 140, 'pink lily pc.jpg'),
(32, 'Lavender', 'With its soothing fragrance and delicate purple hue, lavender adds a calming touch to any arrangement.', 75, 'lavender pc.jpg'),
(33, 'Pink Carnation', 'A timeless symbol of love and gratitude, these soft pink carnation bring elegance to any bouquet.', 200, 'pink carnation pc.jpg'),
(34, 'Red Rose Bouquet', 'The classic symbol of passionate love, a red roses makes a bold statement of deep affection.', 6000, 'red rose.png'),
(35, 'Yellow Rose Bouquet', 'Bright and sunny, yellow roses express friendship, joy, and new beginnings.', 6800, 'yellow roses.png'),
(36, 'Pink Rose Bouquet', 'Romantic and refined, the pink roses speaks of admiration, joy, and sweetness.', 6500, 'pink rose.jpg'),
(37, 'White Tulips Bouquet', 'Elegant and serene, white tulips represent purity and forgiveness, perfect for thoughtful gifting.', 8500, 'white tulips.jpg'),
(38, 'Purple Tulips Bouquet', 'A stunning mix of elegance and mystery, purple tulips are perfect for sending messages of royalty and sophistication.', 8200, 'purple tulips.jpg'),
(39, 'Yellow Tulips Bouquet', 'Symbolizing cheerfulness and hope, yellow tulips add a splash of warmth to any floral arrangement.', 7900, 'yellow tulips.png'),
(40, 'Pink Tulips Bouquet', 'Bright and cheerful, these pink tulips symbolize caring and love, ideal for expressing heartfelt emotions.', 8100, 'pink tulips.jpg'),
(41, 'Sunflower Bouquet', 'Radiating warmth and happiness, sunflowers bring sunshine and positivity to any space.', 5100, 'sunflower.jpg'),
(42, 'White Lily Bouquet', 'Pure and elegant, white lilies symbolize purity and virtue, adding a touch of grace to any bouquet.', 5700, 'white lily.png'),
(43, 'Pink Lily Bouquet', 'Graceful and fragrant, the pink lily represents beauty and purity, making it a perfect gift for any occasion.', 5850, 'pink lily.jpg'),
(44, 'Lavender Bouquet', 'With its soothing fragrance and delicate purple hue, lavender adds a calming touch to any arrangement.', 4200, 'lavender.jpg'),
(45, 'Pink Carnation Bouquet', 'A timeless symbol of love and gratitude, these soft pink carnations bring elegance to any bouquet.', 8700, 'carnation.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(17, 'julia@gmail.com', 'julia@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(18, 'carlo@gmail.com', 'carlo@gmail.com', '27434c62638b6bd89186632759f666a0', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
