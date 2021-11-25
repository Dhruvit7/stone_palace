-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 10:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stone_palace`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminname` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminname`, `pass`) VALUES
(1, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `item_id` text NOT NULL,
  `ordered` text NOT NULL,
  `quantity` text NOT NULL,
  `date` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `item_id`, `ordered`, `quantity`, `date`) VALUES
(1, '17', '3', '1', '1', '25/11/2021'),
(2, '17', '3', 'no', '1', '25/11/2021');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `date` text NOT NULL,
  `image` text NOT NULL,
  `stock` text NOT NULL,
  `weight` text NOT NULL,
  `price` text NOT NULL,
  `category` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `date`, `image`, `stock`, `weight`, `price`, `category`) VALUES
(1, '54w', '54etdrgf', '18/11/2021', 'uploads/619692a10e7479.58163949.png', '5776', '56', '365', '2'),
(2, '23423', '2wqe', '18/11/2021', 'uploads/61969c8d4929e8.03006829.png', '11', '24', '23', '2'),
(3, '23423', 'w3ewed', '25/11/2021', 'uploads/619ffa3be4faa4.44653161.png', '9', '13', '12', '1');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `date` text NOT NULL,
  `loc` text NOT NULL,
  `phone` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maincategory`
--

CREATE TABLE `maincategory` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maincategory`
--

INSERT INTO `maincategory` (`id`, `name`) VALUES
(1, 'Natural Diamond'),
(2, 'CVD Diamond'),
(3, 'Other Stones');

-- --------------------------------------------------------

--
-- Table structure for table `memoonlinedata`
--

CREATE TABLE `memoonlinedata` (
  `id` int(11) NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `pass` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `memoonlinedata`
--

INSERT INTO `memoonlinedata` (`id`, `email`, `name`, `pass`, `title`, `date`, `data`) VALUES
(1, 'osama', 'osamaellahi', '121212', 'ajksjasdjka;jsda;s', 'asdjnaskdjkans', 'masmasasas'),
(2, 'ali', 'ali', 'asjkdjkas', 'jaskndajks', 'kjn', 'jknjnk');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL,
  `payment_tr` text NOT NULL,
  `payment_date` text NOT NULL,
  `user_id` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`id`, `payment_tr`, `payment_date`, `user_id`, `order_status`) VALUES
(1, '7475878', '2021-11-24', '17', 'parcelled');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `pass` text NOT NULL,
  `date` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `pass`, `date`) VALUES
(17, 'dhruv', 'dhruvitsutariya7@gmail.com', '11111111', ''),
(16, 'sfhv', '2737@gmail.com', '11111111', ''),
(15, 'sdfjb', 'jg@gmail.com', '11111111', 'j/m/Y'),
(14, 'abcsjadhv', 'qwer@gmail.com', '11111111', 'j/m/Y'),
(13, '6345', '762@GMAIL.COM', '11111111', 'j/m/Y'),
(12, '1123', 'shh@gmail.com', '11111111', 'j/m/Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maincategory`
--
ALTER TABLE `maincategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memoonlinedata`
--
ALTER TABLE `memoonlinedata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maincategory`
--
ALTER TABLE `maincategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `memoonlinedata`
--
ALTER TABLE `memoonlinedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;