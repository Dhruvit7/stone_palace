-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 10:38 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

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
(2, '17', '3', 'no', '1', '25/11/2021'),
(3, '18', '3', '2', '1', '25/11/2021'),
(4, '18', '3', '2', '1', '26/11/2021'),
(5, '18', '3', '2', '2', '26/11/2021'),
(6, '18', '3', '3', '1', '26/11/2021'),
(7, '18', '3', '4', '2', '1/12/2021');

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
(7, 'Real Diamond', 'Natural diamond', '01/12/2021', 'uploads/61a7fdfec151a3.34028167.jpg', '1', '7', '10000', '1'),
(4, 'Labgrown', 'blue color', '01/12/2021', 'uploads/61a7fb5989d064.93661027.jpg', '5', '2', '2500', '3'),
(5, 'Red Diamond', 'Red diamond', '01/12/2021', 'uploads/61a7fc37ee11c6.11923698.jpg', '2', '3', '5000', '1'),
(6, 'White Diamond', 'White CVD Diamond', '01/12/2021', 'uploads/61a7fcd843b9d9.55086003.jpg', '5', '3', '2000', '2');

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

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `user_id`, `date`, `loc`, `phone`) VALUES
(1, '18', '26/11/2021', 'safdsfsd', '123456789');

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
(1, '7475878', '2021-11-24', '17', 'parcelled'),
(2, '29020', '2021-11-26', '18', 'parcelled'),
(3, '65236587413', '2021-11-26', '18', 'parcelled'),
(4, '123456', '2021-12-02', '18', 'parcelled');

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
(13, '6345', '762@GMAIL.COM', '11111111', 'j/m/Y'),
(12, '1123', 'shh@gmail.com', '11111111', 'j/m/Y'),
(18, 'Krupa', 'LATHIYAKRUPA@GMAIL.COM', '12345678', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
